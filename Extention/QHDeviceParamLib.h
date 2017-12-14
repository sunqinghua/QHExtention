//
//  Created by qh on 15/8/25.
//  Copyright (c) 2015年 qh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QHDeviceParamLib : NSObject
#pragma mark -手机型号
+ (NSString*)getDeviceVersion;
#pragma mark -手机系统
+ (NSString *)getDeviceOS;
#pragma mark -获取IP
+ (NSString *)getIPAddress;
#pragma mark -获取mac
+ (NSString *)getMacString;
#pragma mark -获取uuid
+(NSString*)getUUID;
#pragma mark -获取idfv
+(NSString *)getIdfvString;
#pragma mark -获取idfa
+(NSString *)getIdfaString;
#pragma mark -获得总内存大小
+ (NSString *)getTotalMemorySize;
#pragma mark -获得当前可用内存大小
+ (NSString *)getAvailableMemorySize;
#pragma mark -当前wifi名称
+ (NSString *)getWifiName;
#pragma mark -获取网络状态
+ (NSString *)getNetWorkStates;
#pragma mark -获取语言
+ (NSString *)getCurrentLanguage;
#pragma mark -是否越狱
+ (BOOL)isJailBreak;
#pragma mark -电池的状态
+ (NSString *)getBatteryStatus;
#pragma mark -电池使用情况
+ (NSString *)batteryLevel;
@end
