//
//  UIImage+OpenCV.h
//  SPOpenCVDemo
//
//  Created by 梁山泊 on 2018/9/11.
//  Copyright © 2018年 梁山泊. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <opencv2/opencv.hpp>
using namespace cv;

@interface UIImage (OpenCV)

// UIImage transform to Mat Object
+ (cv::Mat)cvMatFromUIImage:(UIImage *)image ;

// UIImage transform to Gray Mat Object
+ (cv::Mat)cvMatGrayFromUIImage:(UIImage *)image ;

// Mat Object transform to UIImage
+ (UIImage *)UIImageFromCVMat:(cv::Mat)cvMat ;

//+ (UIImage *)UIImage
@end
