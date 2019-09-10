//
//  YXb.m
//  YXArsenal
//
//  Created by flwhrt on 2018/11/1.
//  Copyright © 2018年 flwhrt. All rights reserved.
//


#import "YXVerificationCodeButton.h"

@interface YXVerificationCodeButton ()

@property (nonatomic,assign) NSInteger time;

@end

@implementation YXVerificationCodeButton

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setupUI];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self setupUI];
    
}

- (void)setupUI {
    [self setTitle:@"发送验证码" forState:UIControlStateNormal];
    [self addTarget:self action:@selector(didTouchButton) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didTouchButton {
    self.enabled = NO;
    [self openCountdown];
}

-(void)openCountdown{
    
    
    self.time = 59; //倒计时时间
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
    
    dispatch_source_set_timer(_timer,dispatch_walltime(NULL, 0),1.0*NSEC_PER_SEC, 0); //每秒执行
    
    __weak typeof(self) weakSelf = self;
    dispatch_source_set_event_handler(_timer, ^{
        
        if(time <= 0){ //倒计时结束，关闭
            
            dispatch_source_cancel(_timer);
            dispatch_async(dispatch_get_main_queue(), ^{
                
                //设置按钮的样式
                [weakSelf setTitle:@"重新发送" forState:UIControlStateNormal];
                weakSelf.layer.borderColor = [self titleColorForState:UIControlStateNormal].CGColor;
                weakSelf.enabled = YES;
            });
            
        } else {
            
            int seconds = weakSelf.time % 60;
            dispatch_async(dispatch_get_main_queue(), ^{
                
                //设置按钮显示读秒效果
                [weakSelf setTitle:[NSString stringWithFormat:@"重新发送(%.2d)", seconds] forState:UIControlStateDisabled];
                weakSelf.layer.borderColor = [self titleColorForState:UIControlStateDisabled].CGColor;
            });
            weakSelf.time--;
        }
    });
    dispatch_resume(_timer);
}

- (void)setEnabled:(BOOL)enabled {
    if ((enabled && self.time <= 0) || !enabled) {
        [super setEnabled:enabled];
    }
}

@end
