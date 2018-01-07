//
//  DetailViewController.m
//  myPractice
//
//  Created by 이재홍 on 2018. 1. 7..
//  Copyright © 2018년 이재홍. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _nameLabel.text = _name;
    _accountLabel.text = _amount;
    _valueLabel.text = _value;
    
    _imgView.image = [UIImage imageNamed:_imageName];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
