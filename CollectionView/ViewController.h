//
//  ViewController.h
//  CollectionView
//
//  Created by feiiing on 16/10/17.
//  Copyright © 2016年 feiiing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource>

@property(nonatomic, strong) UICollectionView *collectionView;

@end

