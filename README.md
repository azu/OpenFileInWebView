# OpenFileInWebView

This library to open (local) file in WebView.

Main use case is debug.

## Installation

```sh
pod 'OpenFileInWebView'
```

## Usage

* Open in WebView or Open in your system.

``` objc
@interface OpenFileInWebView : NSObject
// @return viewcontroller to load file.
// support file type depended on webview.(pdf,doc etc..)
+ (UIViewController *)viewControllerToOpenFile:(NSString *) filePath;
@end
```


## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## License

MIT