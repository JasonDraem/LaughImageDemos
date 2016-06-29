//
//  ViewController.m
//  LaughImageDemos
//
//  Created by UncleWang on 16/6/23.
//  Copyright © 2016年 UncleWang. All rights reserved.
//

#import "ViewController.h"

#import <Masonry/Masonry.h>

@interface ViewController ()
{
    
}
//
@property (nonatomic, strong) UILabel *testLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //
    //[self.view addSubview:self.testLabel];
    [self testLabel];
}
//
- (UILabel *)testLabel{
    __weak typeof(self) weakSelf = self;
    if (!_testLabel) {
        _testLabel = [[UILabel alloc] init];
        _testLabel.backgroundColor = [UIColor redColor];
        [self.view addSubview:_testLabel];
        //
        [_testLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //make.center.mas_equalTo(weakSelf.view);
//            make.size.mas_equalTo(CGSizeMake(300, 30));
//            make.leading.mas_equalTo(weakSelf.view.mas_leading).with.offset(64);
//            make.top.mas_equalTo(weakSelf.view.mas_top).with.offset(64);
            make.edges.mas_equalTo(UIEdgeInsetsMake(64, 64, 64, 64));
        }];
    }
    return _testLabel;
}
//
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
