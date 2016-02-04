//
//  DNFaceView.m
//  dropn
//
//  Created by Wesley St. John on 2/3/16.
//  Copyright © 2016 AppCrackers. All rights reserved.
//

#import "DNFaceView.h"
#import "DNRapper.h"

#define CONSTRAINT_SETTING_WIDTH(VIEW, WIDTH) [NSLayoutConstraint constraintWithItem: VIEW attribute: NSLayoutAttributeWidth relatedBy: NSLayoutRelationEqual toItem:nil attribute: NSLayoutAttributeNotAnAttribute multiplier: 1.0f constant: WIDTH]
#define CONSTRAINT_SETTING_HEIGHT(VIEW, HEIGHT) [NSLayoutConstraint constraintWithItem: VIEW attribute: NSLayoutAttributeHeight relatedBy: NSLayoutRelationEqual toItem:nil attribute: NSLayoutAttributeNotAnAttribute multiplier: 1.0f constant: HEIGHT]

@interface DNFaceView()
@property (nonatomic, strong) IBOutlet UIImageView *imgView;
@end

@implementation DNFaceView

- (instancetype)initWithFrame:(CGRect)frame rapper:(DNRapper *)rapper {
    self = [super initWithFrame:frame];
    if (self) {
        UIImageView *iv = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        iv.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:iv];
        self.imgView = iv;
        
        self.rapper = rapper;
        
        [self addConstraint:CONSTRAINT_SETTING_WIDTH(self, frame.size.width)];
        [self addConstraint:CONSTRAINT_SETTING_HEIGHT(self, frame.size.height)];

    }
    return self;
}

- (void)setRapper:(DNRapper *)rapper {
    _rapper = rapper;
    
    NSString *imageName = [NSString stringWithFormat:@"rapper_%@", rapper.name];
    UIImage *img = [UIImage imageNamed:imageName];
    self.imgView.image = img;
}

@end
