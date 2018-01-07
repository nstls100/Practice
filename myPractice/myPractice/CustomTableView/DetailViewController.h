//
//  DetailViewController.h
//  myPractice
//
//  Created by 이재홍 on 2018. 1. 7..
//  Copyright © 2018년 이재홍. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *amount;
@property (nonatomic, copy) NSString *value;
@property (nonatomic, copy) NSString *imageName;

@property (strong, nonatomic) IBOutlet UIImageView *imgView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *accountLabel;
@property (strong, nonatomic) IBOutlet UILabel *valueLabel;

@end
