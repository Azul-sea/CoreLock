//
//  CLLockLabel.h
//  CoreLock
//
//  Created by 王凯 on 2017/1/7.
//  Copyright © 2017年 wk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CLLockLabel : UILabel



/*
 *  普通提示信息
 */
-(void)showNormalMsg:(NSString *)msg;



/*
 *  警示信息
 */
-(void)showWarnMsg:(NSString *)msg;


@end
