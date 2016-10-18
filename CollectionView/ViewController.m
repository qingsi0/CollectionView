//
//  ViewController.m
//  CollectionView
//
//  Created by feiiing on 16/10/17.
//  Copyright © 2016年 feiiing. All rights reserved.
//

#import "ViewController.h"
#import "CollectionOneCell.h"
#import "CollectionTwoCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    [self collectionView];
}


- (UICollectionView *)collectionView{
    if (!_collectionView) {
        //创建有一个layout布局类
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        //设置布局方向为垂直布局
        layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        //设置每个item的大小
        layout.itemSize = CGSizeMake(self.view.frame.size.width, 100);
        
        //通过layout布局策略来创建collectionView
        _collectionView = [[UICollectionView alloc] initWithFrame:self.view.frame collectionViewLayout:layout];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        _collectionView.backgroundColor = [UIColor whiteColor];
        [self.view addSubview:_collectionView];
        //和tableview不一样的地方，collectionView完成代理回调前，必须注册一个cell
        [_collectionView registerClass:[CollectionOneCell class] forCellWithReuseIdentifier:@"CollectionOneCell"];
        [_collectionView registerClass:[CollectionTwoCell class] forCellWithReuseIdentifier:@"CollectionTwoCell"];
    }
    return _collectionView;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row%3 == 0) {
        CollectionOneCell * cell  = [collectionView dequeueReusableCellWithReuseIdentifier:@"CollectionOneCell" forIndexPath:indexPath];
        return cell;
    }else{
        CollectionTwoCell * cell  = [collectionView dequeueReusableCellWithReuseIdentifier:@"CollectionTwoCell" forIndexPath:indexPath];
        return cell;
    }
    
    return nil;
}

//定义每个Item 的大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row % 3 == 0) {
        return CGSizeMake(self.view.frame.size.width, 100);
    }else
        return CGSizeMake(self.view.frame.size.width, 400);
}

////定义每个UICollectionView 的 margin
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(10, 0, 10, 0);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section{
    return 1;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 25;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
