//
//  CollectionOneCell.m
//  CollectionView
//
//  Created by feiiing on 16/10/17.
//  Copyright © 2016年 feiiing. All rights reserved.
//

#import "CollectionOneCell.h"

@implementation CollectionOneCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor yellowColor];
        [self addSubControlView:@"这里是 CollectionOneCell"];
    }
    return self;
}

- (void)addSubControlView:(NSString *)labelString{
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(10, 10, 200, 20);
    label.text = labelString;
    [self addSubview:label];
    
    UIImageView *view = [[UIImageView alloc] init];
    view.frame = CGRectMake(100, 40, 200, 200);
    view.image = [UIImage imageNamed:@""];
    [self addSubview:view];
}

@end
