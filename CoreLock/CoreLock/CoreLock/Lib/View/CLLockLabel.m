//
//  CLLockLabel.m
//  CoreLock
//
//  Created by 王凯 on 2017/1/7.
//  Copyright © 2017年 wk. All rights reserved.
//

#import "CLLockLabel.h"
#import "CoreLockConst.h"
#import "CALayer+Anim.h"



@implementation CLLockLabel




-(instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    
    if(self){
        
        //视图初始化
        [self viewPrepare];
    }
    
    return self;
}



-(id)initWithCoder:(NSCoder *)aDecoder{
    
    self=[super initWithCoder:aDecoder];
    
    if(self){
        
        //视图初始化
        [self viewPrepare];
    }
    
    return self;
}


/*
 *  视图初始化
 */
-(void)viewPrepare{
    
    self.font = [UIFont systemFontOfSize:16.0f];
}





/*
 *  普通提示信息
 */
-(void)showNormalMsg:(NSString *)msg{
    
    self.text = msg;
    self.textColor = CoreLockCircleLineNormalColor;
}



/*
 *  警示信息
 */
-(void)showWarnMsg:(NSString *)msg{
    
    self.text = msg;
    self.textColor = CoreLockWarnColor;
    
    //添加一个shake动画
    [self.layer shake];
}


@end
