//
//  CALayer+Anim.m
//  CoreLock
//
//  Created by 王凯 on 2017/1/7.
//  Copyright © 2017年 wk. All rights reserved.
//

#import "CALayer+Anim.h"

@implementation CALayer (Anim)


/*
 *  摇动
 */
-(void)shake{
    
    CAKeyframeAnimation *kfa = [CAKeyframeAnimation animationWithKeyPath:@"transform.translation.x"];
    
    CGFloat s = 16;
    
    kfa.values = @[@(-s),@(0),@(s),@(0),@(-s),@(0),@(s),@(0)];
    
    //时长
    kfa.duration = .1f;
    
    //重复
    kfa.repeatCount =2;
    
    //移除
    kfa.removedOnCompletion = YES;
    
    [self addAnimation:kfa forKey:@"shake"];
}

@end
