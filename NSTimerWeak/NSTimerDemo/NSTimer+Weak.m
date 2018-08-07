//
//  NSTimer+Weak.m
//  NSTimerDemo
//
//  Created by Maple on 2018/8/8.
//  Copyright © 2018 Maple. All rights reserved.
//

#import "NSTimer+Weak.h"

@interface NSTimerTarget()

@end 

@implementation NSTimerTarget

- (void)targetSelector {
    
    if (_delegate) {
        [self.delegate performSelector:_selector withObject:nil];
    }else {
        [_timer invalidate];
        _timer = nil;
    }
}

- (void)dealloc {
    NSLog(@"target is dealloc...");
}
@end

@implementation NSTimer (Weak)

+ (NSTimer *)weakScheduledTimerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(id)userInfo repeats:(BOOL)yesOrNo {
    
    NSTimerTarget *target = [NSTimerTarget new];
    target.delegate = aTarget;
    target.selector = aSelector;
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:ti target:target selector:@selector(targetSelector) userInfo:userInfo repeats:yesOrNo];
    target.timer = timer;
    return target.timer;
}
@end
