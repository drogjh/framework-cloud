CREATE TABLE IF NOT EXISTS menus (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `url` varchar(200) NOT NULL DEFAULT '' COMMENT '菜单URL',
  `perms` varchar(500) NOT NULL DEFAULT '' COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `order_num` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `time_create` datetime NOT NULL COMMENT '创建时间',
  `time_update` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单管理';


CREATE TABLE IF NOT EXISTS role_menus (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';


