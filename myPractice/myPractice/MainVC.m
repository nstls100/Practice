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
    
    dataList = [[NSArray alloc] initWithObjects:@"tableView", @"cutomTableView", @"TabBar", @"ScrollView", @"XmlParsing", @"jsonParsing", @"collectionView", nil];
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
    UIViewController* vc;
    
    if( [str isEqualToString:@"tableView"]){
        vc = [self.storyboard instantiateViewControllerWithIdentifier:@"tableViewVC"];
    }else if([str isEqualToString:@"cutomTableView"]){
        vc = [self.storyboard instantiateViewControllerWithIdentifier:@"customTableView"];
    }else if([str isEqualToString:@"TabBar"]){
        vc = [self.storyboard instantiateViewControllerWithIdentifier:@"TabBarVC"];
    }else if([str isEqualToString:@"ScrollView"]){
        vc = [self.storyboard instantiateViewControllerWithIdentifier:@"ScrollViewVC"];
    }else if( [str isEqualToString:@"XmlParsing"]){
        vc = [self.storyboard instantiateViewControllerWithIdentifier:@"XmlParsingVC"];
    }else if( [str isEqualToString:@"jsonParsing"]){
        vc = [self.storyboard instantiateViewControllerWithIdentifier:@"jsonParsingVC"];
    }else if( [str isEqualToString:@"collectionView"]){
        vc = [self.storyboard instantiateViewControllerWithIdentifier:@"CollectionViewVC"];
    }else{
        NSLog(@"선택되었습니다.");
    }
    
    [self.navigationController pushViewController:vc animated:true];
    
}


@end
