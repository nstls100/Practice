//
//  CustomTableViewCell.h
//  myPractice
//
//  Created by 이재홍 on 2018. 1. 7..
//  Copyright © 2018년 이재홍. All rights reserved.
//

#import <UIKit/UIKit.h>

// > block
typedef void(^CustomTableViewCellBlock)(NSInteger, NSString *);

// > delegate
@protocol CustomTableViewCellDelegate <NSObject>
- (void)select:(NSInteger)idx name:(NSString *)nm;
@end

@interface CustomTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *accountLabel;
@property (strong, nonatomic) IBOutlet UILabel *valueLabel;
@property (strong, nonatomic) IBOutlet UIImageView *imgView;

@property (nonatomic) NSInteger idx;        // > cell index
@property (nonatomic) NSDictionary *item;   // > data item

// > call back
@property (nonatomic, copy) CustomTableViewCellBlock block;
@property (nonatomic, retain) id<CustomTableViewCellDelegate> delegate;

- (IBAction)onBtn:(id)sender;
-(void)setCellData;

@end
