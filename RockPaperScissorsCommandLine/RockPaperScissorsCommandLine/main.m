//
//  main.m
//  RockPaperScissorsCommandLine
//
//  Created by Seyit Kaya on 5.08.2015.
//  Copyright © 2020 Seyit Kaya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // set the move as a player by calling the thrownDown, you created controller object first of all
        RPSController *rpscontroller = [[RPSController alloc] init];
        [rpscontroller thrownDown: 1];
        
    }
    return 0;
}
