//
//  DRCalculateLayout.h
//  Records
//
//  Created by admin on 2017/12/20.
//  Copyright © 2017年 DuoRong Technology Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DRCalculateLayoutSize : NSObject
/**
 * 基于UI设计的iPhone6设计图的全机型高度适配
 *
 * @param height View高度
 *
 * @return 适配后的高度
 */

+ (CGFloat)HH_layoutForAlliPhoneHeight:(CGFloat)height;
/**
 * 基于UI设计的iPhone6设计图的全机型宽度适配
 *
 * @param width 宽度
 *
 * @return 适配后的宽度
 */
+ (CGFloat)HH_layoutForAlliPhoneWidth:(CGFloat)width;
@end
