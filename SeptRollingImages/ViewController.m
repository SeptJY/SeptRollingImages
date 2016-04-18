//
//  ViewController.m
//  SeptRollingImages
//
//  Created by Sept on 16/4/18.
//  Copyright © 2016年 九月. All rights reserved.
//

#import "ViewController.h"

#import "JYRollingView.h"

#define screenW [UIScreen mainScreen].bounds.size.width
#define screenH [UIScreen mainScreen].bounds.size.height

@interface ViewController () <JYRollingViewDelegate>

@property (strong, nonatomic) JYRollingView *rollingView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view addSubview:self.rollingView];
}

- (JYRollingView *)rollingView
{
    if (!_rollingView) {
        
        NSArray *arr2 = @[@"http://www.5068.com/u/faceimg/20140725173411.jpg", @"http://file27.mafengwo.net/M00/52/F2/wKgB6lO_PTyAKKPBACID2dURuk410.jpeg", @"http://file27.mafengwo.net/M00/B2/12/wKgB6lO0ahWAMhL8AAV1yBFJDJw20.jpeg"];
        
        _rollingView = [JYRollingView rollingViewWithimageArray:arr2];
        _rollingView.frame = CGRectMake(0, 0, screenW, 200);
        
        _rollingView.backgroundColor = [UIColor yellowColor];
        _rollingView.delegate = self;
        //设置每张图片的停留时间
        _rollingView.time = 3.0;
        _rollingView.pagePosition = JYPageControlPositionBottomCenter;
        
        
    }
    return _rollingView;
}

- (void)rollingViewImagesOnClick
{
    NSLog(@"%s", __func__);
}

//- (void)viewWillLayoutSubviews
//{
//    [super viewWillLayoutSubviews];
//    
//    self.rollingView.frame = CGRectMake(0, 0, screenW, 200);
//}

@end
