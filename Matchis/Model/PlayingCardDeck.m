//
//  PlayingCardDeck.m
//  Matchis
//
//  Created by Sameer on 12/01/2014.
//  Copyright (c) 2014 Set Piece inc. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (instancetype) init {
    self = [super init];
    
    if(self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSInteger rank=1; rank <= [PlayingCard maxRank]; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
                
            }
        }
    }
    
    return self;
}

@end
