//
//  CustomTableView.m
//  myPractice
//
//  Created by 이재홍 on 2018. 1. 7..
//  Copyright © 2018년 이재홍. All rights reserved.
//

#import "CustomTableView.h"
#import "CustomTableViewCell.h"
#import "DetailViewController.h"

@interface CustomTableView ()

@end

@implementation CustomTableView{
    NSArray *itemList;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *item1 = [[NSDictionary alloc]initWithObjectsAndKeys:@"사과", @"named", @"apple.jpeg", @"image", @"6", @"amount", @"3000원", @"value", nil];
    NSDictionary *item2 = [[NSDictionary alloc]initWithObjectsAndKeys:@"블루베리", @"named", @"blueberry.jpg", @"image", @"13", @"amount", @"4000원", @"value", nil];
    NSDictionary *item3 = [[NSDictionary alloc]initWithObjectsAndKeys:@"당근", @"named", @"carrot.jpg", @"image", @"1", @"amount", @"2000원", @"value", nil];
    NSDictionary *item4 = [[NSDictionary alloc]initWithObjectsAndKeys:@"체리", @"named", @"cherry.png", @"image", @"4", @"amount", @"1500원", @"value", nil];
    NSDictionary *item5 = [[NSDictionary alloc]initWithObjectsAndKeys:@"포도", @"named", @"grape.jpg", @"image", @"5", @"amount", @"3500원", @"value", nil];
    NSDictionary *item6 = [[NSDictionary alloc]initWithObjectsAndKeys:@"키위", @"named", @"kiwi.png", @"image", @"7", @"amount", @"8000원", @"value", nil];
    NSDictionary *item7 = [[NSDictionary alloc]initWithObjectsAndKeys:@"레몬", @"named", @"lemon.png", @"image", @"13", @"amount", @"4000원", @"value", nil];
    NSDictionary *item8 = [[NSDictionary alloc]initWithObjectsAndKeys:@"라임", @"named", @"lime.jpg", @"image", @"4", @"amount", @"2400원", @"value", nil];
    NSDictionary *item9 = [[NSDictionary alloc]initWithObjectsAndKeys:@"고기", @"named", @"meat.jpg", @"image", @"2", @"amount", @"3000원", @"value", nil];
    NSDictionary *item10 = [[NSDictionary alloc]initWithObjectsAndKeys:@"딸기", @"named", @"strawberry.jpg", @"image", @"6", @"amount", @"4400원", @"value", nil];
    NSDictionary *item11 = [[NSDictionary alloc]initWithObjectsAndKeys:@"토마토", @"named", @"tomato.png", @"image", @"9", @"amount", @"3500원", @"value", nil];
    NSDictionary *item12 = [[NSDictionary alloc]initWithObjectsAndKeys:@"야채", @"named", @"vegetable.jpg", @"image", @"13", @"amount", @"2800원", @"value", nil];
    NSDictionary *item13 = [[NSDictionary alloc]initWithObjectsAndKeys:@"멜론", @"named", @"watermelon.png", @"image", @"8", @"amount", @"9000원", @"value", nil];
    
    itemList = [[NSArray alloc]initWithObjects:item1, item2, item3, item4, item5, item6, item7, item8, item9, item10, item11, item12, item13, nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - tableView
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return itemList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell == nil){
        [tableView registerNib:[UINib nibWithNibName:@"CustomTableViewCell" bundle:nil] forCellReuseIdentifier:CellIdentifier];
        cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    }
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    NSDictionary *dicTemp = [itemList objectAtIndex:indexPath.row];
    cell.idx = indexPath.row;
    cell.item = dicTemp;
    [cell setCellData];
    
    // > block
    cell.block = ^(NSInteger idx, NSString *name){
        NSLog(@"index : %d name : %@", (int)idx, name);
        NSLog(@"Block");
    };
    
    cell.block = ^(NSInteger idx, NSString *name){
        NSLog(@"index : %d name : %@", (int)idx, name);
        NSLog(@"Block");
    };
    
    // > delegate
    cell.delegate = self;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *dicTemp = [itemList objectAtIndex:indexPath.row];
    
    DetailViewController *v = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    
    v.name = [dicTemp objectForKey:@"named"];
    v.amount = [dicTemp objectForKey:@"amount"];
    v.value = [dicTemp objectForKey:@"value"];
    v.imageName = [dicTemp objectForKey:@"image"];
    
    // 네비게이션 컨트롤러가 인스톨된 경우.
    if (self.navigationController) {
        [self.navigationController pushViewController:v animated:YES];
    } else {
        [self presentViewController:v animated:YES completion:nil];
    }
}

#pragma mark - a custom table view cell delegate

- (void)select:(NSInteger)idx name:(NSString *)nm {
    NSLog(@"index : %d name : %@", (int)idx, nm);
    NSLog(@"Delegate");
}



@end
