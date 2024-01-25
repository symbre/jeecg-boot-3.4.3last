-- 注意：该页面对应的前台目录为views/cesOrderMain文件夹下
-- 如果你想更改到其他目录，请修改sql中component字段对应的值


INSERT INTO sys_permission(id, parent_id, name, url, component, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_route, is_leaf, keep_alive, hidden, hide_tab, description, status, del_flag, rule_flag, create_by, create_time, update_by, update_time, internal_or_external) 
VALUES ('2023051208001230470', NULL, '商城订单表', '/cesOrderMain/cesOrderMainList', 'cesOrderMain/CesOrderMainList', NULL, NULL, 0, NULL, '1', 0.00, 0, NULL, 1, 1, 0, 0, 0, NULL, '1', 0, 0, 'admin', '2023-05-12 20:00:47', NULL, NULL, 0);

-- 权限控制sql
-- 新增
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('2023051208001230471', '2023051208001230470', '添加商城订单表', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules.demo:ces_order_main:add', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2023-05-12 20:00:47', NULL, NULL, 0, 0, '1', 0);
-- 编辑
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('2023051208001230472', '2023051208001230470', '编辑商城订单表', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules.demo:ces_order_main:edit', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2023-05-12 20:00:47', NULL, NULL, 0, 0, '1', 0);
-- 删除
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('2023051208001230473', '2023051208001230470', '删除商城订单表', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules.demo:ces_order_main:delete', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2023-05-12 20:00:47', NULL, NULL, 0, 0, '1', 0);
-- 批量删除
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('2023051208001230474', '2023051208001230470', '批量删除商城订单表', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules.demo:ces_order_main:deleteBatch', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2023-05-12 20:00:47', NULL, NULL, 0, 0, '1', 0);
-- 导出excel
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('2023051208001240475', '2023051208001230470', '导出excel_商城订单表', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules.demo:ces_order_main:exportXls', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2023-05-12 20:00:47', NULL, NULL, 0, 0, '1', 0);
-- 导入excel
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('2023051208001240476', '2023051208001230470', '导入excel_商城订单表', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules.demo:ces_order_main:importExcel', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2023-05-12 20:00:47', NULL, NULL, 0, 0, '1', 0);