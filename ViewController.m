//
//  ViewController.m
//  BJAFNUtils
//
//  Created by zbj on 16/5/16.
//  Copyright © 2016年 zbj. All rights reserved.
//

#import "ViewController.h"
#import "BJAFNUtils.h"
#import "XiMaLaYa.h"

@interface ViewController ()<UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *arr;

@end

@implementation ViewController

- (NSMutableArray *)arr
{
    if (!_arr) {
        _arr = [NSMutableArray array];
    }
    return _arr;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITableView *table = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 300, 300) style:0];
    [self.view addSubview:table];
    table.dataSource = self;
    
    NSString *url = @"http://mobile.ximalaya.com/mobile/discovery/v1/categories?device=iPhone&picVersion=12&scale=2";
    
    [BJAFNUtils getHttp:url success:^(id responseDic) {
        NSMutableDictionary *dic = responseDic;
        
        _arr = [XiMaLaYa  baseModelByArr:dic[@"list"]];
        [table reloadData];
    } failure:^(NSError *error) {
        
        
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.arr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    XiMaLaYa *model = self.arr[indexPath.row];
    static NSString *reuse = @"reuse";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuse];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:reuse];
    }
    cell.textLabel.text = model.title;
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
