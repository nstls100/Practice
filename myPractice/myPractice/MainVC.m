//
//  MainVC.m
//  myPractice
//
//  Created by 이재홍 on 2017. 10. 11..
//  Copyright © 2017년 이재홍. All rights reserved.
//

#import "MainVC.h"
#import "DefaultTableView.h"
#import "CustomTableView.h"

@interface MainVC ()

@end

@implementation MainVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //dataList = [[NSArray alloc] initWithObjects:@"tableView", @"cutomTableView", @"TabBar", @"ScrollView", @"XmlParsing", @"jsonParsing", @"collectionView", nil];
    NSDictionary *dic_1 = @{@"vc" : @"DefaultTableView", @"name": @"n1"};
    NSDictionary *dic_2 = @{@"vc" : @"CustomTableView", @"name": @"n2"};
    NSDictionary *dic_3 = @{@"vc" : @"TabBarVC", @"name": @"n3"};
    NSDictionary *dic_4 = @{@"vc" : @"ScrollViewVC", @"name": @"n4"};
    NSDictionary *dic_5 = @{@"vc" : @"XmlParsingVC", @"name": @"n5"};
    NSDictionary *dic_6 = @{@"vc" : @"JsonParsingVC", @"name": @"n6"};
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
    cell.textLabel.text = [dic objectForKey:@"vc"];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSDictionary *dic = [dataList objectAtIndex:indexPath.row];
   
    if([[dic objectForKey:@"vc"]isEqualToString:@"DefaultTableView"]){
        DefaultTableView *v = [[DefaultTableView alloc] initWithNibName:[dic objectForKey:@"vc"] bundle:nil];
    
        // 네비게이션 컨트롤러가 인스톨된 경우.
        if (self.navigationController) {
            [self.navigationController pushViewController:v animated:YES];
        } else {
            [self presentViewController:v animated:YES completion:nil];
        }
    }else if([[dic objectForKey:@"vc"]isEqualToString:@"CustomTableView"]){
        CustomTableView *v = [[CustomTableView alloc] initWithNibName:[dic objectForKey:@"vc"] bundle:nil];
        
        // 네비게이션 컨트롤러가 인스톨된 경우.
        if (self.navigationController) {
            [self.navigationController pushViewController:v animated:YES];
        } else {
            [self presentViewController:v animated:YES completion:nil];
        }
    }

    
    
    
    //[self.navigationController pushViewController:vc animated:true];
    
}


@end
