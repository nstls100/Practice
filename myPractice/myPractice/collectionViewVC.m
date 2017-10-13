//
//  collectionViewVC.m
//  myPractice
//
//  Created by 이재홍 on 2017. 10. 13..
//  Copyright © 2017년 이재홍. All rights reserved.
//

#import "collectionViewVC.h"
#import "CollectionViewCell.h"

@interface collectionViewVC ()

@end

@implementation collectionViewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    imageList = [[NSArray alloc]initWithObjects:[UIImage imageNamed:@"6"],
                       [UIImage imageNamed:@"7"],
                       [UIImage imageNamed:@"apple"], [UIImage imageNamed:@"background"], [UIImage imageNamed:@"tomato"], [UIImage imageNamed:@"lemon"],nil];

}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return imageList.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"rowCell" forIndexPath:indexPath];
    
    cell.imgView.image = [imageList objectAtIndex:indexPath.row];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{

    CGFloat width = collectionView.frame.size.width / 3 - 1;
    return CGSizeMake(width, width);
}

// 여백을 주기 위해 밑의 2가지 함수를 이용.

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section{
    // 컬렉션 뷰 위, 아래 그림의 여백
    // 0일시에 여백 없이 그림이 붙어서 보임.
    return 1;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section{
    // 컬렉션 뷰 양 옆 사이 여백
    
    return 1;
}

@end
