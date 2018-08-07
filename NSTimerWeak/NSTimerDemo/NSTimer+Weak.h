//
//  NSTimer+Weak.h
//  NSTimerDemo
//
//  Created by Maple on 2018/8/8.
//  Copyright © 2018 Maple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimerTarget:NSObject

@property (nonatomic, weak) id delegate;
@property (nonatomic, assign) SEL selector;
@property (nonatomic, weak) NSTimer *timer;
- (void)targetSelector;

@end

@interface NSTimer (Weak)
+ (NSTimer *)weakScheduledTimerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(id)userInfo repeats:(BOOL)yesOrNo;
@end
