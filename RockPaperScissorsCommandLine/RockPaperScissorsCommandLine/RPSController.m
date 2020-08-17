//
//  RPSController.m
//  RockPaperScissorsCommandLine
//
//  Created by Seyit Kaya on 5.08.2015.
//  Copyright © 2020 Seyit Kaya. All rights reserved.
//

#import "RPSController.h"
#import "RPSTurn.h"

@implementation RPSController

-(void)thrownDown:(Move) playersMove {
    
    RPSTurn *playersTurn = [[RPSTurn alloc] initWithMove: playersMove];
    RPSTurn *computersTurn = [[RPSTurn alloc] init];
    
    // two parameters function calling
    self.game = [[RPSGame alloc] initWithFirstTurn: playersTurn
                                       secondTurn: computersTurn];
    
}

@end
