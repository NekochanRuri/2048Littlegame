/*
 Navicat Premium Data Transfer

 Source Server         : 1
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : user

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 04/06/2022 19:48:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `score` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `getName`(`name` ASC) USING BTREE,
  INDEX `score`(`score` ASC, `name` ASC) USING BTREE,
  CONSTRAINT `getName` FOREIGN KEY (`name`) REFERENCES `user` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 114 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES (1, 'Admin', 0);
INSERT INTO `record` VALUES (69, 'Homelander', 0);
INSERT INTO `record` VALUES (71, 'Homelander', 0);
INSERT INTO `record` VALUES (108, 'Homelander', 0);
INSERT INTO `record` VALUES (111, 'Homelander', 0);
INSERT INTO `record` VALUES (112, 'Homelander', 0);
INSERT INTO `record` VALUES (2, 'Homelander', 4);
INSERT INTO `record` VALUES (3, 'Homelander', 8);
INSERT INTO `record` VALUES (4, 'Homelander', 12);
INSERT INTO `record` VALUES (5, 'Homelander', 24);
INSERT INTO `record` VALUES (6, 'Homelander', 28);
INSERT INTO `record` VALUES (7, 'Homelander', 36);
INSERT INTO `record` VALUES (8, 'Homelander', 40);
INSERT INTO `record` VALUES (9, 'Homelander', 48);
INSERT INTO `record` VALUES (10, 'Homelander', 72);
INSERT INTO `record` VALUES (11, 'Homelander', 88);
INSERT INTO `record` VALUES (12, 'Homelander', 124);
INSERT INTO `record` VALUES (13, 'Homelander', 132);
INSERT INTO `record` VALUES (14, 'Homelander', 136);
INSERT INTO `record` VALUES (15, 'Homelander', 140);
INSERT INTO `record` VALUES (16, 'Homelander', 144);
INSERT INTO `record` VALUES (17, 'Homelander', 156);
INSERT INTO `record` VALUES (18, 'Homelander', 164);
INSERT INTO `record` VALUES (70, 'Homelander', 176);
INSERT INTO `record` VALUES (19, 'Homelander', 180);
INSERT INTO `record` VALUES (20, 'Homelander', 200);
INSERT INTO `record` VALUES (21, 'Homelander', 228);
INSERT INTO `record` VALUES (22, 'Homelander', 232);
INSERT INTO `record` VALUES (23, 'Homelander', 240);
INSERT INTO `record` VALUES (24, 'Homelander', 280);
INSERT INTO `record` VALUES (25, 'Homelander', 296);
INSERT INTO `record` VALUES (26, 'Homelander', 300);
INSERT INTO `record` VALUES (27, 'Homelander', 304);
INSERT INTO `record` VALUES (28, 'Homelander', 312);
INSERT INTO `record` VALUES (29, 'Homelander', 320);
INSERT INTO `record` VALUES (30, 'Homelander', 324);
INSERT INTO `record` VALUES (31, 'Homelander', 340);
INSERT INTO `record` VALUES (32, 'Homelander', 344);
INSERT INTO `record` VALUES (33, 'Homelander', 352);
INSERT INTO `record` VALUES (34, 'Homelander', 360);
INSERT INTO `record` VALUES (35, 'Homelander', 364);
INSERT INTO `record` VALUES (36, 'Homelander', 376);
INSERT INTO `record` VALUES (37, 'Homelander', 408);
INSERT INTO `record` VALUES (38, 'Homelander', 420);
INSERT INTO `record` VALUES (39, 'Homelander', 428);
INSERT INTO `record` VALUES (40, 'Homelander', 432);
INSERT INTO `record` VALUES (41, 'Homelander', 444);
INSERT INTO `record` VALUES (42, 'Homelander', 460);
INSERT INTO `record` VALUES (43, 'Homelander', 464);
INSERT INTO `record` VALUES (44, 'Homelander', 468);
INSERT INTO `record` VALUES (72, 'Homelander', 468);
INSERT INTO `record` VALUES (73, 'Homelander', 468);
INSERT INTO `record` VALUES (74, 'Homelander', 468);
INSERT INTO `record` VALUES (75, 'Homelander', 468);
INSERT INTO `record` VALUES (76, 'Homelander', 468);
INSERT INTO `record` VALUES (77, 'Homelander', 468);
INSERT INTO `record` VALUES (78, 'Homelander', 468);
INSERT INTO `record` VALUES (79, 'Homelander', 468);
INSERT INTO `record` VALUES (80, 'Homelander', 468);
INSERT INTO `record` VALUES (81, 'Homelander', 468);
INSERT INTO `record` VALUES (82, 'Homelander', 468);
INSERT INTO `record` VALUES (83, 'Homelander', 468);
INSERT INTO `record` VALUES (84, 'Homelander', 468);
INSERT INTO `record` VALUES (85, 'Homelander', 468);
INSERT INTO `record` VALUES (86, 'Homelander', 468);
INSERT INTO `record` VALUES (87, 'Homelander', 468);
INSERT INTO `record` VALUES (88, 'Homelander', 468);
INSERT INTO `record` VALUES (89, 'Homelander', 468);
INSERT INTO `record` VALUES (90, 'Homelander', 468);
INSERT INTO `record` VALUES (91, 'Homelander', 468);
INSERT INTO `record` VALUES (92, 'Homelander', 468);
INSERT INTO `record` VALUES (93, 'Homelander', 468);
INSERT INTO `record` VALUES (94, 'Homelander', 468);
INSERT INTO `record` VALUES (45, 'Homelander', 472);
INSERT INTO `record` VALUES (46, 'Homelander', 480);
INSERT INTO `record` VALUES (47, 'Homelander', 500);
INSERT INTO `record` VALUES (48, 'Homelander', 512);
INSERT INTO `record` VALUES (66, 'Homelander', 520);
INSERT INTO `record` VALUES (49, 'Homelander', 540);
INSERT INTO `record` VALUES (50, 'Homelander', 636);
INSERT INTO `record` VALUES (51, 'Homelander', 644);
INSERT INTO `record` VALUES (52, 'Homelander', 660);
INSERT INTO `record` VALUES (53, 'Homelander', 664);
INSERT INTO `record` VALUES (54, 'Homelander', 672);
INSERT INTO `record` VALUES (55, 'Homelander', 676);
INSERT INTO `record` VALUES (56, 'Homelander', 684);
INSERT INTO `record` VALUES (57, 'Homelander', 688);
INSERT INTO `record` VALUES (58, 'Homelander', 696);
INSERT INTO `record` VALUES (59, 'Homelander', 700);
INSERT INTO `record` VALUES (60, 'Homelander', 728);
INSERT INTO `record` VALUES (61, 'Homelander', 732);
INSERT INTO `record` VALUES (62, 'Homelander', 740);
INSERT INTO `record` VALUES (64, 'Homelander', 760);
INSERT INTO `record` VALUES (63, 'Homelander', 776);
INSERT INTO `record` VALUES (67, 'Homelander', 852);
INSERT INTO `record` VALUES (113, 'Homelander', 904);
INSERT INTO `record` VALUES (109, 'Homelander', 1308);
INSERT INTO `record` VALUES (68, 'Homelander', 1504);
INSERT INTO `record` VALUES (110, 'Homelander', 1564);
INSERT INTO `record` VALUES (65, 'Homelander', 1592);
INSERT INTO `record` VALUES (95, 'Homelander', 1664);
INSERT INTO `record` VALUES (96, 'Homelander', 1664);
INSERT INTO `record` VALUES (97, 'Homelander', 1664);
INSERT INTO `record` VALUES (98, 'Homelander', 1664);
INSERT INTO `record` VALUES (99, 'Homelander', 1664);
INSERT INTO `record` VALUES (100, 'Homelander', 1664);
INSERT INTO `record` VALUES (101, 'Homelander', 1664);
INSERT INTO `record` VALUES (102, 'Homelander', 1664);
INSERT INTO `record` VALUES (103, 'Homelander', 1664);
INSERT INTO `record` VALUES (104, 'Homelander', 1664);
INSERT INTO `record` VALUES (105, 'Homelander', 1664);
INSERT INTO `record` VALUES (106, 'Homelander', 1664);
INSERT INTO `record` VALUES (107, 'Homelander', 1664);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `maxscore` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'Admin', 'Admin', 0);
INSERT INTO `user` VALUES (2, 'name=Homelander&password=31233', '31233', 0);
INSERT INTO `user` VALUES (3, 'Homelander', 'asdasd', 1564);
INSERT INTO `user` VALUES (4, 'Zilong', '啊实打实的', 0);
INSERT INTO `user` VALUES (5, 'zilongchen', '123123', 0);
INSERT INTO `user` VALUES (6, 'asjkdasd', 'asdasd', 0);
INSERT INTO `user` VALUES (7, 'Taka', 'asdasd', 0);
INSERT INTO `user` VALUES (8, 'Katana', 'asdasd', 0);
INSERT INTO `user` VALUES (9, 'Neko', 'asdasd', 0);
INSERT INTO `user` VALUES (10, 'chenzilong', 'asdasd', 0);

SET FOREIGN_KEY_CHECKS = 1;
