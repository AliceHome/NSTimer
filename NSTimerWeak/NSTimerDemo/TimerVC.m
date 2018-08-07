//
//  TimerVC.m
//  NSTimerDemo
//
//  Created by Maple on 2018/8/8.
//  Copyright © 2018 Maple. All rights reserved.
//

#import "TimerVC.h"
#import "NSTimer+Weak.h"

@interface TimerVC ()
@end

@implementation TimerVC {
    NSTimer *_timer;
}

- (NSTimer * _Nonnull)addTimer {
    
    
    return [NSTimer weakScheduledTimerWithTimeInterval:1 target:self selector:@selector(testOne) userInfo:nil repeats:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
     _timer = [self addTimer];
 }


- (void)viewWillDisappear:(BOOL)animated {
    
//    [_timer invalidate];
//    _timer = nil;
    [super viewWillDisappear:animated];
 
}

- (void)testOne {
    NSLog(@"HEllo world");
}

- (void)dealloc {

    NSLog(@"dealloc ....");
}

@end
