//
//  ViewController.h
//  Button Fun
//
//  Created by 58 on 15/6/1.
//  Copyright (c) 2015年 doctorq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)buttonPressed:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;


@end

