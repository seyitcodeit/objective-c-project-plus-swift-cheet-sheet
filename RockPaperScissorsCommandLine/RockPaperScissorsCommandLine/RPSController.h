//
//  RPSController.h
//  RockPaperScissorsCommandLine
//
//  Created by Seyit Kaya on 5.08.2015.
//  Copyright © 2020 Seyit Kaya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSGame.h"


@interface RPSController : NSObject

@property (nonatomic) RPSGame *game;

-(void)thrownDown:(Move) playersMove;

@end


