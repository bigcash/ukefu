CREATE TABLE `uk_qc_mission` (
  `id` varchar(32) NOT NULL COMMENT '主键ID',
  `name` varchar(50) DEFAULT NULL COMMENT '任务名称（系统分配生成）',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `updatetime` datetime DEFAULT NULL COMMENT '更新时间',
  `orgi` varchar(32) DEFAULT NULL COMMENT '租户ID',
  `assuser` varchar(50) DEFAULT NULL COMMENT '分配执行人',
  `asstime` datetime DEFAULT NULL COMMENT '分配时间',
  `status` varchar(50) DEFAULT NULL COMMENT '状态',
  `filtertype` varchar(32) DEFAULT NULL COMMENT '筛选类型（callevent通话筛选/workorders工单筛选/agentservice会话筛选）',
  `dataid` varchar(50) DEFAULT NULL COMMENT '数据ID（通话记录ID/工单记录ID/会话记录ID）',
  `datakey` text DEFAULT NULL COMMENT '数据（通话（主叫号码）/工单记录（工单标题）/会话记录（访客用户名））',
  `datavalue` text DEFAULT NULL COMMENT '数据（通话（被叫号码）/工单记录（处理人）/会话记录（服务坐席））',
  `templateid` varchar(32) DEFAULT NULL COMMENT '质检模板ID',
  `actid` varchar(32) DEFAULT NULL COMMENT '质检活动ID',
  `formfilterid` varchar(32) DEFAULT NULL COMMENT '质检筛选表单ID',
  `filterid` varchar(32) DEFAULT NULL COMMENT '质检筛选记录ID',
  `taskid` varchar(32) DEFAULT NULL COMMENT '质检任务ID',
  `datastatus` tinyint(4) DEFAULT '0' COMMENT '数据状态',
  `qualitystatus` varchar(20) DEFAULT NULL COMMENT '质检状态',
  `qualitydisorgan` varchar(32) DEFAULT NULL COMMENT '分配的质检部门',
  `qualitydisuser` varchar(32) DEFAULT NULL COMMENT '分配的质检用户',
  `qualityorgan` varchar(32) DEFAULT NULL COMMENT '实际质检部门',
  `qualityuser` varchar(32) DEFAULT NULL COMMENT '实际质检人',
  `qualityscore` int(11) DEFAULT '0' COMMENT '质检得分',
  `qualitytime` datetime DEFAULT NULL COMMENT '质检时间',
  `qualitytype` varchar(20) DEFAULT NULL COMMENT '质检类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='QC质检 - 任务主表';

ALTER TABLE uk_qc_template_item ADD type varchar(32) DEFAULT NULL COMMENT '质检项分类（plus评分/minus扣分/taboo禁忌项）';


INSERT INTO `uk_sysdic` VALUES ('402888816686bff70166876e8c0b0182', '知识配置', 'pub', 'A14_A09_A02', NULL, 'auth', '402888816686bff701668767c78b010e', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:47:40', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, '/apps/ekm/config/index.html', 'webim', '3', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff70166876e48c8017e', '知识库专家', 'pub', 'A14_A09_A01', NULL, 'auth', '402888816686bff701668767c78b010e', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:47:23', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, '/apps/ekm/experts/index.html', 'webim', '3', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff70166876e20d7017a', '已发布知识', 'pub', 'A14_A08_A08', NULL, 'auth', '402888816686bff701668767976b010b', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:47:13', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, '/apps/ekm/overdue/index.html', 'webim', '3', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff70166876df2030176', '知识回收', 'pub', 'A14_A08_A07', NULL, 'auth', '402888816686bff701668767976b010b', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:47:01', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, '/apps/ekm/recycle/index.html', 'webim', '3', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff70166876dc49c0172', '搜索历史', 'pub', 'A14_A08_A06', NULL, 'auth', '402888816686bff701668767976b010b', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:46:49', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, '/apps/ekm/searchcon/index.html', 'webim', '3', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff70166876d91f9016e', '版本管理', 'pub', 'A14_A08_A05', NULL, 'auth', '402888816686bff701668767976b010b', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:46:36', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, '/apps/ekm/ekmversion/index.html', 'webim', '3', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff70166876d64d6016a', '维度管理', 'pub', 'A14_A08_A04', NULL, 'auth', '402888816686bff701668767976b010b', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:46:25', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, '/apps/ekm/dimension/index.html', 'webim', '3', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff70166876d354c0166', '评论管理', 'pub', 'A14_A08_A03', NULL, 'auth', '402888816686bff701668767976b010b', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:46:13', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, '/apps/ekm/comments/index.html', 'webim', '3', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff70166876cf4550162', '审核管理', 'pub', 'A14_A08_A02', NULL, 'auth', '402888816686bff701668767976b010b', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:45:56', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, '/apps/ekm/ekmallaudit/index.html', 'webim', '3', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff70166876cbf42015e', '知识库管理', 'pub', 'A14_A08_A01', NULL, 'auth', '402888816686bff701668767976b010b', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:45:42', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, '/apps/ekm/knowbase/index.html', 'webim', '3', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff70166876c748d015a', '我收到的评论', 'pub', 'A14_A07_A02', NULL, 'auth', '402888816686bff70166876760180108', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:45:23', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, '/apps/ekm/comments/becomments/index.html', 'webim', '3', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff70166876c08aa0156', '我发出的评论', 'pub', 'A14_A07_A01', NULL, 'auth', '402888816686bff70166876760180108', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:44:56', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, '/apps/ekm/comments/mycomments/index.html', 'webim', '3', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff70166876bceb80152', '待审核的知识', 'pub', 'A14_A06_A02', NULL, 'auth', '402888816686bff7016687672ec30105', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:44:41', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, '/apps/ekm/ekmbeaudit/index.html', 'webim', '3', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff70166876ba547014e', '我审核的知识', 'pub', 'A14_A06_A01', NULL, 'auth', '402888816686bff7016687672ec30105', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:44:30', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, '/apps/ekm/ekmaudit/index.html', 'webim', '3', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff70166876b68e2014a', '被收藏的知识', 'pub', 'A14_A05_A02', NULL, 'auth', '402888816686bff701668766d10b0102', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:44:15', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, '/apps/ekm/ekmbecollect/index.html', 'webim', '3', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff70166876b27500147', '我收藏的知识', 'pub', 'A14_A05_A01', NULL, 'auth', '402888816686bff701668766d10b0102', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:43:58', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, '/apps/ekm/ekmcollect/index.html', 'webim', '3', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff70166876af24a0144', '分享给我的知识', 'pub', 'A14_A04_A02', NULL, 'auth', '402888816686bff701668766827600ff', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:43:44', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, '/apps/ekm/ekmbeshare/index.html', 'webim', '3', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff70166876ab5450140', '我分享的知识', 'pub', 'A14_A04_A01', NULL, 'auth', '402888816686bff701668766827600ff', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:43:29', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, '/apps/ekm/ekmshare/index.html', 'webim', '3', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff70166876a7792013c', '浏览历史', 'pub', 'A14_A03_A02', NULL, 'auth', '402888816686bff70166876640a400fc', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:43:13', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, '/apps/ekm/record/view/index.html', 'webim', '3', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff70166876a43b30138', '访客记录', 'pub', 'A14_A03_A01', NULL, 'auth', '402888816686bff70166876640a400fc', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:43:00', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, '/apps/ekm/record/visitors/index.html', 'webim', '3', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff701668769daff0134', '回收站', 'pub', 'A14_A02_A07', NULL, 'auth', '402888816686bff701668765e45c00f9', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:42:33', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, '/apps/ekm/self/recycle/index.html', 'webim', '3', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff701668769ac410130', '已撤回', 'pub', 'A14_A02_A06', NULL, 'auth', '402888816686bff701668765e45c00f9', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:42:21', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, '/apps/ekm/self/downed/index.html', 'webim', '3', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff70166876977eb012c', '被驳回', 'pub', 'A14_A02_A05', NULL, 'auth', '402888816686bff701668765e45c00f9', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:42:08', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, '/apps/ekm/self/rejected/index.html', 'webim', '3', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff70166876942360128', '审核中', 'pub', 'A14_A02_A04', NULL, 'auth', '402888816686bff701668765e45c00f9', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:41:54', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, '/apps/ekm/self/auditing/index.html', 'webim', '3', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff701668768f97b0124', '已发布', 'pub', 'A14_A02_A03', NULL, 'auth', '402888816686bff701668765e45c00f9', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:41:35', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, '/apps/ekm/self/published/index.html', 'webim', '3', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff701668768b2440120', '全部知识', 'pub', 'A14_A02_A02', NULL, 'auth', '402888816686bff701668765e45c00f9', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:41:17', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, '/apps/ekm/self/index.html', 'webim', '3', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff7016687688d83011c', '我的知识库', 'pub', 'A14_A02_A01', NULL, 'auth', '402888816686bff701668765e45c00f9', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:41:08', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, '/apps/ekm/knowbase/mybase/index.html', 'webim', '3', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff70166876852c90118', '知识管理', 'pub', 'A14_A01_A02', NULL, 'auth', '402888816686bff70166876563ed00f6', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:40:53', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, '/apps/ekm/knowledge/add.html', 'webim', '3', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff70166876808a40114', '知识门户', 'pub', 'A14_A01_A01', NULL, 'auth', '402888816686bff70166876563ed00f6', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:40:34', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, '/apps/ekm/index.html', 'webim', '3', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff701668767c78b010e', '业务配置', 'pub', 'A14_A09', NULL, 'auth', '402888816686bff7016687649b8300f1', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:40:17', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, 'javascript:;', 'webim', '2', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff701668767976b010b', '知识管理', 'pub', 'A14_A08', NULL, 'auth', '402888816686bff7016687649b8300f1', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:40:05', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, 'javascript:;', 'webim', '2', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff70166876760180108', '评论库', 'pub', 'A14_A07', NULL, 'auth', '402888816686bff7016687649b8300f1', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:39:50', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, 'javascript:;', 'webim', '2', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff7016687672ec30105', '审核库', 'pub', 'A14_A06', NULL, 'auth', '402888816686bff7016687649b8300f1', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:39:38', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, 'javascript:;', 'webim', '2', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff701668766d10b0102', '收藏库', 'pub', 'A14_A05', NULL, 'auth', '402888816686bff7016687649b8300f1', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:39:14', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, 'javascript:;', 'webim', '2', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff701668766827600ff', '分享库', 'pub', 'A14_A04', NULL, 'auth', '402888816686bff7016687649b8300f1', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:38:54', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, 'javascript:;', 'webim', '2', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff70166876640a400fc', '相关记录', 'pub', 'A14_A03', NULL, 'auth', '402888816686bff7016687649b8300f1', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:38:37', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, 'javascript:;', 'webim', '2', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff701668765e45c00f9', '我的知识', 'pub', 'A14_A02', NULL, 'auth', '402888816686bff7016687649b8300f1', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:38:13', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, 'javascript:;', 'webim', '2', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff70166876563ed00f6', '知识总览', 'pub', 'A14_A01', NULL, 'auth', '402888816686bff7016687649b8300f1', NULL, NULL, '&#x756e646566696e6564;', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:37:40', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, 'javascript:;', 'webim', '2', NULL, 'left');
INSERT INTO `uk_sysdic` VALUES ('402888816686bff7016687649b8300f1', '知识库', 'pub', 'A14', NULL, 'auth', '402888815d2fe37f015d2fe75cc80002', NULL, NULL, '<i class=\"kfont\" style=\"position: relative;\">&#xe62a;</i>', NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-10-18 21:36:49', NULL, 0, 0, '402888815d2fe37f015d2fe75cc80002', 0, 0, '/apps/ekm/index.html', 'webim', '1', NULL, 'left');
 

alter table uk_agentservice modify session varchar(50);
alter table uk_agentuser modify sessionid varchar(50);

alter table uk_blacklist modify sessionid varchar(50);

alter table uk_kbs_topic modify sessionid varchar(50);
alter table uk_userevent modify sessionid varchar(50);
alter table uk_workorders modify sessionid varchar(50);
alter table uk_xiaoe_scene modify sessionid varchar(50);
alter table uk_xiaoe_topic modify sessionid varchar(50);
 
 ALTER TABLE uk_qc_mission ADD agentdata text DEFAULT NULL COMMENT '会话质检（访客用户名）';
