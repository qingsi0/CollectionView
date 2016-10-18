//
//  CollectionTwoCell.m
//  CollectionView
//
//  Created by feiiing on 16/10/17.
//  Copyright © 2016年 feiiing. All rights reserved.
//

#import "CollectionTwoCell.h"

@implementation CollectionTwoCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor orangeColor];
        [self addSubControlView];
    }
    return self;
}

- (void)addSubControlView{
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(100, 10, 300, 30);
    label.text = @"这里是 CollectionTwoCell";
    label.font = [UIFont systemFontOfSize:20 weight:10];
    [self addSubview:label];
}


@end
