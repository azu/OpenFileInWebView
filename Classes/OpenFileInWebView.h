//
// Created by azu on 2014/05/21.
//


#import <Foundation/Foundation.h>


@interface OpenFileInWebView : NSObject
// @return viewcontroller to load file.
// support file type depended on webview.(pdf,doc etc..)
+ (UIViewController *)viewControllerToOpenFile:(NSString *) filePath;
@end