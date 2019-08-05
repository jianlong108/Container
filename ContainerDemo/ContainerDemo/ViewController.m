//
//  ViewController.m
//  ContainerDemo
//
//  Created by JL on 2019/8/5.
//  Copyright © 2019 JL. All rights reserved.
//

#import "ViewController.h"
#import <Container/Container.h>

@interface ViewController ()<
    JLScrollNavigationControllerDelegate,
    JLScrollNavigationControllerDataSource
>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    JLScrollNavigationController *controller = [[JLScrollNavigationController alloc]init];
    controller.scrollNavigationDataSource = self;
    controller.scrollNavigationDelegate = self;
    controller.view.backgroundColor = [UIColor orangeColor];
    
    controller.view.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    
    [self addChildViewController:controller];
    [controller didMoveToParentViewController:self];
    [self.view addSubview:controller.view];
}

- (NSInteger)numberOfTitleInScrollNavigationController:(JLScrollNavigationController *)scrollNavigationController
{
    return 2;
}

- (UIViewController<JLScrollNavigationChildControllerProtocol> *)scrollNavigationController:(JLScrollNavigationController *)scrollNavigationController
                                                                   childViewControllerForIndex:(NSInteger)index
{
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(255)/255.0 green:arc4random_uniform(255)/255.0 blue:arc4random_uniform(255)/255.0 alpha:1.0f];
    return (UIViewController<JLScrollNavigationChildControllerProtocol> *)vc;
}

- (NSString *)scrollNavigationController:(JLScrollNavigationController *)scrollNavigationController controllerTitleWithIndex:(NSUInteger)index
{
    if (index == 0) {
        return @"推荐";
    }
    return @"热门";
}

@end

