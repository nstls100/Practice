//
//  DetailVC.m
//  myPractice
//
//  Created by 이재홍 on 2017. 10. 12..
//  Copyright © 2017년 이재홍. All rights reserved.
//

#import "DetailVC.h"

@interface DetailVC ()

@end

@implementation DetailVC

@synthesize name, amount, value, imageName, imgView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.nameLabel.text = name;
    self.amountLabel.text = amount;
    self.valueLabel.text = value;
    
    self.imgView.image = [UIImage imageNamed:imageName];
}

@end
