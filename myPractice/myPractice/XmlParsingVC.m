//
//  XmlParsingVC.m
//  myPractice
//
//  Created by 이재홍 on 2017. 10. 13..
//  Copyright © 2017년 이재홍. All rights reserved.
//

#import "XmlParsingVC.h"
#import "TableViewCell.h"

@interface XmlParsingVC ()

@end

@implementation XmlParsingVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dataList = [[NSMutableArray alloc]init];
    parser = [[NSXMLParser alloc]initWithContentsOfURL:[NSURL URLWithString:@"https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/weather.xml"]];
    parser.delegate = self;
    [parser parse];
}

-(void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict{
    NSLog(@"didStartElement : %@", elementName);
    if ([elementName isEqualToString:@"local"]) {
        detailData = [[NSMutableDictionary alloc]init];
    }
    elementTemp = elementName;
    blank = YES;
}

-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string{
    if (blank == YES && ![elementTemp isEqualToString:@"local"]) {
        NSLog(@"foundCharacters : %@",string);
        [detailData setObject:string forKey:elementTemp];
    }
    
}

-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName{
    if ([elementName isEqualToString:@"local"]) {
        [dataList addObject:detailData];
    }
    NSLog(@"didEndElement : %@",elementName);
    blank = NO;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return dataList.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    NSDictionary *dicTemp = [dataList objectAtIndex:indexPath.row];
    
    cell.countryLabel.text = [dicTemp objectForKey:@"country"];
    NSString *weatherStr = [dicTemp objectForKey:@"weather"];
    cell.weatherLabel.text = weatherStr;
    cell.temperatureLabel.text = [[dicTemp objectForKey:@"temperature"] stringByAppendingString:@"℃"];
    
    if ([weatherStr isEqualToString:@"맑음"]) {
        cell.imgVIew.image = [UIImage imageNamed:@"sunny.png"];
    }else if ([weatherStr isEqualToString:@"비"]) {
        cell.imgVIew.image = [UIImage imageNamed:@"rainy.png"];
    }else if ([weatherStr isEqualToString:@"흐림"]) {
        cell.imgVIew.image = [UIImage imageNamed:@"cloudy.png"];
    }else if ([weatherStr isEqualToString:@"눈"]) {
        cell.imgVIew.image = [UIImage imageNamed:@"snow.png"];
    }else{
        cell.imgVIew.image = [UIImage imageNamed:@"blizzard.png"];
    }
    
    return cell;
}



@end
