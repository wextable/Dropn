//
//  ViewController.m
//  dropn
//
//  Created by Wesley St. John on 2/3/16.
//  Copyright © 2016 AppCrackers. All rights reserved.
//

#import "ViewController.h"
#import "DNRapper.h"
#import "DNFaceView.h"

@interface ViewController ()
@property (nonatomic, strong) IBOutlet UIScrollView *scrollView;
@property (nonatomic, strong) IBOutlet UIStackView *stackView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    DNRapper *kanye = [[DNRapper alloc] init];
    kanye.name = @"kanye";
    
    
    CGFloat y = 40;
    CGFloat w = self.view.frame.size.width;
    CGFloat h = w;
    
    for (NSInteger i=0; i<5; i++) {
        DNFaceView *faceView = [[DNFaceView alloc] initWithFrame:CGRectMake(0, y, w, h) rapper:kanye];
        [self.stackView addArrangedSubview:faceView];
    }
    
}

@end
