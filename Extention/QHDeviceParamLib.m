//  Created by qh on 15/8/25.
//  Copyright (c) 2015年 qh. All rights reserved.
//


#import "QHDeviceParamLib.h"
#import "sys/utsname.h"
#import <AdSupport/AdSupport.h>
#import <ifaddrs.h>
#import <arpa/inet.h>
#include <sys/socket.h>
#include <sys/sysctl.h>
#include <net/if.h>
#include <net/if_dl.h>
#include <mach/mach.h>
#import <SystemConfiguration/CaptiveNetwork.h>

#define MB (1024*1024)
#define GB (MB*1024)
#define ARRAY_SIZE(a) sizeof(a)/sizeof(a[0])

@implementation QHDeviceParamLib

#pragma mark -手机型号
+ (NSString*)getDeviceVersion{
    // 需要#import "sys/utsname.h"
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *platform = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    
    if ([platform isEqualToString:@"iPhone1,1"]) platform = @"iPhone 2G (A1203)";
    if ([platform isEqualToString:@"iPhone1,2"]) platform = @"iPhone 3G (A1241/A1324)";
    if ([platform isEqualToString:@"iPhone2,1"]) platform = @"iPhone 3GS (A1303/A1325)";
    if ([platform isEqualToString:@"iPhone3,1"]) platform = @"iPhone 4 (A1332)";
    if ([platform isEqualToString:@"iPhone3,2"]) platform = @"iPhone 4 (A1332)";
    if ([platform isEqualToString:@"iPhone3,3"]) platform = @"iPhone 4 (A1349)";
    if ([platform isEqualToString:@"iPhone4,1"]) platform = @"iPhone 4S (A1387/A1431)";
    if ([platform isEqualToString:@"iPhone5,1"]) platform = @"iPhone 5 (A1428)";
    if ([platform isEqualToString:@"iPhone5,2"]) platform = @"iPhone 5 (A1429/A1442)";
    if ([platform isEqualToString:@"iPhone5,3"]) platform = @"iPhone 5c (A1456/A1532)";
    if ([platform isEqualToString:@"iPhone5,4"]) platform = @"iPhone 5c (A1507/A1516/A1526/A1529)";
    if ([platform isEqualToString:@"iPhone6,1"]) platform = @"iPhone 5s (A1453/A1533)";
    if ([platform isEqualToString:@"iPhone6,2"]) platform = @"iPhone 5s (A1457/A1518/A1528/A1530)";
    if ([platform isEqualToString:@"iPhone7,1"]) platform = @"iPhone 6 Plus (A1522/A1524)";
    if ([platform isEqualToString:@"iPhone7,2"]) platform = @"iPhone 6 (A1549/A1586)";
    if ([platform isEqualToString:@"iPhone8,1"]) platform = @"iPhone 6s (A1633/A1688/A1691/A1700)";
    if ([platform isEqualToString:@"iPhone8,2"]) platform = @"iPhone 6s Plus (A1634/A1687/A1690/A1699)";
    if ([platform isEqualToString:@"iPhone8,4"]) platform = @"iPhone SE (A1662/A1723/A1724)";
    
    if ([platform isEqualToString:@"iPhone9,1"]) platform = @"iPhone 7";
    
    if ([platform isEqualToString:@"iPhone9,2"]) platform = @"iPhone 7 Plus";
    
    if ([platform isEqualToString:@"iPod1,1"])   platform = @"iPod Touch 1G (A1213)";
    if ([platform isEqualToString:@"iPod2,1"])   platform = @"iPod Touch 2G (A1288)";
    if ([platform isEqualToString:@"iPod3,1"])   platform = @"iPod Touch 3G (A1318)";
    if ([platform isEqualToString:@"iPod4,1"])   platform = @"iPod Touch 4G (A1367)";
    if ([platform isEqualToString:@"iPod5,1"])   platform = @"iPod Touch 5G (A1421/A1509)";
    
    if ([platform isEqualToString:@"iPad1,1"])   platform = @"iPad 1G (A1219/A1337)";
    
    if ([platform isEqualToString:@"iPad2,1"])   platform = @"iPad 2 (A1395)";
    if ([platform isEqualToString:@"iPad2,2"])   platform = @"iPad 2 (A1396)";
    if ([platform isEqualToString:@"iPad2,3"])   platform = @"iPad 2 (A1397)";
    if ([platform isEqualToString:@"iPad2,4"])   platform = @"iPad 2 (A1395+New Chip)";
    if ([platform isEqualToString:@"iPad2,5"])   platform = @"iPad Mini 1G (A1432)";
    if ([platform isEqualToString:@"iPad2,6"])   platform = @"iPad Mini 1G (A1454)";
    if ([platform isEqualToString:@"iPad2,7"])   platform = @"iPad Mini 1G (A1455)";
    
    if ([platform isEqualToString:@"iPad3,1"])   platform = @"iPad 3 (A1416)";
    if ([platform isEqualToString:@"iPad3,2"])   platform = @"iPad 3 (A1403)";
    if ([platform isEqualToString:@"iPad3,3"])   platform = @"iPad 3 (A1430)";
    if ([platform isEqualToString:@"iPad3,4"])   platform = @"iPad 4 (A1458)";
    if ([platform isEqualToString:@"iPad3,5"])   platform = @"iPad 4 (A1459)";
    if ([platform isEqualToString:@"iPad3,6"])   platform = @"iPad 4 (A1460)";
    
    if ([platform isEqualToString:@"iPad4,1"])   platform = @"iPad Air (A1474)";
    if ([platform isEqualToString:@"iPad4,2"])   platform = @"iPad Air (A1475)";
    if ([platform isEqualToString:@"iPad4,3"])   platform = @"iPad Air (A1476)";
    if ([platform isEqualToString:@"iPad4,4"])   platform = @"iPad Mini 2G (A1489)";
    if ([platform isEqualToString:@"iPad4,5"])   platform = @"iPad Mini 2G (A1490)";
    if ([platform isEqualToString:@"iPad4,6"])   platform = @"iPad Mini 2G (A1491)";
    
    if ([platform isEqualToString:@"iPad4,7"])      platform = @"iPad Mini 3";
    if ([platform isEqualToString:@"iPad4,8"])      platform = @"iPad Mini 3";
    if ([platform isEqualToString:@"iPad4,9"])      platform = @"iPad Mini 3";
    if ([platform isEqualToString:@"iPad5,1"])      platform = @"iPad Mini 4 (WiFi)";
    if ([platform isEqualToString:@"iPad5,2"])      platform = @"iPad Mini 4 (LTE)";
    if ([platform isEqualToString:@"iPad5,3"])      platform = @"iPad Air 2";
    if ([platform isEqualToString:@"iPad5,4"])      platform = @"iPad Air 2";
    if ([platform isEqualToString:@"iPad6,3"])      platform = @"iPad Pro 9.7";
    if ([platform isEqualToString:@"iPad6,4"])      platform = @"iPad Pro 9.7";
    if ([platform isEqualToString:@"iPad6,7"])      platform = @"iPad Pro 12.9";
    if ([platform isEqualToString:@"iPad6,8"])      platform = @"iPad Pro 12.9";
    
    if ([platform isEqualToString:@"i386"])      platform = @"iPhone Simulator";
    if ([platform isEqualToString:@"x86_64"])    platform = @"iPhone Simulator";
    
    
    
    //    NSString* sys = [[UIDevice currentDevice] systemVersion];
    //    return [NSString stringWithFormat:@"机型:%@ & 系统:%@",platform,sys];
    return platform;
}

