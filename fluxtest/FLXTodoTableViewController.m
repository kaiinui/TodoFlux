//
//  ViewController.m
//  fluxtest
//
//  Created by kaiinui on 2014/10/19.
//  Copyright (c) 2014年 kaiinui. All rights reserved.
//

#import "FLXTodoTableViewController.h"

#import "FLXTodoTableViewCell.h"

#import "FLXTodoAction.h"

#import "FLXStoreService.h"
#import "FLXTodoStore.h"
#import "FLXTodo.h"
#import "FLXConst.h"

static NSString *kTodoTableViewCellIdentifier = @"TodoTableViewCell";

@interface FLXTodoTableViewController ()

@property (nonatomic, strong) FLXTodoAction *todoAction;

@property (nonatomic, strong) NSMutableArray /* <FLXTodo *> */ *todoCollection;

@end

@implementation FLXTodoTableViewController

- (void)viewDidLoad {
    [self initialize];
    
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

# pragma mark - Initialization

- (void)initialize {
    self.todoAction = [[FLXTodoAction alloc] init];
    self.todoCollection = [[NSMutableArray alloc] init];
    
    [self bindTodoCollection];
}

- (void)bindTodoCollection {
    FLXTodoStore *todoStore = (FLXTodoStore *)[[FLXStoreService service] storeForKey:@"FLXTodoStore"];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(todoCollectionDidInsertItems:) name:kFLXCollectionDidInsertItemsEventKey object:todoStore.todoCollection];
}

- (void)todoCollectionDidInsertItems:(NSNotification *)notification {
    NSArray *insertedItems = notification.userInfo[kFLXCollectionDidInsertItemsEventInsertedItemsKey];
    
    [self.todoCollection addObjectsFromArray:insertedItems];
    [self.tableView reloadData];
}

# pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.todoCollection.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FLXTodoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kTodoTableViewCellIdentifier];
    return [self initializeCell:cell forIndexPath:indexPath];
}

# pragma mark - Helpers (Cell)

- (UITableViewCell *)initializeCell:(FLXTodoTableViewCell *)cell forIndexPath:(NSIndexPath *)indexPath {
    FLXTodo *todo = self.todoCollection[indexPath.row];
    return [cell initializeWithTodo:todo];
}

# pragma mark - IBAction

- (IBAction)didPressAddTodoButton:(id)sender {
    [self.todoAction addTodo:@"hoge"];
}

@end
