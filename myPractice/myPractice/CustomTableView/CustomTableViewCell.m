//
//  CustomTableViewCell.m
//  myPractice
//
//  Created by 이재홍 on 2018. 1. 7..
//  Copyright © 2018년 이재홍. All rights reserved.
//

#import "CustomTableViewCell.h"

@implementation CustomTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)onBtn:(id)sender {
    // > call back block
    if (_block) _block(_idx, [_item objectForKey:@"named"]);
    
    // > call back delegate
    if (_delegate) {
        if ([_delegate respondsToSelector:@selector(select:name:)])
            [_delegate select:_idx name:[_item objectForKey:@"named"]];
    }
}

- (void)setCellData{
    _nameLabel.text = [_item objectForKey:@"named"];
    _accountLabel.text = [_item objectForKey:@"amount"];
    _valueLabel.text = [_item objectForKey:@"value"];
    
    _imgView.image = [UIImage imageNamed:[_item objectForKey:@"image"]];
}

@end
