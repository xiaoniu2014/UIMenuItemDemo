//
//  TableViewCell.m
//  UIMenuItemDemo
//
//  Created by 洪伟 on 2017/1/16.
//  Copyright © 2017年 yonyou. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    [self addGestureRecognizer: [[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(longTap:)]];
}

- (void)longTap:(UILongPressGestureRecognizer *)longRecognizer {
    
    if (longRecognizer.state==UIGestureRecognizerStateBegan) {
        
        [self becomeFirstResponder];
        
        UIMenuItem *copyItem = [[UIMenuItem alloc] initWithTitle:@"复制" action:@selector(copyItemClicked:)];
        UIMenuItem *resendItem = [[UIMenuItem alloc] initWithTitle:@"转发" action:@selector(resendItemClicked:)];
        
        UIMenuItem *resendItem1 = [[UIMenuItem alloc] initWithTitle:@"收藏" action:@selector(resendItemClicked:)];
        
        UIMenuItem *resendItem2 = [[UIMenuItem alloc] initWithTitle:@"收藏多条" action:@selector(resendItemClicked:)];
        
        UIMenuItem *resendItem3 = [[UIMenuItem alloc] initWithTitle:@"删除" action:@selector(resendItemClicked:)];
        
        UIMenuController *menu=[UIMenuController sharedMenuController];
        
        [menu setMenuItems:[NSArray arrayWithObjects:copyItem,resendItem,resendItem1,resendItem2,resendItem3,nil]];
        
        [menu setTargetRect:self.bounds inView:self];
        
        [menu setMenuVisible:YES animated:YES];
    }
}

- (void)resendItemClicked:(id)sender {
    NSLog(@"转发");
}

- (void)copyItemClicked:(UIMenuItem *)sender {
    NSLog(@"复制");
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    pasteboard.string = @"hongw";
}

//处理action事件
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
    if(action == @selector(copyItemClicked:)){
        return YES;
    } else if (action == @selector(resendItemClicked:)){
        return YES;
    }
    return [super canPerformAction:action withSender:sender];
}
//实现成为第一响应者方法
- (BOOL)canBecomeFirstResponder {
    return YES;
}

@end
