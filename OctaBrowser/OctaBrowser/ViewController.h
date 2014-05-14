//
//  ViewController.h
//  OctaBrowser
//
//  Created by own on 2014/05/13.
//  Copyright (c) 2014年 own. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *webView1;
@property (weak, nonatomic) IBOutlet UIWebView *webView2;
@property (weak, nonatomic) IBOutlet UIWebView *webView3;
@property (weak, nonatomic) IBOutlet UIWebView *webView4;
@property (weak, nonatomic) IBOutlet UIWebView *webView5;
@property (weak, nonatomic) IBOutlet UIWebView *webView6;
@property (weak, nonatomic) IBOutlet UIWebView *webView7;
@property (weak, nonatomic) IBOutlet UIWebView *webView8;
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;

@property (weak, nonatomic) IBOutlet UILabel *label3;

@property (weak, nonatomic) IBOutlet UILabel *label4;

@property (weak, nonatomic) IBOutlet UILabel *label5;

@property (weak, nonatomic) IBOutlet UILabel *label6;

@property (weak, nonatomic) IBOutlet UILabel *label7;

@property (weak, nonatomic) IBOutlet UILabel *label8;

@property NSArray *webViewList;
@property NSArray *labelList;



@property (weak, nonatomic) IBOutlet UITextField *urlFielf;

@end
