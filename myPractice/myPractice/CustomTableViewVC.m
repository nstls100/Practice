//
//  CustomTableViewVC.m
//  myPractice
//
//  Created by 이재홍 on 2017. 10. 12..
//  Copyright © 2017년 이재홍. All rights reserved.
//

#import "CustomTableViewVC.h"
#import "CustomTableViewCell.h"
#import "DetailVC.h"

@interface CustomTableViewVC ()

@end

@implementation CustomTableViewVC
@synthesize tableView;

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
    
    /*
        cell -> attribute inspector -> view -> background -> clear color로 변경해야 배경이 나온다.
     */
    UIImageView *backgroundImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"background.jpg"]];
    backgroundImageView.contentMode = UIViewContentModeScaleAspectFill;
    backgroundImageView.frame = self.tableView.frame;
    self.tableView.backgroundView = backgroundImageView;

}

-(void)viewWillDisappear:(BOOL)animated{
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return itemList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    NSDictionary *dicTemp = [itemList objectAtIndex:indexPath.row];
    
    cell.nameLabel.text = [dicTemp objectForKey:@"named"];
    cell.amountLabel.text = [dicTemp objectForKey:@"amount"];
    cell.valueLabel.text = [dicTemp objectForKey:@"value"];
    
    cell.imgView.image = [UIImage imageNamed:[dicTemp objectForKey:@"image"]];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *dicTemp = [itemList objectAtIndex:indexPath.row];
    
    DetailVC *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailVC"];
    vc.name = [dicTemp objectForKey:@"named"];
    vc.amount = [dicTemp objectForKey:@"amount"];
    vc.value = [dicTemp objectForKey:@"value"];
    vc.imageName = [dicTemp objectForKey:@"image"];
    
    [self.navigationController pushViewController:vc animated:true];
}


@end
