//
//  PlayingCard.h
//  Matchismo
//
//  Created by Ivan on 06.01.17.
//  Copyright © 2017 Ivan. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString* suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *) validSuits;
+ (NSUInteger) maxRank;

@end
