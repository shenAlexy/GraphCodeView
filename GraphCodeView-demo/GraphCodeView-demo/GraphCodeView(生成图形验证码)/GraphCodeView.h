//
//  GraphCodeView.h
//  GraphCodeView-demo
//
//  Created by shen_gh on 16/4/11.
//  Copyright © 2016年 申冠华. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GraphCodeView;

@protocol GraphCodeViewDelegate <NSObject>

//点击图形验证码
- (void)didTapGraphCodeView:(GraphCodeView *)graphCodeView;

@end

@interface GraphCodeView : UIView

@property (nonatomic,strong) NSString *codeStr;//接收外部传的code
@property (nonatomic,assign) id<GraphCodeViewDelegate> delegate;

@end
