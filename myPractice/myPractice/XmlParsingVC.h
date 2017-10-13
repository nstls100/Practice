//
//  XmlParsingVC.h
//  myPractice
//
//  Created by 이재홍 on 2017. 10. 13..
//  Copyright © 2017년 이재홍. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XmlParsingVC : UIViewController<NSXMLParserDelegate, UITableViewDataSource, UITableViewDelegate>{
    NSXMLParser *parser;
    NSMutableArray *dataList;
    NSMutableDictionary *detailData;
    NSString *elementTemp;
    BOOL blank;
}

@end
