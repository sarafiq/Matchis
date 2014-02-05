//
//  PlayingCard.h
//  Matchis
//
//  Created by Sameer on 12/01/2014.
//  Copyright (c) 2014 Set Piece inc. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
