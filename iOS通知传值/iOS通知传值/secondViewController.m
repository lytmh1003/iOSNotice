//
//  secondViewController.m
//  iOS通知传值
//
//  Created by 李育腾 on 2022/8/3.
//

#import "secondViewController.h"

@interface secondViewController ()

@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _string = [NSString stringWithFormat:@"Secon界面传过来的字符串"];
    _button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_button setTitle:@"到界面一" forState:UIControlStateNormal];
    [_button addTarget:self action:@selector(pressButton) forControlEvents:UIControlEventTouchUpInside];
    _button.frame = CGRectMake(100, 200, 100, 40);
    [self.view addSubview:_button];
    _dictionary = [[NSMutableDictionary alloc] init];
    [_dictionary setObject:_string forKey:@"key1"];
    self.view.backgroundColor = [UIColor orangeColor];
}
- (void)pressButton {
    // 发送通知并回传数据
    // 注册通知
    [[NSNotificationCenter defaultCenter] postNotificationName:@"inform" object:nil userInfo:_dictionary];
    [self dismissViewControllerAnimated:YES completion:nil];
    
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