#pragma mark -手机系统
+ (NSString *)getDeviceOS{
    NSString* sys = [[UIDevice currentDevice] systemVersion];
    return [NSString stringWithFormat:@"%@",sys];
}

#pragma mark -获取IP
+ (NSString *)getIPAddress{
    NSString *address = @"error";
    struct ifaddrs *interfaces = NULL;
    struct ifaddrs *temp_addr = NULL;
    int success = 0;
    
    // retrieve the current interfaces - returns 0 on success
    success = getifaddrs(&interfaces);
    if (success == 0) {
        // Loop through linked list of interfaces
        temp_addr = interfaces;
        while (temp_addr != NULL) {
            if( temp_addr->ifa_addr->sa_family == AF_INET) {
                // Check if interface is en0 which is the wifi connection on the iPhone
                if ([[NSString stringWithUTF8String:temp_addr->ifa_name] isEqualToString:@"en0"]) {
                    // Get NSString from C String
                    address = [NSString stringWithUTF8String:inet_ntoa(((struct sockaddr_in *)temp_addr->ifa_addr)->sin_addr)];
                }
            }
            
            temp_addr = temp_addr->ifa_next;
        }
    }
    
    // Free memory
    freeifaddrs(interfaces);
    
    return address;
}

#pragma mark -获取mac
+ (NSString *)getMacString{
    int mib[6];
    size_t len;
    char *buf;
    unsigned char *ptr;
    struct if_msghdr *ifm;
    struct sockaddr_dl *sdl;
    
    mib[0] = CTL_NET;
    mib[1] = AF_ROUTE;
    mib[2] = 0;
    mib[3] = AF_LINK;
    mib[4] = NET_RT_IFLIST;
    
    if ((mib[5] = if_nametoindex("en0")) == 0) {
        printf("Error: if_nametoindex error\n");
        return NULL;
    }
    
    if (sysctl(mib, 6, NULL, &len, NULL, 0) < 0) {
        printf("Error: sysctl, take 1\n");
        return NULL;
    }
    
    if ((buf = malloc(len)) == NULL) {
        printf("Could not allocate memory. error!\n");
        return NULL;
    }
    
    if (sysctl(mib, 6, buf, &len, NULL, 0) < 0) {
        printf("Error: sysctl, take 2");
        free(buf);
        return NULL;
    }
    
    ifm = (struct if_msghdr *)buf;
    sdl = (struct sockaddr_dl *)(ifm + 1);
    ptr = (unsigned char *)LLADDR(sdl);
    NSString *macString = [NSString stringWithFormat:@"%02X:%02X:%02X:%02X:%02X:%02X",
                           *ptr, *(ptr+1), *(ptr+2), *(ptr+3), *(ptr+4), *(ptr+5)];
    free(buf);
    
    return macString;
}
#pragma mark -获取uuid
+(NSString*)getUUID{
    return [[NSUUID UUID] UUIDString];
}
#pragma mark -获取idfv
+(NSString *)getIdfvString{
    if([[UIDevice currentDevice] respondsToSelector:@selector( identifierForVendor)]) {
        return [[UIDevice currentDevice].identifierForVendor UUIDString];
    }
    
    return @"";
}
#pragma mark -获取idfa
+(NSString *)getIdfaString{
    NSString *adId = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
    return adId;
}

