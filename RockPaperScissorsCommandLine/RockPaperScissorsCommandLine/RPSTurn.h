//
//  RPSTurn.h
//  RockPaperScissorsCommandLine
//
//  Created by Seyit Kaya on 5.08.2015.
//  Copyright © 2020 Seyit Kaya. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, Move) {
    Rock,
    Paper,
    Scissors,
    Invalid,
};

@interface RPSTurn : NSObject

@property (nonatomic) Move move;

-(instancetype)initWithMove:(Move) move;
-(BOOL)defeats:(RPSTurn *)opponent;

@end

