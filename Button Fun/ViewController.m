//
//  ViewController.m
//  Button Fun
//
//  Created by 58 on 15/6/1.
//  Copyright (c) 2015年 doctorq. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(UIButton *)sender {
    //获取当前点击按钮上的title字符串
    NSString *title = [sender titleForState:UIControlStateNormal];
    //组装生成新的字符串
    NSString *plainText = [NSString
                           stringWithFormat:@"%@,I'm the Boss,bitch!",title];
    //    _statusLabel.text = plainText;
    //利用plainText字符串创建不可变的属性字符串
    NSMutableAttributedString *styledText = [[NSMutableAttributedString alloc] initWithString:plainText];
    //创建样式字典
    NSDictionary *attributes = @{NSFontAttributeName:[UIFont boldSystemFontOfSize:_statusLabel.font.pointSize]};
    //获取NSRange结构体，保存title在plainText中位置以及长短
    NSRange nameRange = [plainText rangeOfString:title];
    //将styleText中某范围内的字符串的样式设置为用字典定义的样式
    [styledText setAttributes:attributes range:nameRange];
    //赋值给标签
    _statusLabel.attributedText = styledText;
}
@end
