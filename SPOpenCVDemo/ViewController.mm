//
//  ViewController.m
//  SPOpenCVDemo
//
//  Created by 梁山泊 on 2018/9/10.
//  Copyright © 2018年 梁山泊. All rights reserved.
//

#import "ViewController.h"
#import "SPImageViewController.h"

#import "UIImage+OpenCV.h"

@interface ViewController ()

@property (nonatomic, strong) NSArray *dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.dataSource = @[@"DisplayNormalImage",
                        @"DisplayGrayImage",
                        @"DisplayCamera"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row<2) {
        
        UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"cellID" forIndexPath:indexPath];
        cell.textLabel.text = self.dataSource[indexPath.row];
        return cell;
    }else {
        
        UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"CameraCell" forIndexPath:indexPath];
        cell.textLabel.text = self.dataSource[indexPath.row];
        return cell;
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if ([segue.destinationViewController isKindOfClass:[SPImageViewController class]]) {
        // segue.destinationViewController：获取连线时所指的界面（VC）
        SPImageViewController *receive = segue.destinationViewController;
        NSString *title = self.dataSource[self.tableView.indexPathForSelectedRow.row];
        receive.title = title;
        receive.image = [self getImageWithIndex:self.tableView.indexPathForSelectedRow.row];
    }
}


- (UIImage *)getImageWithIndex:(NSInteger )index {
    UIImage *image = [UIImage imageNamed:@"FlamingoBeach"];
    if (!index) {
        Mat m = [UIImage cvMatFromUIImage:image];
        return [UIImage UIImageFromCVMat:m];
    } else {
        Mat m = [UIImage cvMatGrayFromUIImage:image];
        return [UIImage UIImageFromCVMat:m];
    }
    return image;
}

@end
