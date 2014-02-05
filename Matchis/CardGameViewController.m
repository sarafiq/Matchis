//
//  CardGameViewController.m
//  Matchis
//
//  Created by Sameer on 17/11/2013.
//  Copyright (c) 2013 Set Piece inc. All rights reserved.
//

#import "CardGameViewController.h"
#import "Card.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) Deck *deck;
@end

@implementation CardGameViewController

- (Deck *)deck {
    if(!_deck) {
        _deck = [[PlayingCardDeck alloc] init];
    }
    return _deck;
}

- (void)setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Fips: %d", self.flipCount];
    NSLog(@"flipCount changes to: %d", self.flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender {
    
    if([sender.currentTitle length]) {
        UIImage *cardImage = [UIImage imageNamed:@"cardback"];
        [sender setBackgroundImage:cardImage
                          forState:UIControlStateNormal];
        [sender setTitle:@""
                forState: UIControlStateNormal];
    }else {
        UIImage *cardImage = [UIImage imageNamed:@"cardfront"];
        [sender setBackgroundImage:cardImage
                          forState:UIControlStateNormal];
        Card *card = [self.deck drawRandomCard];
//        [sender setTitle:@"A♣︎"
//                forState: UIControlStateNormal];
        [sender setTitle:card.contents
                forState: UIControlStateNormal];
    }
    self.flipCount++;
}


@end
