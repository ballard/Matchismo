//
//  ViewController.m
//  Matchismo
//
//  Created by Ivan on 04.01.17.
//  Copyright © 2017 Ivan. All rights reserved.
//

#import "CardGameViewController.h"
#import "Model/PlayingCardDeck.h"
#import "Model/PlayingCard.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;

@property (nonatomic) int flipCount;

@property (strong, nonatomic) Deck *cardGameDeck;

@end

@implementation CardGameViewController

- (void)setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    _flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (IBAction)touchCardButton:(UIButton *)sender {
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardBack"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        Card *card = [self.cardGameDeck drawRandomCard];
        if (card) {
            [sender setBackgroundImage:[UIImage imageNamed:@"cardFront"]
                              forState:UIControlStateNormal];
            [sender setTitle:[card contents] forState:UIControlStateNormal];
            self.flipCount++;
        } else {
            return;
        }
    }
}

-(Deck*) cardGameDeck {
    if (!_cardGameDeck) {
        _cardGameDeck = [[PlayingCardDeck alloc] init];
    }
    return _cardGameDeck;
}

@end
