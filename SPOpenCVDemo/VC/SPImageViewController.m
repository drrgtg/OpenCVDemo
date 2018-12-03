//
//  SPImageViewController.m
//  SPOpenCVDemo
//
//  Created by 梁山泊 on 2018/9/11.
//  Copyright © 2018年 梁山泊. All rights reserved.
//

#import "SPImageViewController.h"

@interface SPImageViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation SPImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.imageView.image = self.image;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
