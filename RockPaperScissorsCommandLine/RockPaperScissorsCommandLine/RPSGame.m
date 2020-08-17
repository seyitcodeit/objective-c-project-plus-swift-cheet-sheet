//
//  RPSGame.m
//  RockPaperScissorsCommandLine
//
//  Created by Seyit Kaya on 5.08.2015.
//  Copyright © 2020 Seyit Kaya. All rights reserved.
//

#import "RPSGame.h"
#import "RPSTurn.h"

@implementation RPSGame

-(instancetype)initWithFirstTurn: (RPSTurn*) playerTurn
                      secondTurn: (RPSTurn*) computerTurn {
    self = [super init];
    
    if(self) {
        _firstTurn = playerTurn;
        _secondTurn = computerTurn;
    }
    
    return self;
}

-(RPSTurn*)winner {
    return [self.firstTurn defeats:self.secondTurn] ? self.firstTurn : self.secondTurn;
}

-(RPSTurn*)loser {
    return [self.firstTurn defeats:self.secondTurn] ? self.secondTurn : self.firstTurn;
}

@end
