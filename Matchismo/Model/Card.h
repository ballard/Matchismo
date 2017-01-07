//
//  Card.h
//  Matchismo
//
//  Created by Ivan on 05.01.17.
//  Copyright © 2017 Ivan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int) match:(NSArray *)otherCards;

@end
