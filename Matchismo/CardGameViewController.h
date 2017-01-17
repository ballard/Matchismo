//
//  ViewController.h
//  Matchismo
//
//  Created by Ivan on 04.01.17.
//  Copyright © 2017 Ivan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Deck.h"

@interface CardGameViewController : UIViewController

// protected
// for subclasses

- (Deck *)createDeck; // abstract


@end

