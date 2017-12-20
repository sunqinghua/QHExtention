//
//  DRCalculateLayout.m
//  Records
//
//  Created by admin on 2017/12/20.
//  Copyright © 2017年 DuoRong Technology Co., Ltd. All rights reserved.
//

#import "DRCalculateLayoutSize.h"
#import <SDVersion/SDVersion.h>

@implementation DRCalculateLayoutSize

#pragma mark - 适配所有机型高度
+ (CGFloat)HH_layoutForAlliPhoneHeight:(CGFloat)height {
    CGFloat layoutHeight = 0.0f;
    if ([SDiOSVersion deviceSize] ==Screen3Dot5inch) {
        layoutHeight = ( height / [DRCalculateLayoutSize iPhone6Height]) * [DRCalculateLayoutSize Screen3Dot5inchHeight];
    } else if ([SDiOSVersion deviceSize] ==Screen4inch) {
        layoutHeight = ( height / [DRCalculateLayoutSize iPhone6Height] ) * [DRCalculateLayoutSize Screen4inchHeight];
    } else if ([SDiOSVersion deviceSize] ==Screen4Dot7inch) {
        layoutHeight = ( height / [DRCalculateLayoutSize iPhone6Height] ) * [DRCalculateLayoutSize Screen4Dot7inchHeight];
    } else if ([SDiOSVersion deviceSize] ==Screen5Dot5inch) {
        layoutHeight = ( height / [DRCalculateLayoutSize iPhone6Height] ) * [DRCalculateLayoutSize Screen5Dot5inchHeight];
    }else if ([SDiOSVersion deviceSize] ==Screen5Dot8inch) {
        layoutHeight = ( height / [DRCalculateLayoutSize iPhone6Height] ) * [DRCalculateLayoutSize Screen5Dot8inchHeight];
    }
    return layoutHeight;
}

+ (CGFloat)HH_layoutForAlliPhoneWidth:(CGFloat)width {
    CGFloat layoutWidth = 0.0f;
    if ([SDiOSVersion deviceSize] ==Screen3Dot5inch) {
        layoutWidth = ( width / [DRCalculateLayoutSize iPhone6Width] ) * [DRCalculateLayoutSize Screen3Dot5inchWidth];
    } else if ([SDiOSVersion deviceSize] ==Screen4inch) {
        layoutWidth = ( width / [DRCalculateLayoutSize iPhone6Width]  ) * [DRCalculateLayoutSize Screen4inchWidth];
    } else if ([SDiOSVersion deviceSize] ==Screen4Dot7inch) {
        layoutWidth = ( width / [DRCalculateLayoutSize iPhone6Width]  ) * [DRCalculateLayoutSize Screen4Dot7inchWidth];
    } else if ([SDiOSVersion deviceSize] ==Screen5Dot5inch) {
        layoutWidth = ( width / [DRCalculateLayoutSize iPhone6Width]  ) * [DRCalculateLayoutSize Screen5Dot5inchWidth];
    }else if ([SDiOSVersion deviceSize] ==Screen5Dot8inch) {
        layoutWidth = ( width / [DRCalculateLayoutSize iPhone6Width]  ) * [DRCalculateLayoutSize Screen5Dot8inchWidth];
    }
    return layoutWidth;
}

+ (CGFloat)Screen3Dot5inchHeight {
    return 480.f;
}

+ (CGFloat)Screen3Dot5inchWidth {
    return 320.f;
}

+ (CGFloat)Screen4inchHeight {
    return 568.f;
}

+ (CGFloat)Screen4inchWidth {
    return 320.f;
}

+ (CGFloat)Screen4Dot7inchHeight {
    return 667.f;
}

+ (CGFloat)Screen4Dot7inchWidth {
    return 375.f;
}

+ (CGFloat)Screen5Dot5inchHeight {
    return 736.f;
}

+ (CGFloat)Screen5Dot5inchWidth {
    return 414.f;
}

+ (CGFloat)Screen5Dot8inchHeight {
    return 812.f;
}

+ (CGFloat)Screen5Dot8inchWidth {
    return 375.f;
}

+ (CGFloat)iPhone6Height{
    return [self Screen4Dot7inchHeight];
}

+ (CGFloat)iPhone6Width{
    return [self Screen4Dot7inchWidth];
}

@end
