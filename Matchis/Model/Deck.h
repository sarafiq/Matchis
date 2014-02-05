//
//  Deck.h
//  Matchis
//
//  Created by Sameer on 12/01/2014.
//  Copyright (c) 2014 Set Piece inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;

@end
