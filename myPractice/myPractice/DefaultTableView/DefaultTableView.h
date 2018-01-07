//
//  DefaultTableView.h
//  myPractice
//
//  Created by 이재홍 on 2018. 1. 7..
//  Copyright © 2018년 이재홍. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DefaultTableView : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
