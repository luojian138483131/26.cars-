//
//  ViewController.m
//  26.cars数组
//
//  Created by 罗鲣 on 15/8/2.
//  Copyright (c) 2015年 罗鲣. All rights reserved.
//

#import "ViewController.h"
#import "Cargroup.h"
#import "car.h"
@interface ViewController ()<UITableViewDataSource>
@property (nonatomic, strong) NSArray *cargroups;
@property (nonatomic, strong) UITableView *tableview;
@end

@implementation ViewController

#pragma mark life cycle
- (void)viewDidLoad {
  [super viewDidLoad];
  [self tableview];

  NSLog(@"%@", [self cargroups]);
}

#pragma - UITableViewDelegete



//分组

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
  return self.cargroups.count;
}

//每一组总数

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
  Cargroup *group = self.cargroups[section];
  return group.cars.count;
}
//设置每一个

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  //设置课重用表示符
  static NSString *ID = @"cell";
  //在缓存区查找cell

  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
  //如果没有 实例化
  if (cell == nil) {
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                  reuseIdentifier:ID];
    cell.accessoryType = UITableViewCellAccessoryDetailButton;
  }

  //设置内容
  //图片
  //描述
  Cargroup *group = self.cargroups[indexPath.section];
  car *car = group.cars[indexPath.row];

  cell.imageView.image = [UIImage imageNamed:car.icon];
  cell.textLabel.text = car.name;
  return cell;
}
- (NSString *)tableView:(UITableView *)tableView
titleForHeaderInSection:(NSInteger)section {
  Cargroup *group = self.cargroups[section];
  return group.title;
}

-(NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView{
    
    return [self.cargroups valueForKeyPath:@"title"];
    
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

#pragma - getters and setters

- (NSArray *)cargroups {
  if (_cargroups == nil) {
    _cargroups = [Cargroup carGroups];
  }
  return _cargroups;
}

- (UITableView *)tableview {
  if (_tableview == nil) {
    _tableview = [[UITableView alloc] initWithFrame:self.view.bounds
                                              style:UITableViewStylePlain];
    _tableview.dataSource = self;

    [self.view addSubview:_tableview];
  }
  return _tableview;
}

@end
