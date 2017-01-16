//
//  ViewController.m
//  UIMenuItemDemo
//
//  Created by 洪伟 on 2017/1/16.
//  Copyright © 2017年 yonyou. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell"];
    return cell;
}



@end