#pragma mark -获取语言
+ (NSString *)getCurrentLanguage {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSArray *languages = [defaults objectForKey:@"AppleLanguages"];
    NSString *currentLanguage = [languages objectAtIndex:0];
    return currentLanguage;
}
#pragma mark -是否越狱
+ (BOOL)isJailBreak{
    const char* jailbreak_tool_pathes[] = {
        "/Applications/Cydia.app",
        "/Library/MobileSubstrate/MobileSubstrate.dylib",
        "/bin/bash",
        "/usr/sbin/sshd",
        "/etc/apt"
    };
    for (int i=0; i<ARRAY_SIZE(jailbreak_tool_pathes); i++) {
        if ([[NSFileManager defaultManager] fileExistsAtPath:[NSString stringWithUTF8String:jailbreak_tool_pathes[i]]]) {
            NSLog(@"The device is jail broken!");
            return YES;
        }
    }
    NSLog(@"The device is NOT jail broken!");
    return NO;
}

#pragma mark -当前wifi名称
+ (NSString *)getWifiName {
    NSArray *interfaceNames = CFBridgingRelease(CNCopySupportedInterfaces());
    NSLog(@"%s: Supported interfaces: %@", __func__, interfaceNames);
    
    NSDictionary *SSIDInfo;
    for (NSString *interfaceName in interfaceNames) {
        SSIDInfo = CFBridgingRelease(
                                     CNCopyCurrentNetworkInfo((__bridge CFStringRef)interfaceName));
        NSLog(@"%s: %@ => %@", __func__, interfaceName, SSIDInfo);
        
        BOOL isNotEmpty = (SSIDInfo.count > 0);
        if (isNotEmpty) {
            break;
        }
    }
    NSString *SSID = SSIDInfo[@"SSID"];
    return SSID;
}

#pragma mark -电池的状态
+ (NSString *)getBatteryStatus{
    //电池的状态是可监听的
    [UIDevice currentDevice].batteryMonitoringEnabled = YES;
    switch ([UIDevice currentDevice].batteryState) {
        case UIDeviceBatteryStateUnknown:
            return (@"电池的状态未知");
        case UIDeviceBatteryStateCharging:
            return(@"电池正在充电");
        case UIDeviceBatteryStateUnplugged:
            return(@"电池未充电");
        case UIDeviceBatteryStateFull:
            return(@"电池电量充满");
    }
}

#pragma mark -获得总内存大小
+ (NSString *)getTotalMemorySize{
    return [self formatMemory:[self getTotalMemory]];
}
#pragma mark -获得当前可用内存大小
+ (NSString *)getAvailableMemorySize{
    return [self formatMemory:[self getAvailableMemory]];
}

