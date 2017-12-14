//
//  QHMacros.h
//
//
//  Created by admin on 2017/12/14.
//  Copyright © 2017年 DR. All rights reserved.
//

#ifndef QHMacros_h
#define QHMacros_h

/** self的引用 */
#define kWeakSelf __weak typeof(self) weakSelf = self;
#define kStrongSelf(type)  __strong typeof(type) type = weak##type;

/** 加载文件 */
#define kLoadXibWithName(xibname) [[[NSBundle mainBundle]loadNibNamed:xibname owner:self options:nil]lastObject];
#define kLoadStoryBoardWithName(storyboardName) [[UIStoryboard storyboardWithName:storyboardName bundle:nil]instantiateInitialViewController]
#define kLoadImage(imageName) [UIImage imageNamed:(imageName)]

/** 屏幕尺寸 */
#define kScreenW [UIScreen mainScreen].bounds.size.width
#define kScreenH [UIScreen mainScreen].bounds.size.height
#define kWindow [UIApplication sharedApplication].keyWindow

/** app信息 */
#define kMainBundleInfo [[NSBundle mainBundle]infoDictionary]
#define kAppName [kMainBundleInfo objectForKey:@"CFBundleDisplayName"]
#define kAppVersion [kMainBundleInfo objectForKey:@"CFBundleShortVersionString"]

#endif /* QHMacros_h */

