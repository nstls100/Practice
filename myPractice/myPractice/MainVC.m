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
    
    //dataList = [[NSArray alloc] initWithObjects:@"tableView", @"cutomTableView", @"TabBar", @"ScrollView", @"XmlParsing", @"jsonParsing", @"collectionView", nil];
    NSDictionary *dic_1 = @{@"vc" : @"tableViewVC", @"name": @"n1"};
    NSDictionary *dic_2 = @{@"vc" : @"customTableView", @"name": @"n2"};
    NSDictionary *dic_3 = @{@"vc" : @"TabBarVC", @"name": @"n3"};
    NSDictionary *dic_4 = @{@"vc" : @"ScrollViewVC", @"name": @"n4"};
    NSDictionary *dic_5 = @{@"vc" : @"XmlParsingVC", @"name": @"n5"};
    NSDictionary *dic_6 = @{@"vc" : @"jsonParsing", @"name": @"n6"};
    NSDictionary *dic_7 = @{@"vc" : @"CollectionViewVC", @"name": @"n7"};
    
    dataList = [[NSArray alloc] initWithObjects:dic_1, dic_2, dic_3, dic_4, dic_5, dic_6, dic_7, nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return dataList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    NSDictionary *dic = [dataList objectAtIndex:indexPath.row];
    cell.textLabel.text = [dic objectForKey:@"name"];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSDictionary *dic = [dataList objectAtIndex:indexPath.row];
    
    UIViewController* vc = [self.storyboard instantiateViewControllerWithIdentifier: [dic objectForKey:@"vc"]];
    
    [self.navigationController pushViewController:vc animated:true];
    
}


@end
