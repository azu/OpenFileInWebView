//
// Created by azu on 2014/05/21.
//


#import "OpenFileInWebView.h"


@implementation OpenFileInWebView {

}
+ (UIViewController *)viewControllerToOpenFile:(NSString *) filePath {
    NSURL *path = [NSURL fileURLWithPath:filePath];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:path];
    UIWebView *webView = [[UIWebView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    webView.scalesPageToFit = YES;
    [webView loadRequest:urlRequest];
    UIViewController *viewController = [[UIViewController alloc] init];
    viewController.view = webView;
    return viewController;
}

+ (void)openInSystem:(NSString *) filePath {
    NSURL *path = [NSURL fileURLWithPath:filePath];
    system([[NSString stringWithFormat:@"open '%@'", path] cStringUsingEncoding:NSUTF8StringEncoding]);;
}


@end