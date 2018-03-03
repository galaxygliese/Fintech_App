//
//  EKMenuCell.m
//  TrackMyTime
//
//  Created by Evgeny Karkan on 17.12.13.
//  Copyright (c) 2013 EvgenyKarkan. All rights reserved.
//

#import "EKMenuCell.h"

static NSString * const kEKTopIcon       = @"timer";
static NSString * const kEKTopTitle      = @"Book|教科書";
static NSString * const kEKMiddleIcon    = @"pie_chart";
static NSString * const kEKMiddleTitle   = @"過去問題";
static NSString * const kEKBottomIcon    = @"settings";
static NSString * const kEKBottomTitle   = @"Tutor|チューター";
static CGFloat    const kEKTitleFontSize = 20.0f;


@implementation EKMenuCell;

- (instancetype)initWithIndexPath:(NSIndexPath *)path
{
    self = [super init];
    
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.icon = [[UIImageView alloc] init];
        [self addSubview:self.icon];
        
        self.title = [[UILabel alloc] init];
        self.title.textColor = [[UIColor blackColor] colorWithAlphaComponent:0.7f];
        self.title.font = [UIFont fontWithName:kEKFont size:kEKTitleFontSize];
        self.title.textAlignment = NSTextAlignmentLeft;
        [self addSubview:self.title];
        
        switch (path.row) {
            case 0:
                self.icon.image = [UIImage imageNamed:kEKTopIcon];
                self.title.text = kEKTopTitle;
                break;
                
            case 1:
                self.icon.image = [UIImage imageNamed:kEKMiddleIcon];
                self.title.text = kEKMiddleTitle;
                break;
                
            case 2:
                self.icon.image = [UIImage imageNamed:kEKBottomIcon];
                self.title.text = kEKBottomTitle;
                break;
                
            default:
                break;
        }
    }
    return self;
}

- (void)layoutSubviews
{
	[super layoutSubviews];
    
    self.icon.frame  = CGRectMake(30.0f, 20.0f, 20.0f, 20.0f);
    self.title.frame = CGRectMake(65.0f, 0.0f, self.frame.size.width, 60.0f);
}

@end
