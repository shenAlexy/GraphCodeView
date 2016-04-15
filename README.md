# GraphCodeView
iOS本地生成图形验证码的实现

![image](https://github.com/shenAlexy/GraphCodeView/blob/master/GraphCodeView-demo/GraphCodeView-demo/效果图.png)

# 使用方法
    //图形验证码
    - (GraphCodeView *)graphCodeView{
        if (!_graphCodeView) {
            _graphCodeView=[[GraphCodeView alloc]initWithFrame:CGRectMake(kScreenWidth/2-50.0, kScreenHeight/2-20.0, 100.0,40.0)];
            [_graphCodeView setCodeStr:@"S3G9"];//设置验证码
            [_graphCodeView setDelegate:self];
        }
        return _graphCodeView;
    }
    
    #pragma mark - GraphCodeView delegate
    - (void)didTapGraphCodeView:(GraphCodeView *)graphCodeView{
        NSLog(@"点击了图形验证码");
    
    }


#联系我
   微信公众号:  iOSDevTeam
