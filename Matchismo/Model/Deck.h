//
//  Deck.h
//  Matchismo
//
//  Created by Ivan on 07.01.17.
//  Copyright © 2017 Ivan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void) addCard:(Card *)card atTop:(BOOL)atTop;
- (void) addCard:(Card *)card;

- (Card *) drawRandomCard;

@end