#pragma mark -电池使用情况
+ (NSString *)batteryLevel {
    // Find the battery level
    @try {
        // Get the device
        UIDevice *Device = [UIDevice currentDevice];
        // Set battery monitoring on
        Device.batteryMonitoringEnabled = YES;
        
        // Set up the battery level float
        float BatteryLevel = 0.0;
        // Get the battery level
        float BatteryCharge = [Device batteryLevel];
        
        // Check to make sure the battery level is more than zero
        if (BatteryCharge > 0.0f) {
            // Make the battery level float equal to the charge * 100
            BatteryLevel = BatteryCharge * 100;
        } else {
            // Unable to find the battery level
            return @"uidevicebatterystateunknown";
        }
        
        // Output the battery level
        return [NSString stringWithFormat:@"%0.lf%%",BatteryLevel];
    }
    @catch (NSException *exception) {
        // Error out
        return @"uidevicebatterystateunknown";
    }
}

#pragma mark -获取网络状态
+ (NSString *)getNetWorkStates{
        UIApplication *app = [UIApplication sharedApplication];
        NSArray *children = [[[app valueForKeyPath:@"statusBar"]valueForKeyPath:@"foregroundView"]subviews];
        NSLog(@"---%@---",children);
        NSString *state = [[NSString alloc]init];
        int netType = 0;
        //获取到网络返回码
        for (id child in children) {
                if ([child isKindOfClass:NSClassFromString(@"UIStatusBarDataNetworkItemView")]) {
                        //获取到状态栏
                        netType = [[child valueForKeyPath:@"dataNetworkType"]intValue];
                         
                        switch (netType) {
                                    case 0:
                                        state = @"无网络";
                                        //无网模式
                                        break;
                                    case 1:
                                        state =  @"2G";
                                        break;
                                    case 2:
                                        state =  @"3G";
                                        break;
                                    case 3:
                                        state =   @"4G";
                                        break;
                                    case 5:
                                    {
                                            state =  @"wifi";
                                            break;
                                        default:
                                            break;
                                        }
                            }
                    }
                //根据状态选择
            }
        return state;
}


+ (NSString *)formatMemory:(long long)Space {
    // Format the long long disk space
    @try {
        // Set up the string
        NSString *FormattedBytes = nil;
        
        // Get the bytes, megabytes, and gigabytes
        double NumberBytes = 1.0 * Space;
        double TotalGB = NumberBytes / GB;
        double TotalMB = NumberBytes / MB;
        
        // Display them appropriately
        if (TotalGB >= 1.0) {
            FormattedBytes = [NSString stringWithFormat:@"%.2f GB", TotalGB];
        } else if (TotalMB >= 1)
            FormattedBytes = [NSString stringWithFormat:@"%.2f MB", TotalMB];
        else {
            FormattedBytes = [self formattedMemory:Space];
            FormattedBytes = [FormattedBytes stringByAppendingString:@" bytes"];
        }
        
        // Check for errors
        if (FormattedBytes == nil || FormattedBytes.length <= 0) {
            // Error, invalid string
            return nil;
        }
        
        // Completed Successfully
        return FormattedBytes;
    }
    @catch (NSException *exception) {
        // Error
        return nil;
    }
}

+ (NSString *)formattedMemory:(unsigned long long)Space {
    // Format for bytes
    @try {
        // Set up the string variable
        NSString *FormattedBytes = nil;
        
        // Set up the format variable
        NSNumberFormatter *Formatter = [[NSNumberFormatter alloc] init];
        
        // Format the bytes
        [Formatter setPositiveFormat:@"###,###,###,###"];
        
        // Get the bytes
        NSNumber * theNumber = [NSNumber numberWithLongLong:Space];
        
        // Format the bytes appropriately
        FormattedBytes = [Formatter stringFromNumber:theNumber];
        
        // Check for errors
        if (FormattedBytes == nil || FormattedBytes.length <= 0) {
            // Error, invalid value
            return nil;
        }
        
        // Completed Successfully
        return FormattedBytes;
    }
    @catch (NSException *exception) {
        // Error
        return nil;
    }
}

+ (long long)getTotalMemory
{
    return [NSProcessInfo processInfo].physicalMemory;
}
+ (long long)getAvailableMemory
{
    vm_statistics_data_t vmStats;
    mach_msg_type_number_t infoCount = HOST_VM_INFO_COUNT;
    kern_return_t kernReturn = host_statistics(mach_host_self(), HOST_VM_INFO, (host_info_t)&vmStats, &infoCount);
    if (kernReturn != KERN_SUCCESS)
    {
        return NSNotFound;
    }
    
    return ((vm_page_size * vmStats.free_count + vm_page_size * vmStats.inactive_count));
}

@end
