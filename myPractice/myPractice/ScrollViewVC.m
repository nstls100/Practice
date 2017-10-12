//
//  ScrollViewVC.m
//  myPractice
//
//  Created by 이재홍 on 2017. 10. 12..
//  Copyright © 2017년 이재홍. All rights reserved.
//

#import "ScrollViewVC.h"

@interface ScrollViewVC ()

@end

@implementation ScrollViewVC
@synthesize scrollView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *images = [[NSArray alloc]initWithObjects:[UIImage imageNamed:@"6.jpg"],
                                                       [UIImage imageNamed:@"7.jpg"],
                                                       [UIImage imageNamed:@"8.jpg"], nil];
    /*
        이미지가 내려가 있는 이유??
     */
    for (int i = 0; i < images.count; i++) {
        UIImageView *imgview = [[UIImageView alloc]init];
        imgview.image = images[i];
        imgview.contentMode = UIViewContentModeScaleAspectFit;
        float xPosition = self.view.frame.size.width * i;
        
        imgview.frame = CGRectMake(xPosition, -80, self.view.frame.size.width, self.view.frame.size.height);
        [scrollView setContentSize:CGSizeMake(self.view.frame.size.width * ( i + 1), 0 )];
        [scrollView addSubview:imgview];
    }
}
@end
