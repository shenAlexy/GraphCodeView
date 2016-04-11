//
//  ViewController.m
//  GraphCodeView-demo
//
//  Created by shen_gh on 16/4/11.
//  Copyright © 2016年 申冠华. All rights reserved.
//

#import "ViewController.h"
#import "GraphCodeView.h"//图形验证码

@interface ViewController ()
<GraphCodeViewDelegate>

@property (nonatomic,strong) GraphCodeView *graphCodeView;//图形验证码
@end

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view addSubview:self.graphCodeView];
}

//图形验证码
- (GraphCodeView *)graphCodeView{
    if (!_graphCodeView) {
        _graphCodeView=[[GraphCodeView alloc]initWithFrame:CGRectMake(kScreenWidth/2-50.0, kScreenHeight/2-20.0, 100.0, 40.0)];
        [_graphCodeView setCodeStr:@"S3G9"];//设置验证码
        [_graphCodeView setDelegate:self];
    }
    return _graphCodeView;
}

#pragma mark - GraphCodeView delegate
- (void)didTapGraphCodeView:(GraphCodeView *)graphCodeView{
    NSLog(@"点击了图形验证码");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
