//
//  CustomTableViewVC.h
//  myPractice
//
//  Created by 이재홍 on 2017. 10. 12..
//  Copyright © 2017년 이재홍. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomTableViewCell.h"

@interface CustomTableViewVC : UIViewController <CustomTableViewCellDelegate>{
    NSArray *itemList;
}

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
