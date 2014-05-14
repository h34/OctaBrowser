//
//  ViewController.m
//  OctaBrowser
//
//  Created by own on 2014/05/13.
//  Copyright (c) 2014年 own. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    _webViewList = [NSArray arrayWithObjects:self.webView1, self.webView2, self.webView3, self.webView4, self.webView5, self.webView6, self.webView7, self.webView8, nil];
    _labelList = [NSArray arrayWithObjects:self.label1, self.label2, self.label3, self.label4, self.label5, self.label6, self.label7, self.label8, nil];
    
    
    // URLを指定
    NSURL *url = [NSURL URLWithString:@"http://www.google.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    // UIwebViewの設定
    for (int i=0; i<_webViewList.count; i++) {
        // 初期ページを開く
        UIWebView *v =[_webViewList objectAtIndex:i];
        v.delegate = self;
        [v loadRequest:request];
        // トランスフォーム
        v.transform = CGAffineTransformMakeScale(0.5, 0.5);
        
    }
    
    
    
    
    // リクエストを投げる
    
    //
    
}

// ロード開始
-(void)webViewDidStartLoad:(UIWebView*)webView{
    NSLog(@"START");
}
// ロード終了
- (void)webViewDidFinishLoad:(UIWebView*)webView{
    NSString *wTitle = [webView stringByEvaluatingJavaScriptFromString:@"document.title"];
    NSString* url = [webView stringByEvaluatingJavaScriptFromString:@"document.URL"];
    UILabel *label = [self.labelList objectAtIndex:webView.tag];
    label.text = [NSString stringWithFormat:@"[%@]%@", wTitle, url];
}


- (IBAction)debugTest:(id)sender {
    [self.webView8 becomeFirstResponder];
    NSLog( @"%hhd", [self.webView8 isFirstResponder] );
}

// フォーカスをアップデートする
-(void)updateFocus{
    for (int i=0; i<_webViewList.count; i++) {
        UIWebView *w = _webViewList[i];
        NSLog( @"%hhd", w.isFirstResponder);
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
    
}

@end
