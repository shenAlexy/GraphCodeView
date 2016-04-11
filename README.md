# GraphCodeView
iOS本地生成图形验证码的实现

# 使用方法
    //图形验证码
    - (GraphCodeView *)graphCodeView{
    if (!_graphCodeView) {
        _graphCodeView=[[GraphCodeView alloc]initWithFrame:CGRectMake(kScreenWidth/2-50.0, kScreenHeight/2-20.0, 100.0, 40.0)];
        [_graphCodeView setCodeStr:@"S3G9"];//设置验证码
        [_graphCodeView setDelegate:self];
    }
    return _graphCodeView;
}
