//
//  ViewController.m
//  iOS通知传值
//
//  Created by 李育腾 on 2022/8/3.
//

#import "ViewController.h"
#import "secondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _label = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 250, 40)];
    [self.view addSubview:_label];
    
    _button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_button setTitle:@"到界面2" forState:UIControlStateNormal];
    _button.frame = CGRectMake(100, 300,  100, 40);
    [_button addTarget:self action:@selector(pressButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_button];
    
    // 注册观察者，用于接受界面二的通知,接收通知的名称必须和发送通知的名称保持一致才能收到
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(receiveNoticed:) name:@"inform" object:nil];
    
}
- (void)pressButton {
    secondViewController* secondView = [[secondViewController alloc] init];
    
    [self presentViewController:secondView animated:YES completion:nil];
}
// 观察者接受函数，
// 这里接受传值并赋值给当前页面的label
- (void)receiveNoticed:(NSNotification*)sender {
    _label.text = sender.userInfo[@"key1"];
}

// 移除通知
- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
}

@end
