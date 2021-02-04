//
//  XXXClass.m
//  XXXComponent
//
//  Created by Wang Ruichao on 2021/2/4.
//

#import "XXXClass.h"

@implementation XXXClass
+(UIImage *)hh_imageWithColor:(UIColor *)color size:(CGSize)size
{

    CGRect rect = CGRectMake(0.0, 0.0, size.width, size.height);

    UIGraphicsBeginImageContext(size);

    CGContextRef ref = UIGraphicsGetCurrentContext();

    CGContextSetFillColorWithColor(ref, [color CGColor]);

    CGContextFillRect(ref, rect);

    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();

    return image;

}
@end
