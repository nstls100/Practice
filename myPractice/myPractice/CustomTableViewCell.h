//
//  CustomTableViewCell.h
//  myPractice
//
//  Created by 이재홍 on 2017. 10. 12..
//  Copyright © 2017년 이재홍. All rights reserved.
//

#import <UIKit/UIKit.h>

// > block
typedef void(^CustomTableViewCellBlock)(NSInteger, NSString *);

// > delegate
@protocol CustomTableViewCellDelegate <NSObject>

- (void)select:(NSInteger)idx name:(NSString *)nm;

@end

@interface CustomTableViewCell : UITableViewCell 

// > call back
@property (nonatomic, copy) CustomTableViewCellBlock block;
@property (nonatomic, retain) id<CustomTableViewCellDelegate> delegate;

@property (nonatomic) NSInteger idx;        // > cell index
@property (nonatomic) NSDictionary *item;   // > data item

@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *amountLabel;
@property (strong, nonatomic) IBOutlet UILabel *valueLabel;
@property (strong, nonatomic) IBOutlet UIImageView *imgView;

- (void)setCellData;

@end
