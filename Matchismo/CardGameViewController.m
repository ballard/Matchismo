//
//  ViewController.m
//  Matchismo
//
//  Created by Ivan on 04.01.17.
//  Copyright © 2017 Ivan. All rights reserved.
//

#import "CardGameViewController.h"
//#import "Model/PlayingCardDeck.h"
#import "Model/PlayingCard.h"
#import "Model/CardMatchingGame.h"

@interface CardGameViewController ()

@property (strong, nonatomic) Deck *deck;
@property (strong, nonatomic) CardMatchingGame *game;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@end

@implementation CardGameViewController

- (IBAction)touchCardButton:(UIButton *)sender
{
    int cardIndex = (int)[self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:cardIndex];
    [self updateUI];
}

- (void)updateUI
{
    for (UIButton *cardButton in self.cardButtons) {
        int cardButtonIndex = (int)[self.cardButtons indexOfObject:cardButton];
        Card *card = [self.game cardAtIndex:cardButtonIndex];
        [cardButton setTitle:[self titleForCard:card] forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self imageForCard:card] forState:UIControlStateNormal];
        cardButton.enabled = !card.isMatched;
        self.scoreLabel.text = [NSString stringWithFormat:@"Score: %ld", (long)self.game.score];
        NSLog(@"score: %ld", (long)self.game.score);
    }
}

- (Deck *) createDeck
{
    return nil; //abstract - old returning value: [[PlayingCardDeck alloc] init];
}

- (CardMatchingGame *) game
{
    if (!_game) {
        _game = [self createGame];
    }
    return _game;
}

- (CardMatchingGame *) createGame
{
    return [[CardMatchingGame alloc] initWithCardCount:[self.cardButtons count]
                                             usingDeck:[self createDeck]];
}

- (NSString *)titleForCard:(Card *) card
{
    return card.isChosen ? card.contents : @"";
}

- (UIImage *)imageForCard:(Card *) card
{
    return [UIImage imageNamed:card.isChosen ? @"cardFront" : @"cardBack"];
}

@end
