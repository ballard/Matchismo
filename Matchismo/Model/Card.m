//
//  Card.m
//  Matchismo
//
//  Created by Ivan on 05.01.17.
//  Copyright © 2017 Ivan. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int) match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}

@end
