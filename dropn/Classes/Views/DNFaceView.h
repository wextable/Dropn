//
//  DNFaceView.h
//  dropn
//
//  Created by Wesley St. John on 2/3/16.
//  Copyright © 2016 AppCrackers. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DNRapper;

@interface DNFaceView : UIView

@property (nonatomic, strong) DNRapper *rapper;

- (instancetype)initWithFrame:(CGRect)frame rapper:(DNRapper *)rapper;

@end
