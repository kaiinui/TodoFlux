//
//  FLXTodoTableViewCell.m
//  fluxtest
//
//  Created by kaiinui on 2014/10/19.
//  Copyright (c) 2014年 kaiinui. All rights reserved.
//

#import "FLXTodoTableViewCell.h"

@interface FLXTodoTableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation FLXTodoTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

# pragma mark - Public

- (instancetype)initializeWithTodo:(FLXTodo *)todo {
    self.label.text = todo.subject;
    
    return self;
}

@end
