//
//  Card.m
//  Matchis
//
//  Created by Sameer on 12/01/2014.
//  Copyright (c) 2014 Set Piece inc. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int)match:(NSArray *)otherCards {
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
    
}
@end
