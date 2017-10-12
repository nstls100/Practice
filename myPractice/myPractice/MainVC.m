//
//  MainVC.m
//  myPractice
//
//  Created by 이재홍 on 2017. 10. 11..
//  Copyright © 2017년 이재홍. All rights reserved.
//

#import "MainVC.h"

@interface MainVC ()

@end

@implementation MainVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dataList = [[NSArray alloc] initWithObjects:@"tableView", @"cutomTableView", nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return dataList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = [dataList objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *str = [dataList objectAtIndex:indexPath.row];
    
    if( [str isEqualToString:@"tableView"])
    {
        UIViewController* vc = [self.storyboard instantiateViewControllerWithIdentifier:@"tableViewVC"];
        [self.navigationController pushViewController:vc animated:true];
        
    }else if([str isEqualToString:@"cutomTableView"]){
        UIViewController* vc = [self.storyboard instantiateViewControllerWithIdentifier:@"customTableView"];
        [self.navigationController pushViewController:vc animated:true];
    }else{
        NSLog(@"선택되었습니다.");
    }
}


@end
