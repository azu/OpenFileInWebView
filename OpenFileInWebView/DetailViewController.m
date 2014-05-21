//
//  DetailViewController.m
//  OpenFileInWebView
//
//  Created by azu on 2014/05/21.
//  Copyright (c) 2014 azu. All rights reserved.
//

#import "DetailViewController.h"
#import "OpenFileInWebView.h"

@interface DetailViewController ()
- (void)configureView;
- (IBAction)handleWebViewButton:(id)sender;
- (IBAction)handleSystemButton:(id)sender;
@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (IBAction)handleWebViewButton:(id)sender {
    UIViewController *controller = [OpenFileInWebView viewControllerToOpenFile:[[NSBundle mainBundle] pathForResource:@"index" ofType:@"pdf"]];
    [self.navigationController pushViewController:controller animated:YES];

}

- (IBAction)handleSystemButton:(id)sender {
    [OpenFileInWebView openInSystem:[[NSBundle mainBundle] pathForResource:@"index" ofType:@"pdf"]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end