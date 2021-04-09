/*
 Navicat Premium Data Transfer

 Source Server         : videos-dev
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : video-dev

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 09/04/2021 15:48:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bgm
-- ----------------------------
DROP TABLE IF EXISTS `bgm`;
CREATE TABLE `bgm`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '播放地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bgm
-- ----------------------------
INSERT INTO `bgm` VALUES ('180425CFA4RB6T0H', '邓紫棋', '超能力', '/bgm/1.mp3');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `father_comment_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `to_user_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `video_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '视频id',
  `from_user_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '留言者，评论的用户id',
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '评论内容',
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '课程评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('135240CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈1', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('18034CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈2', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('1803F50CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈3', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('18052150CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈4', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('180522F50626894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈5', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('180522F50C126894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈6', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('180522F50CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈7', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('180522F5346894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈8', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('180522F54CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈9', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('180523F533Y0837C', NULL, NULL, '180510CD0A6K3SRP', '180425CFA4RB6T0H', 'dwdawdwa', '2018-05-23 19:52:19');
INSERT INTO `comments` VALUES ('180523FATAR6C2Y8', '180523FB1BYS43HH', '180425CFA4RB6T0H', '180522FB4BZ1N9P0', '180518CKMAAM5TXP', '回复评论', '2018-05-23 20:09:30');
INSERT INTO `comments` VALUES ('180523FB1BYS43HH', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', '野马~~', '2018-05-23 20:10:09');
INSERT INTO `comments` VALUES ('180523FC0MKCTS3C', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', 'dwdw', '2018-05-23 20:13:04');
INSERT INTO `comments` VALUES ('180523FCZM2CTCZC', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', 'dwqdwqdqw', '2018-05-23 20:15:58');
INSERT INTO `comments` VALUES ('180523FD1H5HG9P0', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', '1fewdew', '2018-05-23 20:16:10');
INSERT INTO `comments` VALUES ('180523FDBT3S3C00', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', '123', '2018-05-23 20:17:16');
INSERT INTO `comments` VALUES ('180523FDFX4HS5P0', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', '43trgtew', '2018-05-23 20:17:36');
INSERT INTO `comments` VALUES ('180523H79060HNHH', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', '哈多好玩聊哦', '2018-05-23 22:47:06');
INSERT INTO `comments` VALUES ('180523HATXR841KP', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', '大家诶哦大家欧文', '2018-05-23 22:57:42');
INSERT INTO `comments` VALUES ('180523K2DG3SGAA8', NULL, NULL, '180522FB4BZ1N9P0', '180518CKMAAM5TXP', 'dwdw', '2018-05-23 23:56:38');
INSERT INTO `comments` VALUES ('180523K2YRF1WNXP', NULL, NULL, '180522FB4BZ1N9P0', '180518CKMAAM5TXP', 'ddew', '2018-05-23 23:58:03');
INSERT INTO `comments` VALUES ('180523K3FH1WT7R4', NULL, NULL, '180522FB4BZ1N9P0', '180518CKMAAM5TXP', 'tgergre', '2018-05-23 23:59:45');
INSERT INTO `comments` VALUES ('1805240G4G19R0PH', '180523HATXR841KP', '180425CFA4RB6T0H', '180522FB4BZ1N9P0', '180518CKMAAM5TXP', '回复测试，final', '2018-05-24 00:45:31');
INSERT INTO `comments` VALUES ('18055W46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈11', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('180565016894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈22', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('1805650CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈33', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('1805twW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈44', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('280522F50CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈55', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('qq1805twW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈66', '2018-05-22 19:52:02');

-- ----------------------------
-- Table structure for search_records
-- ----------------------------
DROP TABLE IF EXISTS `search_records`;
CREATE TABLE `search_records`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '搜索的内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '视频搜索的记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of search_records
-- ----------------------------
INSERT INTO `search_records` VALUES ('1', '慕课网');
INSERT INTO `search_records` VALUES ('18051309YBCMHYRP', '风景');
INSERT INTO `search_records` VALUES ('1805130DAXX58ARP', '风景');
INSERT INTO `search_records` VALUES ('1805130DMG6P0ZC0', '风景');
INSERT INTO `search_records` VALUES ('1805130FNGHD3B0H', '慕课网');
INSERT INTO `search_records` VALUES ('180513C94W152Z7C', 'dwqdwq');
INSERT INTO `search_records` VALUES ('180513DXNT7SY04H', '风景');
INSERT INTO `search_records` VALUES ('2', '慕课网');
INSERT INTO `search_records` VALUES ('3', '慕课网');
INSERT INTO `search_records` VALUES ('4', '慕课网');
INSERT INTO `search_records` VALUES ('5', '慕课');
INSERT INTO `search_records` VALUES ('6', '慕课');
INSERT INTO `search_records` VALUES ('7', 'zookeeper');
INSERT INTO `search_records` VALUES ('8', 'zookeeper');
INSERT INTO `search_records` VALUES ('9', 'zookeeper');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `face_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '我的头像，如果没有默认给一张',
  `nickname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '昵称',
  `fans_counts` int(11) NULL DEFAULT 0 COMMENT '我的粉丝数量',
  `follow_counts` int(11) NULL DEFAULT 0 COMMENT '我关注的人总数',
  `receive_like_counts` int(11) NULL DEFAULT 0 COMMENT '我接受到的赞美/收藏 的数量',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1001', 'test-imooc-1111', '9999', '/path000999', '慕课网好牛十分牛~', 123456, 111, 222);
INSERT INTO `users` VALUES ('180425B0B3N6B25P', 'imooc11', 'wzNncBURtPYCDsYd7TUgWQ==', NULL, 'imooc', 0, 0, 0);
INSERT INTO `users` VALUES ('180425BNSR1CG0H0', 'abc', '4QrcOUm6Wau+VuBX8g+IPg==', NULL, 'abc', 0, 0, 0);
INSERT INTO `users` VALUES ('180425CFA4RB6T0H', 'imooc', 'kU8h64TG/bK2Y91vRT9lyg==', '/180425CFA4RB6T0H/face/ckNtcBrz4y7Yccb92416f4754e6d72a5a38950b3869d.jpg', 'Jisoo', 2500, 2, 10000);
INSERT INTO `users` VALUES ('180426F4D35R04X4', 'aaa', 'R7zlx09Yn0hn29V+nKn4CA==', NULL, 'aaa', 0, 0, 0);
INSERT INTO `users` VALUES ('180426F55CZPA9YW', 'aaaa', 'R7zlx09Yn0hn29V+nKn4CA==', NULL, 'aaaa', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GA3SBB4DP0', '1001', 'bfw1xHdW6WLvBV0QSfH47A==', NULL, '1001', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GAK87AB0X4', '10401', 'bfw1xHdW6WLvBV0QSfH47A==', NULL, '10401', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GAWCC17KWH', '104701', 'bfw1xHdW6WLvBV0QSfH47A==', NULL, '104701', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GBDFKDG5D4', '10re4701', 'bfw1xHdW6WLvBV0QSfH47A==', NULL, '10re4701', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GBKN0YRFRP', '10rwee4701', 'bfw1xHdW6WLvBV0QSfH47A==', NULL, '10rwee4701', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GH49XRZHX4', '390213890', 'H9V/tnfgt6nniqH5bDZ0hQ==', NULL, '390213890', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GHH12WXPZC', '390ewqewq213890', 'H9V/tnfgt6nniqH5bDZ0hQ==', NULL, '390ewqewq213890', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GHHPZ7NTC0', '390ewqewq21ewqe3890', 'H9V/tnfgt6nniqH5bDZ0hQ==', NULL, '390ewqewq21ewqe3890', 0, 0, 0);
INSERT INTO `users` VALUES ('180426H0GWP0C3HH', 'jdiowqjodij', 'wEmTz54sy+StEzB+TrtGSQ==', NULL, 'jdiowqjodij', 0, 0, 0);
INSERT INTO `users` VALUES ('180518CHS7SXMCX4', 'aaaaa', 'WU+AOzgKQTlu1j3KOVA1Qg==', NULL, 'aaaaa', 0, 0, 0);
INSERT INTO `users` VALUES ('180518CKMAAM5TXP', 'abc123', '6ZoYxCjLONXyYIU2eJIuAw==', '/180518CKMAAM5TXP/face/wxa2049f5aead89372.o6zAJs5sm5bPFcTzKXp_5wXsWuso.Q27j7DxNKKk07adf242959818c45238b8f11b64cc255.png', 'abc123', 0, 0, 1);
INSERT INTO `users` VALUES ('210309B66G5D1R8H', 'videosuser', '4QrcOUm6Wau+VuBX8g+IPg==', NULL, 'videosuser', 0, 0, 0);
INSERT INTO `users` VALUES ('210309B6R1K82AK4', 'cyj', '4QrcOUm6Wau+VuBX8g+IPg==', NULL, 'cyj', 0, 0, 0);
INSERT INTO `users` VALUES ('210309C6MZ6KP18H', 'jie', 'ICy5YqxZB1uWSwcVLSNLcA==', NULL, 'jie', 0, 0, 0);
INSERT INTO `users` VALUES ('210309CBRFF9D6K4', '123', 'ICy5YqxZB1uWSwcVLSNLcA==', NULL, '123', 0, 0, 0);
INSERT INTO `users` VALUES ('210331BPF4R48RGC', '?', 'eBVpbsvxyW5olLd5RW0zDg==', NULL, '?', 0, 0, 0);
INSERT INTO `users` VALUES ('210331BT7DNW0S5P', '??', 'eBVpbsvxyW5olLd5RW0zDg==', NULL, '??', 0, 0, 0);
INSERT INTO `users` VALUES ('210331BZMPNFA1D4', 'wsx', 'ICy5YqxZB1uWSwcVLSNLcA==', NULL, 'wsx', 0, 0, 0);
INSERT INTO `users` VALUES ('210331C08CF61968', 'lqq', 'YPisCBjQUKKS/6lhUoDlWg==', '/210331C08CF61968/face/Nxza8hbc7Nznccb92416f4754e6d72a5a38950b3869d.jpg', 'lqq', 0, 0, 0);

-- ----------------------------
-- Table structure for users_fans
-- ----------------------------
DROP TABLE IF EXISTS `users_fans`;
CREATE TABLE `users_fans`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户',
  `fan_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '粉丝',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`, `fan_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户粉丝关联关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users_like_videos
-- ----------------------------
DROP TABLE IF EXISTS `users_like_videos`;
CREATE TABLE `users_like_videos`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户',
  `video_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '视频',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_video_rel`(`user_id`, `video_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户喜欢的/赞过的视频' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_like_videos
-- ----------------------------
INSERT INTO `users_like_videos` VALUES ('180520HBA054FPPH', '180518CKMAAM5TXP', '180510CCX05TABHH');
INSERT INTO `users_like_videos` VALUES ('180520HSBDW6M0SW', '180518CKMAAM5TXP', '180510CD0A6K3SRP');

-- ----------------------------
-- Table structure for users_report
-- ----------------------------
DROP TABLE IF EXISTS `users_report`;
CREATE TABLE `users_report`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deal_user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '被举报用户id',
  `deal_video_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类型标题，让用户选择，详情见 枚举',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内容',
  `userid` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '举报人的id',
  `create_date` datetime(0) NOT NULL COMMENT '举报时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '举报用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_report
-- ----------------------------
INSERT INTO `users_report` VALUES ('180521FZ501ABDYW', '180425CFA4RB6T0H', '180510CD0A6K3SRP', '引人不适', '不合时宜的视频', '180518CKMAAM5TXP', '2018-05-21 20:58:35');
INSERT INTO `users_report` VALUES ('180521FZK44ZRWX4', '180425CFA4RB6T0H', '180510CD0A6K3SRP', '引人不适', '不合时宜的视频', '180518CKMAAM5TXP', '2018-05-21 20:59:53');
INSERT INTO `users_report` VALUES ('180521FZR1TYRTXP', '180425CFA4RB6T0H', '180510CD0A6K3SRP', '辱骂谩骂', 't4t43', '180518CKMAAM5TXP', '2018-05-21 21:00:18');

-- ----------------------------
-- Table structure for videos
-- ----------------------------
DROP TABLE IF EXISTS `videos`;
CREATE TABLE `videos`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '发布者id',
  `audio_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户使用音频的信息',
  `video_desc` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '视频描述',
  `video_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '视频存放的路径',
  `video_seconds` float(6, 2) NULL DEFAULT NULL COMMENT '视频秒数',
  `video_width` int(6) NULL DEFAULT NULL COMMENT '视频宽度',
  `video_height` int(6) NULL DEFAULT NULL COMMENT '视频高度',
  `cover_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '视频封面图',
  `like_counts` bigint(20) NOT NULL DEFAULT 0 COMMENT '喜欢/赞美的数量',
  `status` int(1) NOT NULL COMMENT '视频状态：\r\n1、发布成功\r\n2、禁止播放，管理员操作',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '视频信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of videos
-- ----------------------------
INSERT INTO `videos` VALUES ('2104078822DCBMFW', '180425CFA4RB6T0H', '180425CFA4RB6T0H', '', '/180425CFA4RB6T0H/video/10861b72-91a0-4988-9cb7-79f54bee6a9b.mp4', 7.47, 540, 960, '/180425CFA4RB6T0H/video/jisoo.jpg', 0, 1, '2021-04-07 11:36:48');
INSERT INTO `videos` VALUES ('210407C5W9G30DAW', '180425CFA4RB6T0H', '180425CFA4RB6T0H', '', '/180425CFA4RB6T0H/video/b01e174b-6ce4-46a5-9d62-4fe7469f0695.mp4', 7.47, 540, 960, '/180425CFA4RB6T0H/video/2g7siwAshLFX566f03cadb60c98a5856105fca9352e2.jpg', 0, 1, '2021-04-07 17:06:28');
INSERT INTO `videos` VALUES ('21040871FX0KXA5P', '180425CFA4RB6T0H', '180425CFA4RB6T0H', '', '/180425CFA4RB6T0H/video/b0bd6346-aec5-43fe-b086-c24fc587711c.mp4', 8.00, 540, 960, '/180425CFA4RB6T0H/video/tmp_55766450c389eaba03ea4144875cdcc3.jpg', 0, 1, '2021-04-08 09:53:05');

SET FOREIGN_KEY_CHECKS = 1;
