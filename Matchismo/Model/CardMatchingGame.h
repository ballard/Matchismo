//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Ivan on 07.01.17.
//  Copyright © 2017 Ivan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
#import "Card.h"

@interface CardMatchingGame : NSObject

// MARK - designated initializer
- (instancetype) initWithCardCount:(NSUInteger)count
                         usingDeck:(Deck*)deck;

- (void)chooseCardAtIndex:(NSUInteger)index;
- (Card*)cardAtIndex:(NSUInteger)index;

@property (nonatomic,readonly) NSInteger score;

@end
