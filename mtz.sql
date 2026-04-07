/*
 Navicat Premium Dump SQL

 Source Server         : Tia-MTZ
 Source Server Type    : SQLite
 Source Server Version : 3045000 (3.45.0)
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3045000 (3.45.0)
 File Encoding         : 65001

 Date: 07/04/2026 10:44:03
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for account_emailaddress
-- ----------------------------
DROP TABLE IF EXISTS "account_emailaddress";
CREATE TABLE "account_emailaddress" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "verified" bool NOT NULL, "primary" bool NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "email" varchar(254) NOT NULL);

-- ----------------------------
-- Records of account_emailaddress
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for account_emailconfirmation
-- ----------------------------
DROP TABLE IF EXISTS "account_emailconfirmation";
CREATE TABLE "account_emailconfirmation" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "created" datetime NOT NULL, "sent" datetime NULL, "key" varchar(64) NOT NULL UNIQUE, "email_address_id" integer NOT NULL REFERENCES "account_emailaddress" ("id") DEFERRABLE INITIALLY DEFERRED);

-- ----------------------------
-- Records of account_emailconfirmation
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS "auth_group";
CREATE TABLE "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);

-- ----------------------------
-- Records of auth_group
-- ----------------------------
BEGIN;
INSERT INTO "auth_group" ("id", "name") VALUES (1, 'MTZ');
INSERT INTO "auth_group" ("id", "name") VALUES (2, 'commercial');
INSERT INTO "auth_group" ("id", "name") VALUES (3, 'admin');
INSERT INTO "auth_group" ("id", "name") VALUES (4, 'manager');
COMMIT;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS "auth_group_permissions";
CREATE TABLE "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
BEGIN;
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (1, 1, 1);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (2, 1, 2);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (3, 1, 3);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (4, 1, 4);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (5, 1, 5);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (6, 1, 6);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (7, 1, 7);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (8, 1, 8);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (9, 1, 9);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (10, 1, 10);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (11, 1, 11);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (12, 1, 12);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (13, 1, 13);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (14, 1, 14);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (15, 1, 15);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (16, 1, 16);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (17, 1, 17);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (18, 1, 18);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (19, 1, 19);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (20, 1, 20);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (21, 1, 21);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (22, 1, 22);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (23, 1, 23);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (24, 1, 24);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (25, 1, 25);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (26, 1, 26);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (27, 1, 27);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (28, 1, 28);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (29, 1, 29);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (30, 1, 30);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (31, 1, 31);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (32, 1, 32);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (33, 1, 33);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (34, 1, 34);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (35, 1, 35);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (36, 1, 36);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (37, 1, 37);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (38, 1, 38);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (39, 1, 39);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (40, 1, 40);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (41, 1, 41);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (42, 1, 42);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (43, 1, 43);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (44, 1, 44);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (45, 1, 45);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (46, 1, 46);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (47, 1, 47);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (48, 1, 48);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (49, 1, 49);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (50, 1, 50);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (51, 1, 51);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (52, 1, 52);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (57, 1, 57);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (58, 1, 58);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (59, 1, 59);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (60, 1, 60);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (61, 1, 61);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (62, 1, 62);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (63, 1, 63);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (64, 1, 64);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (65, 1, 65);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (66, 1, 66);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (67, 1, 67);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (68, 1, 68);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (69, 1, 69);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (70, 1, 70);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (71, 1, 71);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (72, 1, 72);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (73, 1, 73);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (74, 1, 74);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (75, 1, 75);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (76, 1, 76);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (77, 1, 77);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (78, 1, 78);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (79, 1, 79);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (80, 1, 80);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (81, 1, 81);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (82, 1, 82);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (83, 1, 83);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (84, 1, 84);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (85, 1, 85);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (86, 1, 86);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (87, 1, 87);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (88, 1, 88);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (89, 1, 89);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (90, 1, 90);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (91, 1, 91);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (92, 1, 92);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (93, 1, 93);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (94, 1, 94);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (95, 1, 95);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (96, 1, 96);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (97, 1, 97);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (98, 1, 98);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (99, 1, 99);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (100, 1, 100);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (101, 1, 101);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (102, 1, 102);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (103, 1, 103);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (104, 1, 104);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (105, 1, 105);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (106, 1, 106);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (107, 1, 107);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (108, 1, 108);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (109, 2, 33);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (110, 2, 34);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (111, 2, 35);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (112, 2, 36);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (113, 2, 73);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (114, 2, 74);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (115, 2, 75);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (116, 2, 76);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (117, 2, 77);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (118, 2, 78);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (119, 2, 79);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (120, 2, 80);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (121, 3, 1);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (122, 3, 2);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (123, 3, 3);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (124, 3, 4);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (125, 3, 5);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (126, 3, 6);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (127, 3, 7);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (128, 3, 8);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (129, 3, 9);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (130, 3, 10);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (131, 3, 11);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (132, 3, 12);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (133, 3, 13);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (134, 3, 14);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (135, 3, 15);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (136, 3, 16);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (137, 3, 17);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (138, 3, 18);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (139, 3, 19);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (140, 3, 20);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (141, 3, 21);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (142, 3, 22);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (143, 3, 23);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (144, 3, 24);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (145, 3, 25);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (146, 3, 26);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (147, 3, 27);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (148, 3, 28);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (149, 3, 29);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (150, 3, 30);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (151, 3, 31);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (152, 3, 32);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (153, 3, 33);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (154, 3, 34);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (155, 3, 35);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (156, 3, 36);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (157, 3, 37);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (158, 3, 38);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (159, 3, 39);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (160, 3, 40);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (161, 3, 41);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (162, 3, 42);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (163, 3, 43);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (164, 3, 44);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (165, 3, 45);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (166, 3, 46);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (167, 3, 47);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (168, 3, 48);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (169, 3, 49);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (170, 3, 50);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (171, 3, 51);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (172, 3, 52);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (173, 3, 53);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (174, 3, 54);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (175, 3, 55);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (176, 3, 56);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (177, 3, 57);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (178, 3, 58);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (179, 3, 59);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (180, 3, 60);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (181, 3, 61);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (182, 3, 62);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (183, 3, 63);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (184, 3, 64);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (185, 3, 65);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (186, 3, 66);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (187, 3, 67);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (188, 3, 68);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (189, 3, 69);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (190, 3, 70);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (191, 3, 71);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (192, 3, 72);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (193, 3, 73);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (194, 3, 74);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (195, 3, 75);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (196, 3, 76);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (197, 3, 77);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (198, 3, 78);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (199, 3, 79);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (200, 3, 80);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (201, 3, 81);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (202, 3, 82);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (203, 3, 83);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (204, 3, 84);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (205, 3, 85);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (206, 3, 86);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (207, 3, 87);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (208, 3, 88);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (209, 3, 89);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (210, 3, 90);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (211, 3, 91);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (212, 3, 92);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (213, 3, 93);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (214, 3, 94);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (215, 3, 95);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (216, 3, 96);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (217, 3, 97);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (218, 3, 98);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (219, 3, 99);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (220, 3, 100);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (221, 3, 101);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (222, 3, 102);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (223, 3, 103);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (224, 3, 104);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (225, 3, 105);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (226, 3, 106);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (227, 3, 107);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (228, 3, 108);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (229, 1, 56);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (230, 1, 53);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (231, 1, 54);
INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES (232, 1, 55);
COMMIT;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS "auth_permission";
CREATE TABLE "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN;
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (1, 1, 'add_logentry', 'Can add log entry');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (2, 1, 'change_logentry', 'Can change log entry');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (3, 1, 'delete_logentry', 'Can delete log entry');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (4, 1, 'view_logentry', 'Can view log entry');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (5, 2, 'add_permission', 'Can add permission');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (6, 2, 'change_permission', 'Can change permission');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (7, 2, 'delete_permission', 'Can delete permission');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (8, 2, 'view_permission', 'Can view permission');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (9, 3, 'add_group', 'Can add group');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (10, 3, 'change_group', 'Can change group');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (11, 3, 'delete_group', 'Can delete group');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (12, 3, 'view_group', 'Can view group');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (13, 4, 'add_user', 'Can add user');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (14, 4, 'change_user', 'Can change user');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (15, 4, 'delete_user', 'Can delete user');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (16, 4, 'view_user', 'Can view user');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (17, 5, 'add_contenttype', 'Can add content type');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (18, 5, 'change_contenttype', 'Can change content type');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (19, 5, 'delete_contenttype', 'Can delete content type');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (20, 5, 'view_contenttype', 'Can view content type');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (21, 6, 'add_session', 'Can add session');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (22, 6, 'change_session', 'Can change session');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (23, 6, 'delete_session', 'Can delete session');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (24, 6, 'view_session', 'Can view session');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (25, 7, 'add_flower', 'Can add flower');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (26, 7, 'change_flower', 'Can change flower');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (27, 7, 'delete_flower', 'Can delete flower');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (28, 7, 'view_flower', 'Can view flower');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (29, 8, 'add_selchoice', 'Can add sel choice');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (30, 8, 'change_selchoice', 'Can change sel choice');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (31, 8, 'delete_selchoice', 'Can delete sel choice');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (32, 8, 'view_selchoice', 'Can view sel choice');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (33, 9, 'add_moto', 'Can add moto');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (34, 9, 'change_moto', 'Can change moto');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (35, 9, 'delete_moto', 'Can delete moto');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (36, 9, 'view_moto', 'Can view moto');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (37, 10, 'add_caisse', 'Can add caisse');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (38, 10, 'change_caisse', 'Can change caisse');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (39, 10, 'delete_caisse', 'Can delete caisse');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (40, 10, 'view_caisse', 'Can view caisse');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (41, 11, 'add_solde', 'Can add solde');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (42, 11, 'change_solde', 'Can change solde');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (43, 11, 'delete_solde', 'Can delete solde');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (44, 11, 'view_solde', 'Can view solde');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (45, 12, 'add_caisse', 'Can add caisse');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (46, 12, 'change_caisse', 'Can change caisse');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (47, 12, 'delete_caisse', 'Can delete caisse');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (48, 12, 'view_caisse', 'Can view caisse');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (49, 13, 'add_solde', 'Can add solde');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (50, 13, 'change_solde', 'Can change solde');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (51, 13, 'delete_solde', 'Can delete solde');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (52, 13, 'view_solde', 'Can view solde');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (53, 14, 'add_versement', 'Can add versement');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (54, 14, 'change_versement', 'Can change versement');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (55, 14, 'delete_versement', 'Can delete versement');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (56, 14, 'view_versement', 'Can view versement');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (57, 15, 'add_importateur', 'Can add importateur');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (58, 15, 'change_importateur', 'Can change importateur');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (59, 15, 'delete_importateur', 'Can delete importateur');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (60, 15, 'view_importateur', 'Can view importateur');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (61, 16, 'add_exportateur', 'Can add exportateur');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (62, 16, 'change_exportateur', 'Can change exportateur');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (63, 16, 'delete_exportateur', 'Can delete exportateur');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (64, 16, 'view_exportateur', 'Can view exportateur');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (65, 17, 'add_compagnie', 'Can add compagnie');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (66, 17, 'change_compagnie', 'Can change compagnie');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (67, 17, 'delete_compagnie', 'Can delete compagnie');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (68, 17, 'view_compagnie', 'Can view compagnie');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (69, 18, 'add_operation', 'Can add operation');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (70, 18, 'change_operation', 'Can change operation');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (71, 18, 'delete_operation', 'Can delete operation');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (72, 18, 'view_operation', 'Can view operation');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (73, 19, 'add_blmoto', 'Can add bl moto');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (74, 19, 'change_blmoto', 'Can change bl moto');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (75, 19, 'delete_blmoto', 'Can delete bl moto');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (76, 19, 'view_blmoto', 'Can view bl moto');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (77, 20, 'add_facturemoto', 'Can add facture moto');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (78, 20, 'change_facturemoto', 'Can change facture moto');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (79, 20, 'delete_facturemoto', 'Can delete facture moto');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (80, 20, 'view_facturemoto', 'Can view facture moto');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (81, 21, 'add_factureoperation', 'Can add facture operation');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (82, 21, 'change_factureoperation', 'Can change facture operation');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (83, 21, 'delete_factureoperation', 'Can delete facture operation');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (84, 21, 'view_factureoperation', 'Can view facture operation');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (85, 22, 'add_site', 'Can add site');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (86, 22, 'change_site', 'Can change site');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (87, 22, 'delete_site', 'Can delete site');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (88, 22, 'view_site', 'Can view site');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (89, 23, 'add_emailaddress', 'Can add email address');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (90, 23, 'change_emailaddress', 'Can change email address');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (91, 23, 'delete_emailaddress', 'Can delete email address');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (92, 23, 'view_emailaddress', 'Can view email address');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (93, 24, 'add_emailconfirmation', 'Can add email confirmation');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (94, 24, 'change_emailconfirmation', 'Can change email confirmation');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (95, 24, 'delete_emailconfirmation', 'Can delete email confirmation');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (96, 24, 'view_emailconfirmation', 'Can view email confirmation');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (97, 25, 'add_socialaccount', 'Can add social account');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (98, 25, 'change_socialaccount', 'Can change social account');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (99, 25, 'delete_socialaccount', 'Can delete social account');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (100, 25, 'view_socialaccount', 'Can view social account');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (101, 26, 'add_socialapp', 'Can add social application');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (102, 26, 'change_socialapp', 'Can change social application');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (103, 26, 'delete_socialapp', 'Can delete social application');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (104, 26, 'view_socialapp', 'Can view social application');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (105, 27, 'add_socialtoken', 'Can add social application token');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (106, 27, 'change_socialtoken', 'Can change social application token');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (107, 27, 'delete_socialtoken', 'Can delete social application token');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (108, 27, 'view_socialtoken', 'Can view social application token');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (109, 28, 'add_caissemoto', 'Can add caisse moto');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (110, 28, 'change_caissemoto', 'Can change caisse moto');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (111, 28, 'delete_caissemoto', 'Can delete caisse moto');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (112, 28, 'view_caissemoto', 'Can view caisse moto');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (113, 29, 'add_solde', 'Can add solde');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (114, 29, 'change_solde', 'Can change solde');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (115, 29, 'delete_solde', 'Can delete solde');
INSERT INTO "auth_permission" ("id", "content_type_id", "codename", "name") VALUES (116, 29, 'view_solde', 'Can view solde');
COMMIT;

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS "auth_user";
CREATE TABLE "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "last_name" varchar(150) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "first_name" varchar(150) NOT NULL);

-- ----------------------------
-- Records of auth_user
-- ----------------------------
BEGIN;
INSERT INTO "auth_user" ("id", "password", "last_login", "is_superuser", "username", "last_name", "email", "is_staff", "is_active", "date_joined", "first_name") VALUES (1, 'pbkdf2_sha256$260000$4WWZqOVoNI7INeBcm6FO90$O7QH+BnYUDlhnvhvoG0QVkFL6uDwQaKmYoxM3tr7Y/A=', '2022-09-10 10:52:35.934585', 1, 'dev', '', '', 1, 1, '2021-02-23 08:37:29', '');
INSERT INTO "auth_user" ("id", "password", "last_login", "is_superuser", "username", "last_name", "email", "is_staff", "is_active", "date_joined", "first_name") VALUES (2, 'pbkdf2_sha256$260000$HIBoEYqSSEZiHD9DtfNP3u$SMHiYPxXY5Dr7CwrD/XZ6c5jjtXlBiOfN0JOi1r0fro=', '2022-08-24 03:00:15.249915', 0, 'MTZ', '', '', 1, 1, '2021-02-23 08:40:23', '');
INSERT INTO "auth_user" ("id", "password", "last_login", "is_superuser", "username", "last_name", "email", "is_staff", "is_active", "date_joined", "first_name") VALUES (3, 'pbkdf2_sha256$260000$LxB8r5SKt5dFesABjVGFly$3MriOmkpGBGDteFG3/QxfcUiq1E4cBzkQwwdql/rxak=', '2022-08-25 05:31:42.854508', 0, 'Commercial', '', '', 0, 1, '2022-02-25 10:23:29', '');
INSERT INTO "auth_user" ("id", "password", "last_login", "is_superuser", "username", "last_name", "email", "is_staff", "is_active", "date_joined", "first_name") VALUES (4, 'pbkdf2_sha256$216000$6EH870iJARsf$CSZmMqkGHg5bX+hLZ0B2fbq4ttCaEj9HcZ3QAPp3TKk=', '2022-03-21 06:57:51.318007', 0, 'Mihaja', '', '', 1, 1, '2022-02-25 11:50:17', '');
INSERT INTO "auth_user" ("id", "password", "last_login", "is_superuser", "username", "last_name", "email", "is_staff", "is_active", "date_joined", "first_name") VALUES (5, 'pbkdf2_sha256$216000$sd7rLVj0JhhO$Wko/xfaNvqG4QlBys7IfdluMS200laSrH1jIS3gu0fU=', '2022-03-05 11:35:09.732030', 0, 'Malala', '', '', 1, 1, '2022-02-25 11:51:16', '');
INSERT INTO "auth_user" ("id", "password", "last_login", "is_superuser", "username", "last_name", "email", "is_staff", "is_active", "date_joined", "first_name") VALUES (6, 'pbkdf2_sha256$260000$OjA43pxsBNCBlrLxEnT622$jAtKcVbWQ+4wt1zFeQTDCT3ELixlVws1KKCzCy9+wqo=', '2022-08-25 15:54:47.006706', 1, 'devy', '', 'devy@email.net', 1, 1, '2022-08-22 06:14:54', '');
INSERT INTO "auth_user" ("id", "password", "last_login", "is_superuser", "username", "last_name", "email", "is_staff", "is_active", "date_joined", "first_name") VALUES (7, 'pbkdf2_sha256$600000$fUyfXnozasz30uPtoZ5424$uN2LbXnV29L6VmeEqcrUhmITa4N/O3DinciRYDAf7UQ=', '2026-04-07 07:31:39.550828', 1, 'davida', '', '', 1, 1, '2026-04-04 07:46:31', '');
COMMIT;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS "auth_user_groups";
CREATE TABLE "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------
BEGIN;
INSERT INTO "auth_user_groups" ("id", "user_id", "group_id") VALUES (2, 3, 2);
INSERT INTO "auth_user_groups" ("id", "user_id", "group_id") VALUES (3, 1, 3);
INSERT INTO "auth_user_groups" ("id", "user_id", "group_id") VALUES (4, 4, 1);
INSERT INTO "auth_user_groups" ("id", "user_id", "group_id") VALUES (5, 5, 1);
INSERT INTO "auth_user_groups" ("id", "user_id", "group_id") VALUES (6, 6, 3);
INSERT INTO "auth_user_groups" ("id", "user_id", "group_id") VALUES (7, 2, 4);
INSERT INTO "auth_user_groups" ("id", "user_id", "group_id") VALUES (8, 7, 4);
COMMIT;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS "auth_user_user_permissions";
CREATE TABLE "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------
BEGIN;
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (1, 3, 33);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (2, 3, 34);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (3, 3, 35);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (4, 3, 36);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (5, 3, 73);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (6, 3, 74);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (7, 3, 75);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (8, 3, 76);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (9, 3, 77);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (10, 3, 78);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (11, 3, 79);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (12, 3, 80);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (13, 5, 1);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (14, 5, 2);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (15, 5, 3);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (16, 5, 4);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (17, 5, 5);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (18, 5, 6);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (19, 5, 7);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (20, 5, 8);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (21, 5, 9);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (22, 5, 10);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (23, 5, 11);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (24, 5, 12);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (25, 5, 13);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (26, 5, 14);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (27, 5, 15);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (28, 5, 16);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (29, 5, 17);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (30, 5, 18);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (31, 5, 19);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (32, 5, 20);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (33, 5, 21);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (34, 5, 22);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (35, 5, 23);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (36, 5, 24);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (37, 5, 25);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (38, 5, 26);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (39, 5, 27);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (40, 5, 28);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (41, 5, 29);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (42, 5, 30);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (43, 5, 31);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (44, 5, 32);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (45, 5, 33);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (46, 5, 34);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (47, 5, 35);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (48, 5, 36);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (49, 5, 37);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (50, 5, 38);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (51, 5, 39);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (52, 5, 40);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (53, 5, 41);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (54, 5, 42);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (55, 5, 43);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (56, 5, 44);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (57, 5, 45);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (58, 5, 46);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (59, 5, 47);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (60, 5, 48);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (61, 5, 49);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (62, 5, 50);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (63, 5, 51);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (64, 5, 52);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (65, 5, 53);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (66, 5, 54);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (67, 5, 55);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (68, 5, 56);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (69, 5, 57);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (70, 5, 58);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (71, 5, 59);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (72, 5, 60);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (73, 5, 61);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (74, 5, 62);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (75, 5, 63);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (76, 5, 64);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (77, 5, 65);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (78, 5, 66);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (79, 5, 67);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (80, 5, 68);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (81, 5, 69);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (82, 5, 70);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (83, 5, 71);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (84, 5, 72);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (85, 5, 73);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (86, 5, 74);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (87, 5, 75);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (88, 5, 76);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (89, 5, 77);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (90, 5, 78);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (91, 5, 79);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (92, 5, 80);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (93, 5, 81);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (94, 5, 82);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (95, 5, 83);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (96, 5, 84);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (97, 5, 85);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (98, 5, 86);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (99, 5, 87);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (100, 5, 88);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (101, 5, 89);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (102, 5, 90);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (103, 5, 91);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (104, 5, 92);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (105, 5, 93);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (106, 5, 94);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (107, 5, 95);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (108, 5, 96);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (109, 5, 97);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (110, 5, 98);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (111, 5, 99);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (112, 5, 100);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (113, 5, 101);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (114, 5, 102);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (115, 5, 103);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (116, 5, 104);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (117, 5, 105);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (118, 5, 106);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (119, 5, 107);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (120, 5, 108);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (121, 4, 1);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (122, 4, 2);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (123, 4, 3);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (124, 4, 4);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (125, 4, 5);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (126, 4, 6);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (127, 4, 7);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (128, 4, 8);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (129, 4, 9);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (130, 4, 10);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (131, 4, 11);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (132, 4, 12);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (133, 4, 13);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (134, 4, 14);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (135, 4, 15);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (136, 4, 16);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (137, 4, 17);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (138, 4, 18);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (139, 4, 19);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (140, 4, 20);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (141, 4, 21);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (142, 4, 22);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (143, 4, 23);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (144, 4, 24);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (145, 4, 25);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (146, 4, 26);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (147, 4, 27);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (148, 4, 28);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (149, 4, 29);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (150, 4, 30);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (151, 4, 31);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (152, 4, 32);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (153, 4, 33);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (154, 4, 34);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (155, 4, 35);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (156, 4, 36);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (157, 4, 37);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (158, 4, 38);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (159, 4, 39);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (160, 4, 40);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (161, 4, 41);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (162, 4, 42);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (163, 4, 43);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (164, 4, 44);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (165, 4, 45);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (166, 4, 46);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (167, 4, 47);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (168, 4, 48);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (169, 4, 49);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (170, 4, 50);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (171, 4, 51);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (172, 4, 52);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (173, 4, 53);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (174, 4, 54);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (175, 4, 55);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (176, 4, 56);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (177, 4, 57);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (178, 4, 58);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (179, 4, 59);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (180, 4, 60);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (181, 4, 61);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (182, 4, 62);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (183, 4, 63);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (184, 4, 64);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (185, 4, 65);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (186, 4, 66);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (187, 4, 67);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (188, 4, 68);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (189, 4, 69);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (190, 4, 70);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (191, 4, 71);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (192, 4, 72);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (193, 4, 73);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (194, 4, 74);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (195, 4, 75);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (196, 4, 76);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (197, 4, 77);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (198, 4, 78);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (199, 4, 79);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (200, 4, 80);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (201, 4, 81);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (202, 4, 82);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (203, 4, 83);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (204, 4, 84);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (205, 4, 85);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (206, 4, 86);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (207, 4, 87);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (208, 4, 88);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (209, 4, 89);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (210, 4, 90);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (211, 4, 91);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (212, 4, 92);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (213, 4, 93);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (214, 4, 94);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (215, 4, 95);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (216, 4, 96);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (217, 4, 97);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (218, 4, 98);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (219, 4, 99);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (220, 4, 100);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (221, 4, 101);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (222, 4, 102);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (223, 4, 103);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (224, 4, 104);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (225, 4, 105);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (226, 4, 106);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (227, 4, 107);
INSERT INTO "auth_user_user_permissions" ("id", "user_id", "permission_id") VALUES (228, 4, 108);
COMMIT;

-- ----------------------------
-- Table structure for caisseMoto_caissemoto
-- ----------------------------
DROP TABLE IF EXISTS "caisseMoto_caissemoto";
CREATE TABLE "caisseMoto_caissemoto" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "libellee" varchar(50) NOT NULL, "date" date NULL, "depense" decimal NULL, "recette" decimal NULL, "PJ" varchar(100) NULL, "is_depense" bool NOT NULL, "is_moto" bool NOT NULL, "id_moto" integer NULL);

-- ----------------------------
-- Records of caisseMoto_caissemoto
-- ----------------------------
BEGIN;
INSERT INTO "caisseMoto_caissemoto" ("id", "libellee", "date", "depense", "recette", "PJ", "is_depense", "is_moto", "id_moto") VALUES (21, 'Vente du moto YAMAHA BWS X-E3B2E-450622', '2022-08-13', 0, 3600000, '', 0, 1, 14);
INSERT INTO "caisseMoto_caissemoto" ("id", "libellee", "date", "depense", "recette", "PJ", "is_depense", "is_moto", "id_moto") VALUES (22, 'Vente du moto YAMAHA RS ZERO-E3B9E-627663', '2022-08-09', 0, 3000000, '', 0, 1, 13);
INSERT INTO "caisseMoto_caissemoto" ("id", "libellee", "date", "depense", "recette", "PJ", "is_depense", "is_moto", "id_moto") VALUES (23, 'Vente du moto YAMAHA BWS X-E3K6E-108770', '2022-08-15', 0, 3600000, '', 0, 1, 15);
INSERT INTO "caisseMoto_caissemoto" ("id", "libellee", "date", "depense", "recette", "PJ", "is_depense", "is_moto", "id_moto") VALUES (24, 'Vente de moto', '2022-08-27', 0, 3000000, '', 0, 0, 23);
INSERT INTO "caisseMoto_caissemoto" ("id", "libellee", "date", "depense", "recette", "PJ", "is_depense", "is_moto", "id_moto") VALUES (25, 'Vente du moto YAMAHA BWS 100-4VP-901896', '2022-08-22', 0, 2750000, '', 0, 1, 27);
INSERT INTO "caisseMoto_caissemoto" ("id", "libellee", "date", "depense", "recette", "PJ", "is_depense", "is_moto", "id_moto") VALUES (26, 'Vente du moto YAMAHA FS-E3J7E-165572', '2022-08-22', 0, 6000000, '', 0, 1, 247);
COMMIT;

-- ----------------------------
-- Table structure for caisseMoto_solde
-- ----------------------------
DROP TABLE IF EXISTS "caisseMoto_solde";
CREATE TABLE "caisseMoto_solde" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "solde_actuel" decimal NULL, "solde_initial" decimal NULL);

-- ----------------------------
-- Records of caisseMoto_solde
-- ----------------------------
BEGIN;
INSERT INTO "caisseMoto_solde" ("id", "solde_actuel", "solde_initial") VALUES (1, 24950000, 3000000);
COMMIT;

-- ----------------------------
-- Table structure for caisseTamatave_caisse
-- ----------------------------
DROP TABLE IF EXISTS "caisseTamatave_caisse";
CREATE TABLE "caisseTamatave_caisse" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "libellee" varchar(50) NOT NULL, "date" date NULL, "depense" decimal NULL, "recette" decimal NULL, "PJ" varchar(100) NOT NULL);

-- ----------------------------
-- Records of caisseTamatave_caisse
-- ----------------------------
BEGIN;
INSERT INTO "caisseTamatave_caisse" ("id", "libellee", "date", "depense", "recette", "PJ") VALUES (1, 'JIRAMA', '2021-03-20', 40000, 0, '');
INSERT INTO "caisseTamatave_caisse" ("id", "libellee", "date", "depense", "recette", "PJ") VALUES (2, 'LOYER', '2021-03-20', 200000, 0, '');
INSERT INTO "caisseTamatave_caisse" ("id", "libellee", "date", "depense", "recette", "PJ") VALUES (3, 'MOTO RACING', '2021-03-20', 0, 3000000, '');
COMMIT;

-- ----------------------------
-- Table structure for caisseTamatave_solde
-- ----------------------------
DROP TABLE IF EXISTS "caisseTamatave_solde";
CREATE TABLE "caisseTamatave_solde" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "soldeInitial" decimal NULL, "soldeActuel" decimal NULL);

-- ----------------------------
-- Records of caisseTamatave_solde
-- ----------------------------
BEGIN;
INSERT INTO "caisseTamatave_solde" ("id", "soldeInitial", "soldeActuel") VALUES (1, 2000000, 4760000);
COMMIT;

-- ----------------------------
-- Table structure for caisseTana_caisse
-- ----------------------------
DROP TABLE IF EXISTS "caisseTana_caisse";
CREATE TABLE "caisseTana_caisse" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "libellee" varchar(50) NOT NULL, "date" date NULL, "depense" decimal NULL, "recette" decimal NULL, "PJ" varchar(100) NOT NULL);

-- ----------------------------
-- Records of caisseTana_caisse
-- ----------------------------
BEGIN;
INSERT INTO "caisseTana_caisse" ("id", "libellee", "date", "depense", "recette", "PJ") VALUES (2, 'TOJO GO', '2022-02-26', 0, 8700000, '');
INSERT INTO "caisseTana_caisse" ("id", "libellee", "date", "depense", "recette", "PJ") VALUES (3, 'TOJO GO MVOLA', '2022-02-26', 0, 1650000, '');
INSERT INTO "caisseTana_caisse" ("id", "libellee", "date", "depense", "recette", "PJ") VALUES (4, 'CYGNUS II E394E-111096', '2022-02-26', 0, 4600000, '');
INSERT INTO "caisseTana_caisse" ("id", "libellee", "date", "depense", "recette", "PJ") VALUES (5, 'BATTERIE', '2022-02-26', 0, 60000, '');
INSERT INTO "caisseTana_caisse" ("id", "libellee", "date", "depense", "recette", "PJ") VALUES (6, 'RACING SR30BB-300381', '2022-02-26', 0, 4000000, '');
INSERT INTO "caisseTana_caisse" ("id", "libellee", "date", "depense", "recette", "PJ") VALUES (9, 'BATTERIE', '2022-02-26', 0, 60000, '');
INSERT INTO "caisseTana_caisse" ("id", "libellee", "date", "depense", "recette", "PJ") VALUES (10, 'AVANCE SR30BB-230227', '2022-02-26', 0, 100000, '');
COMMIT;

-- ----------------------------
-- Table structure for caisseTana_solde
-- ----------------------------
DROP TABLE IF EXISTS "caisseTana_solde";
CREATE TABLE "caisseTana_solde" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "soldeInitial" decimal NULL, "soldeActuel" decimal NULL);

-- ----------------------------
-- Records of caisseTana_solde
-- ----------------------------
BEGIN;
INSERT INTO "caisseTana_solde" ("id", "soldeInitial", "soldeActuel") VALUES (1, 1000000, 20150000);
COMMIT;

-- ----------------------------
-- Table structure for compagnie_compagnie
-- ----------------------------
DROP TABLE IF EXISTS "compagnie_compagnie";
CREATE TABLE "compagnie_compagnie" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "nomCompagnie" varchar(50) NOT NULL, "adresseTana" varchar(50) NOT NULL, "adresseTamatave" varchar(50) NOT NULL, "email1" varchar(254) NOT NULL, "email2" varchar(254) NOT NULL, "email3" varchar(254) NOT NULL, "contact" varchar(50) NOT NULL);

-- ----------------------------
-- Records of compagnie_compagnie
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS "django_admin_log";
CREATE TABLE "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "action_time" datetime NOT NULL, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0));

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
BEGIN;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (1, '2021-02-23 08:40:23.606059', '2', 'MTZ', '[{"added": {}}]', 4, 1, 1);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (2, '2021-02-23 08:40:43.557625', '2', 'MTZ', '[{"changed": {"fields": ["Staff status"]}}]', 4, 1, 2);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (3, '2021-02-23 08:40:55.566756', '1', 'MTZ', '[{"added": {}}]', 3, 1, 1);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (4, '2021-02-23 08:41:13.835684', '2', 'MTZ', '[{"changed": {"fields": ["Groups"]}}]', 4, 1, 2);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (5, '2021-03-17 04:39:21.173366', '1', 'Solde object (1)', '[{"added": {}}]', 13, 1, 1);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (6, '2021-03-17 04:39:28.454631', '1', 'Solde object (1)', '[{"added": {}}]', 11, 1, 1);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (7, '2021-03-20 12:43:14.916878', '1', 'dev', '[{"changed": {"fields": ["password"]}}]', 4, 1, 2);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (8, '2022-02-25 08:48:35.129185', '7', 'KIMKO G7', '', 9, 2, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (9, '2022-02-25 08:48:35.131279', '6', 'KIMKO G6', '', 9, 2, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (10, '2022-02-25 08:48:35.132579', '5', 'KIMKO', '', 9, 2, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (11, '2022-02-25 08:48:35.133795', '4', 'MINOLTA', '', 9, 2, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (12, '2022-02-25 08:48:35.134998', '3', 'KIMKO', '', 9, 2, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (13, '2022-02-25 08:48:35.136269', '2', 'RACING King', '', 9, 2, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (14, '2022-02-25 10:23:29.347060', '3', 'Commercial', '[{"added": {}}]', 4, 2, 1);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (15, '2022-02-25 10:23:57.073893', '3', 'Commercial', '[{"changed": {"fields": ["User permissions"]}}]', 4, 2, 2);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (16, '2022-02-25 11:33:40.525189', '2', 'commercial', '[{"added": {}}]', 3, 2, 1);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (17, '2022-02-25 11:33:47.151909', '3', 'Commercial', '[{"changed": {"fields": ["Groups"]}}]', 4, 2, 2);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (18, '2022-02-25 11:45:35.443407', '3', 'admin', '[{"added": {}}]', 3, 1, 1);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (19, '2022-02-25 11:45:40.458235', '1', 'dev', '[{"changed": {"fields": ["Groups"]}}]', 4, 1, 2);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (20, '2022-02-25 11:46:49.782667', '1', 'MTZ', '[{"changed": {"fields": ["Permissions"]}}]', 3, 1, 2);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (21, '2022-02-25 11:47:50.449806', '1', 'MTZ', '[{"changed": {"fields": ["Permissions"]}}]', 3, 2, 2);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (22, '2022-02-25 11:50:17.542924', '4', 'Mihaja', '[{"added": {}}]', 4, 2, 1);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (23, '2022-02-25 11:50:45.331776', '4', 'Mihaja', '[{"changed": {"fields": ["Groups"]}}]', 4, 2, 2);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (24, '2022-02-25 11:51:16.818657', '5', 'Malala', '[{"added": {}}]', 4, 2, 1);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (25, '2022-02-25 11:51:34.287241', '5', 'Malala', '[{"changed": {"fields": ["Groups"]}}]', 4, 2, 2);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (26, '2022-02-25 12:09:40.119507', '1', 'MTZ', '[]', 3, 2, 2);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (27, '2022-02-25 12:09:53.047663', '5', 'Malala', '[{"changed": {"fields": ["User permissions"]}}]', 4, 2, 2);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (28, '2022-02-25 12:10:02.673660', '4', 'Mihaja', '[{"changed": {"fields": ["User permissions"]}}]', 4, 2, 2);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (29, '2022-02-25 12:13:33.063414', '5', 'Malala', '[{"changed": {"fields": ["Staff status"]}}]', 4, 2, 2);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (30, '2022-02-25 12:13:43.211511', '4', 'Mihaja', '[{"changed": {"fields": ["Staff status"]}}]', 4, 2, 2);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (31, '2022-02-25 12:13:50.698461', '1', 'dev', '[]', 4, 2, 2);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (32, '2022-05-27 07:23:16.584294', '1', 'dev', '[{"changed": {"fields": ["password"]}}]', 4, 2, 2);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (33, '2022-08-15 13:03:08.908666', '1', 'Solde object (1)', '[{"added": {}}]', 29, 1, 1);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (34, '2022-08-16 06:26:31.234114', '14', 'Vente moto VINSA', '[{"added": {}}]', 28, 1, 1);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (35, '2022-08-16 07:52:32.244950', '2803', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (36, '2022-08-16 07:52:32.247462', '2802', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (37, '2022-08-16 07:52:32.249056', '2801', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (38, '2022-08-16 07:52:32.250097', '2800', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (39, '2022-08-16 07:52:32.251301', '2799', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (40, '2022-08-16 07:52:32.252405', '2798', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (41, '2022-08-16 07:52:32.253725', '2797', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (42, '2022-08-16 07:52:32.255766', '2796', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (43, '2022-08-16 07:52:32.258055', '2795', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (44, '2022-08-16 07:52:32.260422', '2794', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (45, '2022-08-16 07:52:32.262522', '2793', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (46, '2022-08-16 07:52:32.264744', '2792', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (47, '2022-08-16 07:52:32.266418', '2791', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (48, '2022-08-16 07:52:32.267661', '2790', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (49, '2022-08-16 07:52:32.268987', '2789', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (50, '2022-08-16 07:52:32.270239', '2788', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (51, '2022-08-16 07:52:32.271511', '2787', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (52, '2022-08-16 07:52:32.272779', '2786', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (53, '2022-08-16 07:52:32.274120', '2785', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (54, '2022-08-16 07:52:32.275897', '2784', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (55, '2022-08-16 07:52:32.277609', '2783', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (56, '2022-08-16 07:52:32.279089', '2782', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (57, '2022-08-16 07:52:32.280656', '2781', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (58, '2022-08-16 07:52:32.282091', '2780', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (59, '2022-08-16 07:52:32.283389', '2779', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (60, '2022-08-16 07:52:32.284749', '2778', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (61, '2022-08-16 07:52:32.286015', '2777', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (62, '2022-08-16 07:52:32.287308', '2776', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (63, '2022-08-16 07:52:32.288734', '2775', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (64, '2022-08-16 07:52:32.290028', '2774', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (65, '2022-08-16 07:52:32.291648', '2773', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (66, '2022-08-16 07:52:32.292968', '2772', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (67, '2022-08-16 07:52:32.294500', '2771', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (68, '2022-08-16 07:52:32.295793', '2770', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (69, '2022-08-16 07:52:32.297064', '2769', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (70, '2022-08-16 07:52:32.298317', '2768', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (71, '2022-08-16 07:52:32.299702', '2767', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (72, '2022-08-16 07:52:32.301162', '2766', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (73, '2022-08-16 07:52:32.302479', '2765', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (74, '2022-08-16 07:52:32.303755', '2764', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (75, '2022-08-16 07:52:32.310303', '2763', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (76, '2022-08-16 07:52:32.311690', '2762', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (77, '2022-08-16 07:52:32.312944', '2761', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (78, '2022-08-16 07:52:32.314346', '2760', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (79, '2022-08-16 07:52:32.315749', '2759', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (80, '2022-08-16 07:52:32.317055', '2758', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (81, '2022-08-16 07:52:32.318329', '2757', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (82, '2022-08-16 07:52:32.319583', '2756', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (83, '2022-08-16 07:52:32.320786', '2755', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (84, '2022-08-16 07:52:32.322099', '2754', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (85, '2022-08-16 07:52:32.323729', '2753', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (86, '2022-08-16 07:52:32.325823', '2752', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (87, '2022-08-16 07:52:32.327223', '2751', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (88, '2022-08-16 07:52:32.330439', '2750', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (89, '2022-08-16 07:52:32.359304', '2749', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (90, '2022-08-16 07:52:32.360838', '2748', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (91, '2022-08-16 07:52:32.362649', '2747', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (92, '2022-08-16 07:52:32.364529', '2746', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (93, '2022-08-16 07:52:32.365989', '2745', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (94, '2022-08-16 07:52:32.367542', '2744', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (95, '2022-08-16 07:52:32.368884', '2743', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (96, '2022-08-16 07:52:32.370303', '2742', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (97, '2022-08-16 07:52:32.371687', '2741', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (98, '2022-08-16 07:52:32.372948', '2740', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (99, '2022-08-16 07:52:32.374817', '2739', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (100, '2022-08-16 07:52:32.376092', '2738', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (101, '2022-08-16 07:52:32.377352', '2737', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (102, '2022-08-16 07:52:32.378625', '2736', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (103, '2022-08-16 07:52:32.380031', '2735', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (104, '2022-08-16 07:52:32.381273', '2734', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (105, '2022-08-16 07:52:32.382482', '2733', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (106, '2022-08-16 07:52:32.383698', '2732', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (107, '2022-08-16 07:52:32.384943', '2731', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (108, '2022-08-16 07:52:32.386319', '2730', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (109, '2022-08-16 07:52:32.387615', '2729', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (110, '2022-08-16 07:52:32.389290', '2728', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (111, '2022-08-16 07:52:32.396280', '2727', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (112, '2022-08-16 07:52:32.397689', '2726', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (113, '2022-08-16 07:52:32.399030', '2725', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (114, '2022-08-16 07:52:32.400598', '2724', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (115, '2022-08-16 07:52:32.402477', '2723', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (116, '2022-08-16 07:52:32.404187', '2722', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (117, '2022-08-16 07:52:32.405803', '2721', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (118, '2022-08-16 07:52:32.408029', '2720', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (119, '2022-08-16 07:52:32.410000', '2719', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (120, '2022-08-16 07:52:32.411671', '2718', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (121, '2022-08-16 07:52:32.413271', '2717', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (122, '2022-08-16 07:52:32.415055', '2716', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (123, '2022-08-16 07:52:32.416856', '2715', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (124, '2022-08-16 07:52:32.418430', '2714', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (125, '2022-08-16 07:52:32.420004', '2713', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (126, '2022-08-16 07:52:32.421847', '2712', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (127, '2022-08-16 07:52:32.423636', '2711', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (128, '2022-08-16 07:52:32.425428', '2710', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (129, '2022-08-16 07:52:32.427314', '2709', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (130, '2022-08-16 07:52:32.429093', '2708', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (131, '2022-08-16 07:52:32.430829', '2707', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (132, '2022-08-16 07:52:32.433380', '2706', 'Vente moto YAMAHA BWS X - E3B2E-450622', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (133, '2022-08-16 07:52:32.435031', '2705', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (134, '2022-08-16 07:52:32.436561', '2704', 'Vente moto YAMAHA RS ZERO - E3B9E-627663', '', 28, 1, 3);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (135, '2022-08-22 06:46:29.475310', '6', 'devy', '[{"changed": {"fields": ["Email address", "Groups"]}}]', 4, 6, 2);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (136, '2022-08-22 09:10:19.695099', '4', 'manager', '[{"added": {}}]', 3, 6, 1);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (137, '2022-08-22 09:10:49.940718', '2', 'MTZ', '[{"changed": {"fields": ["Groups"]}}]', 4, 6, 2);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "change_message", "content_type_id", "user_id", "action_flag") VALUES (138, '2026-04-04 07:50:20.100660', '7', 'davida', '[{"changed": {"fields": ["Groups"]}}]', 4, 7, 2);
COMMIT;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS "django_content_type";
CREATE TABLE "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES (1, 'admin', 'logentry');
INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES (2, 'auth', 'permission');
INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES (3, 'auth', 'group');
INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES (4, 'auth', 'user');
INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES (6, 'sessions', 'session');
INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES (7, 'myapp', 'flower');
INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES (8, 'myapp', 'selchoice');
INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES (9, 'moto', 'moto');
INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES (10, 'caisseTana', 'caisse');
INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES (11, 'caisseTana', 'solde');
INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES (12, 'caisseTamatave', 'caisse');
INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES (13, 'caisseTamatave', 'solde');
INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES (14, 'versement', 'versement');
INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES (15, 'importateur', 'importateur');
INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES (16, 'exportateur', 'exportateur');
INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES (17, 'compagnie', 'compagnie');
INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES (18, 'operation', 'operation');
INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES (19, 'facture', 'blmoto');
INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES (20, 'facture', 'facturemoto');
INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES (21, 'facture', 'factureoperation');
INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES (22, 'sites', 'site');
INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES (23, 'account', 'emailaddress');
INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES (24, 'account', 'emailconfirmation');
INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES (25, 'socialaccount', 'socialaccount');
INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES (26, 'socialaccount', 'socialapp');
INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES (27, 'socialaccount', 'socialtoken');
INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES (28, 'caisseMoto', 'caissemoto');
INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES (29, 'caisseMoto', 'solde');
COMMIT;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS "django_migrations";
CREATE TABLE "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (1, 'contenttypes', '0001_initial', '2021-02-14 14:31:50.105691');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (2, 'auth', '0001_initial', '2021-02-14 14:31:50.148692');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (3, 'account', '0001_initial', '2021-02-14 14:31:50.177689');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (4, 'account', '0002_email_max_length', '2021-02-14 14:31:50.208687');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (5, 'admin', '0001_initial', '2021-02-14 14:31:50.236692');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (6, 'admin', '0002_logentry_remove_auto_add', '2021-02-14 14:31:50.263687');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (7, 'admin', '0003_logentry_add_action_flag_choices', '2021-02-14 14:31:50.298692');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (8, 'contenttypes', '0002_remove_content_type_name', '2021-02-14 14:31:50.376686');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (9, 'auth', '0002_alter_permission_name_max_length', '2021-02-14 14:31:50.406689');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (10, 'auth', '0003_alter_user_email_max_length', '2021-02-14 14:31:50.438690');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (11, 'auth', '0004_alter_user_username_opts', '2021-02-14 14:31:50.475687');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (12, 'auth', '0005_alter_user_last_login_null', '2021-02-14 14:31:50.504691');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (13, 'auth', '0006_require_contenttypes_0002', '2021-02-14 14:31:50.515689');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (14, 'auth', '0007_alter_validators_add_error_messages', '2021-02-14 14:31:50.566693');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (15, 'auth', '0008_alter_user_username_max_length', '2021-02-14 14:31:50.598690');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (16, 'auth', '0009_alter_user_last_name_max_length', '2021-02-14 14:31:50.628692');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (17, 'auth', '0010_alter_group_name_max_length', '2021-02-14 14:31:50.659690');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (18, 'auth', '0011_update_proxy_permissions', '2021-02-14 14:31:50.683688');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (19, 'auth', '0012_alter_user_first_name_max_length', '2021-02-14 14:31:50.710686');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (20, 'caisseTamatave', '0001_initial', '2021-02-14 14:31:50.734688');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (21, 'caisseTana', '0001_initial', '2021-02-14 14:31:50.765686');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (22, 'compagnie', '0001_initial', '2021-02-14 14:31:50.777689');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (23, 'exportateur', '0001_initial', '2021-02-14 14:31:50.798688');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (24, 'importateur', '0001_initial', '2021-02-14 14:31:50.813685');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (25, 'operation', '0001_initial', '2021-02-14 14:31:50.890688');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (26, 'facture', '0001_initial', '2021-02-14 14:31:50.944690');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (27, 'moto', '0001_initial', '2021-02-14 14:31:51.000041');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (28, 'myapp', '0001_initial', '2021-02-14 14:31:51.030048');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (29, 'sessions', '0001_initial', '2021-02-14 14:31:51.045041');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (30, 'sites', '0001_initial', '2021-02-14 14:31:51.063049');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (31, 'sites', '0002_alter_domain_unique', '2021-02-14 14:31:51.087038');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (32, 'socialaccount', '0001_initial', '2021-02-14 14:31:51.165368');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (33, 'socialaccount', '0002_token_max_lengths', '2021-02-14 14:31:51.231588');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (34, 'socialaccount', '0003_extra_data_default_dict', '2021-02-14 14:31:51.265595');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (35, 'versement', '0001_initial', '2021-02-14 14:31:51.278588');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (36, 'moto', '0002_moto_carte_grise', '2022-02-25 12:22:09.172703');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (37, 'moto', '0003_moto_magasin', '2022-03-29 13:38:30.264107');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (38, 'moto', '0004_auto_20220704_1241', '2022-08-08 04:51:43.577777');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (39, 'moto', '0005_auto_20220729_1346', '2022-08-08 04:51:43.622725');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (40, 'moto', '0006_moto_vendeur', '2022-08-08 04:51:43.648567');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (41, 'moto', '0007_alter_moto_num_moteur', '2022-08-08 04:51:43.671881');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (42, 'moto', '0008_auto_20220806_0750', '2022-08-08 04:51:43.770933');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (43, 'moto', '0009_rename_vendeur_moto_fournisseur', '2022-08-08 04:51:43.793490');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (44, 'moto', '0010_alter_moto_date_facture', '2022-08-08 04:51:43.808587');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (45, 'moto', '0011_auto_20220808_0200', '2022-08-08 04:51:43.970695');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (46, 'moto', '0012_alter_moto_commercial', '2022-08-08 04:51:43.994712');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (47, 'moto', '0013_alter_moto_id_moto', '2022-08-08 04:51:44.020329');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (48, 'moto', '0014_auto_20220808_0345', '2022-08-08 04:51:44.193925');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (49, 'moto', '0015_alter_moto_id_moto', '2022-08-08 04:51:44.218159');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (50, 'caisseMoto', '0001_initial', '2022-08-15 09:58:55.719264');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (51, 'caisseMoto', '0002_auto_20220815_1302', '2022-08-15 13:02:45.947126');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (52, 'caisseMoto', '0003_alter_caissemoto_date', '2022-08-15 13:28:17.372050');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (53, 'caisseMoto', '0004_caissemoto_is_moto', '2022-08-16 03:52:04.271506');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (54, 'caisseMoto', '0005_caissemoto_id_moto', '2022-08-16 07:04:16.208907');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (55, 'caisseMoto', '0006_rename_id_moto_caissemoto_id_moto', '2022-08-16 07:04:49.241269');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (56, 'caisseMoto', '0007_rename_id_moto_caissemoto_id_moto', '2022-08-16 07:05:10.186681');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (57, 'caisseMoto', '0008_alter_caissemoto_is_moto', '2022-08-18 15:37:54.951056');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (58, 'caisseMoto', '0009_alter_caissemoto_pj', '2022-08-19 15:23:27.996836');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (59, 'caisseMoto', '0010_auto_20220819_1523', '2022-08-19 15:23:28.148125');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (60, 'caisseMoto', '0011_alter_caissemoto_is_moto', '2022-08-19 15:28:18.025889');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (61, 'caisseMoto', '0012_alter_caissemoto_is_depense', '2022-08-19 15:30:49.693803');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (62, 'caisseMoto', '0013_alter_caissemoto_id_moto', '2022-08-19 15:32:02.779721');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (63, 'account', '0003_alter_emailaddress_create_unique_verified_email', '2026-03-30 16:45:40.533646');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (64, 'account', '0004_alter_emailaddress_drop_unique_email', '2026-03-30 16:45:40.539041');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (65, 'account', '0005_emailaddress_idx_upper_email', '2026-03-30 16:45:40.541182');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (66, 'account', '0006_emailaddress_lower', '2026-03-30 16:45:40.546465');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (67, 'account', '0007_emailaddress_idx_email', '2026-03-30 16:45:40.564020');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (68, 'account', '0008_emailaddress_unique_primary_email_fixup', '2026-03-30 16:45:40.569715');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (69, 'account', '0009_emailaddress_unique_primary_email', '2026-03-30 16:45:40.571740');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (70, 'caisseTamatave', '0002_alter_caisse_id_alter_solde_id', '2026-03-30 16:45:40.575801');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (71, 'caisseTana', '0002_alter_caisse_id_alter_solde_id', '2026-03-30 16:45:40.580187');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (72, 'compagnie', '0002_alter_compagnie_id', '2026-03-30 16:45:40.584227');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (73, 'exportateur', '0002_alter_exportateur_id', '2026-03-30 16:45:40.587416');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (74, 'facture', '0002_alter_blmoto_id_alter_facturemoto_id_and_more', '2026-03-30 16:45:40.592822');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (75, 'importateur', '0002_alter_importateur_id', '2026-03-30 16:45:40.596445');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (76, 'moto', '0016_alter_moto_id', '2026-03-30 16:45:40.600122');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (77, 'myapp', '0002_alter_flower_id_alter_selchoice_id', '2026-03-30 16:45:40.603752');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (78, 'operation', '0002_alter_operation_id', '2026-03-30 16:45:40.609021');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (79, 'socialaccount', '0004_app_provider_id_settings', '2026-03-30 16:45:40.615181');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (80, 'socialaccount', '0005_socialtoken_nullable_app', '2026-03-30 16:45:40.619035');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (81, 'socialaccount', '0006_alter_socialaccount_extra_data', '2026-03-30 16:45:40.622793');
INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES (82, 'versement', '0002_alter_versement_id', '2026-03-30 16:45:40.624577');
COMMIT;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS "django_session";
CREATE TABLE "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);

-- ----------------------------
-- Records of django_session
-- ----------------------------
BEGIN;
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('pa6grbf52zu1pr9o47mbd58b9xmx7v0g', '.eJxVjMsOwiAQRf-FtSEDQ3m4dO83kGGgUjU0Ke3K-O_apAvd3nPOfYlI21rj1ssSpyzOQonT75aIH6XtIN-p3WbJc1uXKcldkQft8jrn8rwc7t9BpV6_tUN0iRkUkPE0BEwYwHLC0TrIgMiDNV6B8kw6OE0GkPRYjMJsVPbi_QG8ATbB:1lETD9:vz1t_1qG0wnu9BQZqQoIScCtasGeWtFOPHySTvmO_Jw', '2021-03-09 08:38:27.825058');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('ubvrd8p2dv2cgkq3nqi1xsat32oqck61', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1lETGE:U4s6q3jZYp0SVwpHZDqtXJRWFCRXfjN5He-1X_Udggg', '2021-03-09 08:41:38.324198');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('z8zd7s9d0fjq3hx7c0eg6x7fym3xtlym', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1lETYx:tU72RbFrh5rjA1eFAyRWT4StfmuRYYNtezivpqY6InQ', '2021-03-09 09:00:59.351895');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('sv0pgljp60zqog4bft80npmp4d2szb2m', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1lMoc7:qELh29qEvCEUl_iCcVuyWPT7nuvP5Vl8gHGlIFFWF8g', '2021-04-01 09:06:43.157317');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('6pnh9m1dmcgvorzsku3fi9s7481inl53', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1lMuJQ:T8i2MHJEBRF3Z8M-R3ZOBPXQtFylWgaYnKgvQOUm9BQ', '2021-04-01 15:11:48.152029');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('f2j7sluhwphdnojrhl9273gb4mjtdk4l', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1lND3g:FL4jbgVO183uO6OUXnpBVFQ-HZTsD01f0T8hdYBJDd0', '2021-04-02 11:12:48.266235');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('se8a2u0oa3q8b1bpou1ie3orkcu0jlas', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1lNb99:Z20gytzxNvTY2i3UFit-nwOFthZIZ0Oy21jxogIMCHE', '2021-04-03 12:56:03.406453');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('hxezdksaqghc5m2r6zs625ujc3g846lt', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1lU7Ew:_igXvzXIam8if5qK3_KN30ub3OP4o3LWDfvVznujuyA', '2021-04-21 12:24:58.111223');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('7w31noqd5wrjmax7or83r1mh20gjvvl5', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1lVH1V:M5b9xk1OLns437VGIyNDt4MkwkofUQE3rATwb1KLbes', '2021-04-24 17:03:53.851585');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('u6zkqrnvuy87t8pbpnx54ud7b1f9tz2g', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1lVewZ:XUEs00crb6UzuRm5YZuML-ndk5GGKhJumXbzv4lm7OY', '2021-04-25 18:36:23.676968');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('obi1rsyzswattoufzagva34a0l4fwlz7', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1lWxjV:Skvk0-XpZ0MXBRvmaHIkGn8zv0chb1L8Dj5HjQ_AWCE', '2021-04-29 08:52:17.622905');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('1se1v3fd8d029frz313m0y25otj3zey9', '.eJxVjMsOwiAQAP-FsyHLaykevfsNZGFRqoYmpT0Z_92Q9KDXmcm8RaR9q3HvZY0zi7Mw4vTLEuVnaUPwg9p9kXlp2zonORJ52C6vC5fX5Wj_BpV6HVvQwKYwmqAmzc7bDB4t-qxVQAPeg1EhFHQ3rQlsyIykiNPkiD0a8fkCofU2gg:1nNXld:am9jQpo-gOsc6i79lIhhsoHfGlC8eyn8M5loeFmBkaI', '2022-03-11 10:24:05.747911');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('zzra2ngez31cylaq83l8kbq1bhfsqosh', '.eJxVjDsOwjAQBe_iGlms8YdQ0ucM1q53jQPIluKkQtwdIqWA9s3Me6mI61Li2mWOE6uLsurwuxGmh9QN8B3rrenU6jJPpDdF77TrsbE8r7v7d1Cwl28tx4wAzDQ4pgQnl00y3kp2AuSDRwkIgz2zyZCtOEfBiA0cMotNiOr9AQytOSI:1nNZQq:KSj6eAOaRGtEn7ev909jxcA6iNnZUqelZWnTKLGnwwk', '2022-03-11 12:10:44.008616');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('wxjzokjyxby59w7jlpb2qfake132rwng', '.eJxVjEEOwiAQRe_C2pCWMC24dO8ZyMwwSNVAUtpV491tky50-997f1MB1yWHtckcpqiuCtTldyPkl5QDxCeWR9VcyzJPpA9Fn7Tpe43yvp3u30HGlvfa8Jgis1hKMrgk3QgISN6aJJK6KM6Q9wOJdQbBUwThvgNn3a5Bn9TnCyq3OTc:1nNZoF:aiB_5HMHNoKaiKUy1RIZcTctRRHDDA_-y1jkcqqnt0o', '2022-03-11 12:34:55.108874');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('ip82u62xefwhxjo53299nd1e9px1pfko', '.eJxVjDsOwjAQBe_iGlms8YdQ0ucM1q53jQPIluKkQtwdIqWA9s3Me6mI61Li2mWOE6uLsurwuxGmh9QN8B3rrenU6jJPpDdF77TrsbE8r7v7d1Cwl28tx4wAzDQ4pgQnl00y3kp2AuSDRwkIgz2zyZCtOEfBiA0cMotNiOr9AQytOSI:1nNa9s:tgWEmPRYbW_sRaVGyCWGWS04vxG7v2L0XPxbzNfVvUg', '2022-03-11 12:57:16.087012');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('m9ifj434nj47b2kk1yi5eukpi0hbik5x', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nNtWe:BxnNw4MLClCz_RgMH52PlSH1bjX5p1zaUuocFYpYHWU', '2022-03-12 09:38:04.278002');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('9b8c6rc25fb26gu21okhp38entfa1055', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nOaOO:kInj9wCTyHg9oFCkQ7qI5B_1JY0jrvyDRBpmFgwKzMU', '2022-03-14 07:24:24.792523');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('qe98sbcws7opfa4dfc4n3ajrvsdqe0r5', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nOaOP:Jmz2J6YY2vgMa-IUmX2R1gHD-A_p2Tydq32r7tKtzbQ', '2022-03-14 07:24:25.286917');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('qxfcti4typuvcqi2z1k40qx8ad66f3ms', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nOaOR:0b1ykP2BuLIsXXzm03_ELy6h6t6lRDZNXZS-8ZliQ7o', '2022-03-14 07:24:27.084188');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('f19wo0k8b661pbcq3w62pl1p3u8rb48f', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nOaOR:0b1ykP2BuLIsXXzm03_ELy6h6t6lRDZNXZS-8ZliQ7o', '2022-03-14 07:24:27.376580');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('0i8q3lilnlnmcevg6eysvkhzmnp8c1nk', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nOaOT:f05PWJ_PQta46XDH-s1MOGiahIo6d1_61xe9M2lW6_0', '2022-03-14 07:24:29.899669');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('nu2zgi0i8pt5y7ohqi2juhq2isfrwyua', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nOaOl:gGsevw_yvvBWJPmPhTFz8a7j5x0IWtrialxjpaYQ-_I', '2022-03-14 07:24:47.570193');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('31qub12fsie884rmmn9bdg0avaas8y1j', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nOaOm:ijF0DDLWngcbrHcpdw8K2INOBWfzNcHBr8LoKIUeIME', '2022-03-14 07:24:48.891563');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('amxnsjin1z4yzgvide78q9756xnmg4lf', '.eJxVjMEOwiAQRP-FsyHQAtn16N1vILsLStVAUtqT8d9tkx70Npn3Zt4q0rqUuPY8xymps7Lq9NsxyTPXHaQH1XvT0uoyT6x3RR-062tL-XU53L-DQr1sa_AEPIBNIzhBTAZMoNEIIFvvGdEIWtwCW3YgZhChdLPZcQjBMKvPF8hNN6I:1nP0vV:7xyt1leGS7nVuybeARDsB4KLw0HkR4PUn1xT-GFWozk', '2022-03-15 11:44:21.756259');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('5uql1fi3omf2achjdnkegdysyldm29fl', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nP1bE:3LebS5PczJtj6o9V9M8-MQvyR0fRdt-f0quRy5YMN8U', '2022-03-15 12:27:28.461728');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('nckgy3k3pb153pugg2gosvxihln5ik5v', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nQPJH:AuPUWgFRK1CepLAvnR2dhxdUp1DaTD8SvOmAOhOn3ko', '2022-03-19 07:58:39.392729');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('w0lc18sioww7cmiu7cv9b6sm15azgyjn', '.eJxVjMsOwiAQAP-FsyHLaykevfsNZGFRqoYmpT0Z_92Q9KDXmcm8RaR9q3HvZY0zi7Mw4vTLEuVnaUPwg9p9kXlp2zonORJ52C6vC5fX5Wj_BpV6HVvQwKYwmqAmzc7bDB4t-qxVQAPeg1EhFHQ3rQlsyIykiNPkiD0a8fkCofU2gg:1nQQdh:Ty8GgPGz_wE237eSJDoGlz3s2iHBhxCV-hFQRscf7Bc', '2022-03-19 09:23:49.834481');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('cu0vfztz9xgypvknh13q67wrqhvrtojk', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nQR33:iHURKOt8CHTjsT1f_Xgf6sdelYUUcFeqsL3wqL14-Bs', '2022-03-19 09:50:01.623996');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('hlh06h0ootv1ieopnfx5wuqbnncq53pz', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nQRrJ:QYdlKGmJpQLmnzwpofeNFVtQE33ilIpm1XYI6KcRoEI', '2022-03-19 10:41:57.184007');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('a81ptd4vp5ka3iqu35fzc262nkytndy5', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nQTn7:atMYend_hmkOuPaZWahvO_DBIaxIn6Pd3Z5SyYdCNHY', '2022-03-19 12:45:45.797955');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('oms8cv155rjdo1k0p8ktlzb3f3iubltt', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nSDbV:0Y_oKFbrlSE3bW9i_JsBZnz3fHs8fzdISRLpzGA-bp4', '2022-03-24 07:52:57.248327');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('jobgefvbx60glcuq0p88s745ak2go0c4', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nSwHS:ztybBEffEEPJdbGTZEgzvAaXARnfyfwMaemm2pqCpdw', '2022-03-26 07:35:14.150046');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('8m1f0gltt1rtk07m982kw3avy0walbzt', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nV6qB:xKm35X_Eio27c6XMrsB-8aOQTd8L1XSWq_uZSw5kYO8', '2022-04-01 07:16:03.454780');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('ywdo91dyesuvuh3ri0ey9xw0gjjbklok', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nVDSt:jkDtreWbMYp68eSlO5000n6aOje0ZcZxHLeO_rkjxv4', '2022-04-01 14:20:27.958995');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('9irh5in7o26vka13x3oqarhptzq5jvhk', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nVDWX:i8RzW4o0HXqo3c9uETmO6QssTE38O5ahVbvz7w7jF-I', '2022-04-01 14:24:13.734394');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('vxvlfpwp2gbx86w2xyy1dk8zorjsw2eh', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nWBsc:K1g6rwrXhhGz0DC6kQ7g6nNjr6gu27AaYCS40HN8ggQ', '2022-04-04 06:51:02.575852');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('9wlscjgt68vsp1kxrkuwpwlqu9cc5o2p', '.eJxVjDsOwjAQBe_iGlms8YdQ0ucM1q53jQPIluKkQtwdIqWA9s3Me6mI61Li2mWOE6uLsurwuxGmh9QN8B3rrenU6jJPpDdF77TrsbE8r7v7d1Cwl28tx4wAzDQ4pgQnl00y3kp2AuSDRwkIgz2zyZCtOEfBiA0cMotNiOr9AQytOSI:1nWBzD:dn6X4JYR0fMqGU5J-GmOTRKfWm_9ER1rY7aS-1pCkYk', '2022-04-04 06:57:51.322846');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('p4u68ijvcsx5oe8o842dt45oas4w0lnf', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nWIYD:yk9-mCVEM74ZA8GG1lCLCvUk7-XNO75I-gxH1oJmaRg', '2022-04-04 13:58:25.238989');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('v65fufacs3revigfjiwg4kn2kknfo6kx', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nX1M4:ycRPxMV_6SWZhyToITYO50VcLtXW8yrDda_2M6A_sa4', '2022-04-06 13:48:52.823820');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('e0diryysafbdq7tmkcmm3k2vri743m81', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nXIhl:5UimRV2Hdon7BfZ7Ash5jTpFs8t5yYiF7mzOHKPpRqk', '2022-04-07 08:20:25.473160');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('wi9ybm8qy1tpmqp2ld9ljdoxui4qsvnh', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nY3dv:5WbQpJiYgvczJERHJ3hrYQK-U7DNN6R2H5R8-XaC2E8', '2022-04-09 10:27:35.925084');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('ngrox11o25nuj9zh9iatl2dinl97w538', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nY6HO:GcoJ6_aoibUgzFbkNtNssDykgxzYwxsTFhbiRVYFDz8', '2022-04-09 13:16:30.226087');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('stw4ezl5dded3jdi9v46b87nav3wfffg', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nY8VW:haB8ZpnO4ZhG7RmggJ1hjNokHWpICP9VTxMns24EPEY', '2022-04-09 15:39:14.013061');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('ddxik258o0ceo99a0ieh1xm4tvjyrx01', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nYjNF:afYUHjOy6i_wGQMQOODQi620yTsjNhC4m-eAtXo6Iy8', '2022-04-11 07:01:09.347940');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('w1q354dtkmqszqdoa24mjiznoam0quq9', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nYjRY:w0mv6ro2bUbNYbT_EIHswEMTjGuKik3ppDFzeQmtAW0', '2022-04-11 07:05:36.576625');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('66nt5egw7hkybr8u2tdvrqwjmo06zmeg', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nYjta:aetLfNcPZQp8seJ6GCy5wQO0aV8TJTP9fKqSYOr-2MM', '2022-04-11 07:34:34.064648');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('ho2fz37nyfmjruea50s95njm6kbn9mfe', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nZTlZ:6XdLVFrwyJ2HauwFTuaBiL4UNQwr-954OA7eM3PEIGc', '2022-04-13 08:33:21.751699');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('jdn1istilocmgzzwo9we0v2ljxrcf7qy', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nc6JG:-szZ0StVjRL8OFui-VuDB32RiiInVTt4_JYFz43i4_s', '2022-04-20 14:06:58.022190');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('8jkxxe913lp3oej9djxtu07889bydu7z', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1ncSt0:b3HbYYgl1q1OKgP6SvEAh9_WbhSjxUJvFVgXDfoN-FY', '2022-04-21 14:13:22.530178');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('311cj90jt08t282gk9x4wgvgw0bm9sev', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1ncSwc:2cKra1XHyIncmvKlhuFJ1qTxuXU7Ldv1S6yGPxtstUE', '2022-04-21 14:17:06.115226');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('g6rllcfid5ehe2pxaxfsbm06dz4vub57', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nirkz:3bmz_9sIxktkFVz7Hrmxecf26DidjcdiBkQmE0rMWxk', '2022-05-09 05:59:33.263735');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('sv9kiozabgr932k8dnhqebn839njrflw', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nirsR:UHQ0KmlpXSTmqXiLghnWxjQtSJG0viZ485t0CSWtsKo', '2022-05-09 06:07:15.031066');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('hj6ov42ydemrneqqqblqpk9de4zr50p7', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1niuaP:4eghtOxZ-Ig_mOGvPRh2uFyt6cl3nytb87_Bf1deXY0', '2022-05-09 09:00:49.794295');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('xztqa18k3wfiz23dbuhf5k6k2zcjmsc6', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1njgqz:2brI4D6dwsXMVeAZIySRMuMG3fIjsfKyXG9h0MfIYFQ', '2022-05-11 12:33:09.246217');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('0a4kp1vrlgvm5gr993u9hwy58mfehorf', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nkPR9:_Up0uC1wsJn8k923SNSMRPFuVPDtK8z5RfQ1wOipDxg', '2022-05-13 12:09:27.868342');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('pjyovpf8s0ek552yqsz9ne7ys33vvxch', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1noMG7:1beeu5bWH9nzfBFl-Fmn6NWL6_FucBQsJs8O5OFfNWQ', '2022-05-24 09:34:23.505549');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('wr8flhnor2wea4sl3br8zk6ufh7b14ph', '.eJxVjMsOwiAQAP-FsyHLaykevfsNZGFRqoYmpT0Z_92Q9KDXmcm8RaR9q3HvZY0zi7Mw4vTLEuVnaUPwg9p9kXlp2zonORJ52C6vC5fX5Wj_BpV6HVvQwKYwmqAmzc7bDB4t-qxVQAPeg1EhFHQ3rQlsyIykiNPkiD0a8fkCofU2gg:1nqrfY:QrEbrN8QelLBAoXlyD7CLN3QKe28TyD_ajbXR8FWoxQ', '2022-05-31 07:31:00.378121');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('4egnta5c9d6tfsl3cy7325pp29gh1cje', '.eJxVjMEOwiAQRP-FsyHQAtn16N1vILsLStVAUtqT8d9tkx70Npn3Zt4q0rqUuPY8xymps7Lq9NsxyTPXHaQH1XvT0uoyT6x3RR-062tL-XU53L-DQr1sa_AEPIBNIzhBTAZMoNEIIFvvGdEIWtwCW3YgZhChdLPZcQjBMKvPF8hNN6I:1nqrg8:kX3yiS2J8we6D8lGdYpgiBlBURH4LKX5PqYmVEfRm5A', '2022-05-31 07:31:36.843767');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('bdkof5en0qkotympcjyo6efsaoybhxka', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nrFeS:BYJsLX3bP2V7gR_zvUcrEUn4Ui1qM43ZTlAmfqNXfSw', '2022-06-01 09:07:28.733117');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('ynwvzoi4h08gpqct4860xnsmr07db637', '.eJxVjEEOwiAURO_C2hDgkw-4dO8ZCHxAqgaS0q4a726bdKHJrOa9mY35sC7VryPPfkrsyiS7_HYx0Cu3A6RnaI_OqbdlniI_FH7Swe895fftdP8Oahh1XwtE0JCiBKHAYQqKrC3gSpYAao-hgtpZLaShjCiLChacQUeCUiH2-QKuljbr:1nuUJs:XDUtDEzdSgdLvjdopo_-lwA-ZlUdF2gVuNhQRQUY3u0', '2022-06-10 07:23:36.592590');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('4gla3remo45fk45raxa0ygjqdwu2zh7l', '.eJxVjEEOwiAURO_C2hDgkw-4dO8ZCHxAqgaS0q4a726bdKHJrOa9mY35sC7VryPPfkrsyiS7_HYx0Cu3A6RnaI_OqbdlniI_FH7Swe895fftdP8Oahh1XwtE0JCiBKHAYQqKrC3gSpYAao-hgtpZLaShjCiLChacQUeCUiH2-QKuljbr:1nuUlz:5GGVC_1l3HZnyHt6pvog-AVdBdc5Oo6J03bFI2DC6fA', '2022-06-10 07:52:39.652375');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('3idzixdpkpatvdmkj2fdhsqol95nnc1x', '.eJxVjMsOwiAQAP-FsyHLaykevfsNZGFRqoYmpT0Z_92Q9KDXmcm8RaR9q3HvZY0zi7Mw4vTLEuVnaUPwg9p9kXlp2zonORJ52C6vC5fX5Wj_BpV6HVvQwKYwmqAmzc7bDB4t-qxVQAPeg1EhFHQ3rQlsyIykiNPkiD0a8fkCofU2gg:1nvwO6:j7x5Qyqgbqg9JA0F0a2NgOZ_Jlyt6qgQA3OGOeWnaFA', '2022-06-14 07:33:58.066712');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('g4cchdngubqk6dplvawjyh9cr2i25yaa', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nwMJH:PVyhAWRlGiTbD7LCR9yGtRKSBRNA1uGdxtKcFnPHZcw', '2022-06-15 11:14:43.262386');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('nmtw387jcnu8ouvykhs4skqphb0diovt', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1nwMMv:FxX6ZA37QNxQ1Z66hq2ov2M2R8z7gx36g985_U9LVbQ', '2022-06-15 11:18:29.592000');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('0se5yvnpg6xg98bsg636rv8y0fttj4h0', '.eJxVjMsOwiAQAP-FsyHLaykevfsNZGFRqoYmpT0Z_92Q9KDXmcm8RaR9q3HvZY0zi7Mw4vTLEuVnaUPwg9p9kXlp2zonORJ52C6vC5fX5Wj_BpV6HVvQwKYwmqAmzc7bDB4t-qxVQAPeg1EhFHQ3rQlsyIykiNPkiD0a8fkCofU2gg:1nx0oJ:hvxL_2rJdDFWHSckwCsXjq8M5-AG3BVquJgfxFQV_y8', '2022-06-17 06:29:27.655286');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('s29vxsexid193zf2pllvytps2yo3ypsl', '.eJxVjMsOwiAQAP-FsyHLaykevfsNZGFRqoYmpT0Z_92Q9KDXmcm8RaR9q3HvZY0zi7Mw4vTLEuVnaUPwg9p9kXlp2zonORJ52C6vC5fX5Wj_BpV6HVvQwKYwmqAmzc7bDB4t-qxVQAPeg1EhFHQ3rQlsyIykiNPkiD0a8fkCofU2gg:1nx0oJ:hvxL_2rJdDFWHSckwCsXjq8M5-AG3BVquJgfxFQV_y8', '2022-06-17 06:29:27.906176');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('ecey5u9hjy2njcnz6tr0i7buqesi24c8', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1o14xh:MCzLpUOUjyr7wV-1JjXGaBeLwzFUk_9iSdSr_QrhCW8', '2022-06-28 11:43:57.703487');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('f65quxscsj6ho3i5smsp54ueklvnda8k', '.eJxVjMsOwiAQAP-FsyHLaykevfsNZGFRqoYmpT0Z_92Q9KDXmcm8RaR9q3HvZY0zi7Mw4vTLEuVnaUPwg9p9kXlp2zonORJ52C6vC5fX5Wj_BpV6HVvQwKYwmqAmzc7bDB4t-qxVQAPeg1EhFHQ3rQlsyIykiNPkiD0a8fkCofU2gg:1o3CB4:fKOo04WW_sHL0QuIQpnpIduZ6QOgKCSbMOZhIx33Qkc', '2022-07-04 07:50:30.645778');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('6kw7ml8wslw2yznyw9tvm0ar9qr53h9w', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1o3ZwU:m4O6w01aSV2ZmJQiaEcsCrxMXNe_16LUnjanSTjCNeg', '2022-07-05 09:13:02.422870');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('84ss76rt2clbbzlgqmf1fnjzzo56v5qo', '.eJxVjMsOwiAQAP-FsyHLaykevfsNZGFRqoYmpT0Z_92Q9KDXmcm8RaR9q3HvZY0zi7Mw4vTLEuVnaUPwg9p9kXlp2zonORJ52C6vC5fX5Wj_BpV6HVvQwKYwmqAmzc7bDB4t-qxVQAPeg1EhFHQ3rQlsyIykiNPkiD0a8fkCofU2gg:1o3aQu:9IPpPEWqKx2KmbWv3l6-73UucX1e9h_mxthrtZXkhWA', '2022-07-05 09:44:28.670477');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('9zijtyhtjjopvoqjiootvlrg9t64d2ka', '.eJxVjMsOwiAQAP-FsyHLaykevfsNZGFRqoYmpT0Z_92Q9KDXmcm8RaR9q3HvZY0zi7Mw4vTLEuVnaUPwg9p9kXlp2zonORJ52C6vC5fX5Wj_BpV6HVvQwKYwmqAmzc7bDB4t-qxVQAPeg1EhFHQ3rQlsyIykiNPkiD0a8fkCofU2gg:1o8MPX:1ncsmdCalsP7xlXD695x9uzLUM1UanBkK9cSfV0OOgE', '2022-07-18 13:46:47.865825');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('tqmp8osrqhs475pknlb8k5rhy2hurd5z', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1o941M:VE1BxL7TJTZlOfor5w-YpovrRh5JwXqUoblGSX3MErs', '2022-07-20 12:20:44.801532');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('nhj8a6q8gy6lnj6vvnzin76atex8igc5', '.eJxVjEEOwiAQRe_C2pAyQA0u3XsGMjAzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jROqiQJ1-t4T5yXUH9MB6bzq3usxT0ruiD9r1rRG_rof7d1Cwl29twTN4BBpzcGQtYTKCIg6EfJYRjLXGUQrnNATOSEKcGRwMVnwQp94fAVQ45g:1oB4gC:TChMv0l73821Jcz6DZFh-XUwmfOfhjdO4kZ4NfktKUY', '2022-07-26 01:27:12.164856');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('7b1mjit0g0cnk8y22js00ooydc6ozhvt', '.eJxVjMsOwiAQAP-FsyHLaykevfsNZGFRqoYmpT0Z_92Q9KDXmcm8RaR9q3HvZY0zi7Mw4vTLEuVnaUPwg9p9kXlp2zonORJ52C6vC5fX5Wj_BpV6HVvQwKYwmqAmzc7bDB4t-qxVQAPeg1EhFHQ3rQlsyIykiNPkiD0a8fkCofU2gg:1oDgVB:mTm90KEXJBaw_nj7YW_uSIL-gK9BsyRqAP20HJdSZRo', '2022-08-02 06:14:37.896759');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('gah9sekzq3hjkcgt97n4rj7dhhn5tvwx', '.eJxVjDsOwjAQBe_iGlmJ119Kes5grXdtHECOFCcV4u4QKQW0b2beS0Tc1hq3npc4sTgLJU6_W0J65LYDvmO7zZLmti5TkrsiD9rldeb8vBzu30HFXr81gudAwNmYAsr50asRfLI2FyLjiwpe28GiTswhD6E4pzQgBFtIUQni_QHcRjfJ:1oHlZF:GCxYJivNWmMhEoTUN5CsuagHxI0aDLvLNDr4iO4uFqE', '2022-08-13 12:27:41.227103');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('qur3wxh8p3cwhwvfa7ub0o8dktojvi5j', '.eJxVjDsOwjAQBe_iGlmJ119Kes5grXdtHECOFCcV4u4QKQW0b2beS0Tc1hq3npc4sTgLJU6_W0J65LYDvmO7zZLmti5TkrsiD9rldeb8vBzu30HFXr81gudAwNmYAsr50asRfLI2FyLjiwpe28GiTswhD6E4pzQgBFtIUQni_QHcRjfJ:1oIPeh:Anstoig3DqXW_ryt2XETrUlvPjljJVFAU6xBn1dNAXw', '2022-08-15 07:15:59.248010');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('6mpmh8e1x2fsv60l3me64m0gas93hshu', '.eJxVjEEOwiAQRe_C2pCBWsq4dN8zEIYZpGpoUtqV8e7apAvd_vfef6kQt7WErckSJlYX1anT70YxPaTugO-x3mad5rouE-ld0QdtepxZntfD_TsosZVvbSUbDw4hJfFn8Fk8kTNCDjBLj4NliwkYxdDA1DMgmmxJRAC4I_X-APMFOJs:1oImkv:kg_spebxa6GA_cEw3q6IO2KdTn7nbBGxn6cPTh7Ku1A', '2022-08-16 07:55:57.128126');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('c29uxvt3s870jh6yl6v1pmbo7pysqy3o', '.eJxVjDsOwjAQBe_iGln-JjElfc5g7XrXOIAcKU4qxN1JpBTQvpk3bxFhW0vcGi9xInEVWlx-N4T05HoAekC9zzLNdV0mlIciT9rkOBO_bqf7FyjQyv4GhTZ5NdghE2iju6wMuz5lZ4PSyJ0nbfdcIGUZ-0QuMJFxXmG2zoH4fAHn3zhD:1oNZen:AJom_RHe9P8uOTxePJL8-qmWdoErwlQlYzNp5WHKbqg', '2022-08-29 12:57:25.055259');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('8k9tnkcyty4bf19k8k8uvb9pzewus78t', '.eJxVjDsOwjAQBe_iGllr4y8lPWew1rs2DqBEipMKcXcSKQW0M_PeWyRcl5bWXuY0sLgIJ06_LCM9y7gLfuB4nyRN4zIPWe6JPGyXt4nL63q0fwcNe9vWMRDbDETaOM8KAbBoMMpsOFQOtQTNUCFGf_bofLCOjKnki1WgchWfL-kSN9k:1oQ0iH:1QOX5WNPRYPbMTIp7DXoAnpmJ9DCkwTwcIaDOq5s5vo', '2022-09-05 06:15:05.894292');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('l3wtd5au90nnyt3gkcx7gsosncf1lu4s', '.eJxVjDsOwjAQBe_iGllr4y8lPWew1rs2DqBEipMKcXcSKQW0M_PeWyRcl5bWXuY0sLgIJ06_LCM9y7gLfuB4nyRN4zIPWe6JPGyXt4nL63q0fwcNe9vWMRDbDETaOM8KAbBoMMpsOFQOtQTNUCFGf_bofLCOjKnki1WgchWfL-kSN9k:1oRFBv:cewGTzEBISjjUHtKgwALZ3aLILUl6QkkPNxOSI7Sfn4', '2022-09-08 15:54:47.009269');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('tn1b18y1wr6fes4oi0crvhy9hyawb5xr', '.eJxVjDkOwjAQRe_iGlleMl4o6TmDNeMFB5AtxUmFuDtESgHtf-_9Fwu4rTVsIy9hTuzMLDv9boTxkdsO0h3brfPY27rMxHeFH3Twa0_5eTncv4OKo35rjQRgQFjhIBtMErzNIEgoabPXMRWNjiwASuEKYFQKvfJlIjJxIs_eH83vN6M:1w8viZ:VkwPJwMNJnSqNPQvk8F1zfXsmxQ8qAVyU4zThccnams', '2026-04-18 07:46:55.126030');
INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES ('xwz2pqci26hxsumm1g76397462i8o4gd', '.eJxVjDkOwjAQRe_iGlleMl4o6TmDNeMFB5AtxUmFuDtESgHtf-_9Fwu4rTVsIy9hTuzMLDv9boTxkdsO0h3brfPY27rMxHeFH3Twa0_5eTncv4OKo35rjQRgQFjhIBtMErzNIEgoabPXMRWNjiwASuEKYFQKvfJlIjJxIs_eH83vN6M:1wA0uR:-vR4QBebmpB1CxOVSMF07aTA4aHpyi-P_0b4a1dQLKM', '2026-04-21 07:31:39.557102');
COMMIT;

-- ----------------------------
-- Table structure for django_site
-- ----------------------------
DROP TABLE IF EXISTS "django_site";
CREATE TABLE "django_site" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(50) NOT NULL, "domain" varchar(100) NOT NULL UNIQUE);

-- ----------------------------
-- Records of django_site
-- ----------------------------
BEGIN;
INSERT INTO "django_site" ("id", "name", "domain") VALUES (1, 'example.com', 'example.com');
COMMIT;

-- ----------------------------
-- Table structure for exportateur_exportateur
-- ----------------------------
DROP TABLE IF EXISTS "exportateur_exportateur";
CREATE TABLE "exportateur_exportateur" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "nom" varchar(500) NOT NULL, "adresse" varchar(500) NOT NULL, "email" varchar(254) NOT NULL, "NIF" varchar(500) NOT NULL, "NIF_PJ" varchar(100) NOT NULL, "STAT" varchar(500) NOT NULL, "STAT_PJ" varchar(100) NOT NULL, "RCS" varchar(500) NOT NULL, "RCS_PJ" varchar(100) NOT NULL, "ID_BSC" varchar(500) NOT NULL, "login" varchar(500) NOT NULL, "password" varchar(500) NOT NULL, "banque" varchar(500) NOT NULL, "numCompte" varchar(500) NOT NULL, "CIN_gerant" integer NULL, "CIN_PJ" varchar(100) NOT NULL, "cachet" varchar(100) NOT NULL, "numTel" varchar(500) NOT NULL);

-- ----------------------------
-- Records of exportateur_exportateur
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for facture_blmoto
-- ----------------------------
DROP TABLE IF EXISTS "facture_blmoto";
CREATE TABLE "facture_blmoto" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "Num_BL" integer NULL);

-- ----------------------------
-- Records of facture_blmoto
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for facture_facturemoto
-- ----------------------------
DROP TABLE IF EXISTS "facture_facturemoto";
CREATE TABLE "facture_facturemoto" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "Num_Facture" integer NULL);

-- ----------------------------
-- Records of facture_facturemoto
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for facture_factureoperation
-- ----------------------------
DROP TABLE IF EXISTS "facture_factureoperation";
CREATE TABLE "facture_factureoperation" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "OT_Honoraire" decimal NULL, "Autres_Montant" decimal NULL, "BAD_Montant" decimal NULL, "Overstay_Montant" decimal NULL, "Surestaries_Montant" decimal NULL, "Debarquement" decimal NULL, "Magasinage_Montant" decimal NULL, "Droit_Compromis" decimal NULL, "Amende_Montant" decimal NULL, "OV_Montant" decimal NULL, "OV_Docker" decimal NULL, "Montant_Fret" decimal NULL, "Immobilisation" decimal NULL, "Num_Facture" decimal NULL, "Nom_Client" decimal NULL, "Adresse_Client" decimal NULL, "Contact_Client" decimal NULL, "email_client" decimal NULL, "Date_Facture" decimal NULL, "SousTotal" decimal NULL, "Tax" decimal NULL, "TotalFacture" decimal NULL, "Ref" integer NULL, "idOp_id" integer NOT NULL REFERENCES "operation_operation" ("id") DEFERRABLE INITIALLY DEFERRED);

-- ----------------------------
-- Records of facture_factureoperation
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for importateur_importateur
-- ----------------------------
DROP TABLE IF EXISTS "importateur_importateur";
CREATE TABLE "importateur_importateur" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "nom" varchar(500) NOT NULL, "adresse" varchar(500) NOT NULL, "email" varchar(254) NOT NULL, "NIF" varchar(500) NOT NULL, "NIF_PJ" varchar(100) NOT NULL, "STAT" varchar(500) NOT NULL, "STAT_PJ" varchar(100) NOT NULL, "RCS" varchar(500) NOT NULL, "RCS_PJ" varchar(100) NOT NULL, "ID_BSC" varchar(500) NOT NULL, "login" varchar(500) NOT NULL, "password" varchar(500) NOT NULL, "banque" varchar(500) NOT NULL, "numCompte" varchar(500) NOT NULL, "CIN_gerant" integer NULL, "CIN_PJ" varchar(100) NOT NULL, "cachet" varchar(100) NOT NULL, "numTel" varchar(500) NOT NULL);

-- ----------------------------
-- Records of importateur_importateur
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for moto_moto
-- ----------------------------
DROP TABLE IF EXISTS "moto_moto";
CREATE TABLE "moto_moto" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "ID_Moto" integer NULL UNIQUE, "date_entree" date NULL, "nom_moto" varchar(50) NULL, "num_moteur" varchar(50) NULL UNIQUE, "FRN" varchar(50) NULL, "PA" decimal NULL, "PV" decimal NULL, "date_vente" date NULL, "nom_client_1" varchar(50) NULL, "CIN_Num_Client_1" varchar(50) NULL, "PJ_CIN_Client_1_recto" varchar(100) NULL, "PJ_CIN_Client_1_verso" varchar(100) NULL, "tel_client_1" varchar(50) NULL, "adresse_client_1" varchar(50) NULL, "num_BL" integer NULL UNIQUE, "num_sur_facture" integer NULL UNIQUE, "PJ_Facture" varchar(100) NULL, "nom_client_2" varchar(50) NULL, "tel_client_2" varchar(50) NULL, "adresse_client_2" varchar(50) NULL, "CIN_Num_Client_2" varchar(50) NULL, "PJ_CIN_Client_2_recto" varchar(100) NULL, "PJ_CIN_Client_2_verso" varchar(100) NULL, "montant_reparation" decimal NULL, "motif_reparation" varchar(50) NULL, "commercial" varchar(50) NULL, "volume_moteur" varchar(50) NULL, "PU_HT" decimal NULL, "TVA" decimal NULL, "PT" decimal NULL, "montant_lettre" varchar(50) NOT NULL, "Ref" integer NULL, "archive" bool NOT NULL, "carte_rose" varchar(50) NULL, "model_no_1" varchar(50) NULL, "carte_grise" varchar(50) NULL, "magasin" varchar(50) NULL, "date_BL" date NULL, "date_facture" date NULL, "date_arrivee" date NULL, "localisation" varchar(50) NULL, "fournisseur" varchar(50) NULL);

-- ----------------------------
-- Records of moto_moto
-- ----------------------------
BEGIN;
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (33, 13, '2022-02-25', 'KYMCO RACING S', 'SR30JD-112783', 'FIM', 9000000, 4000000, '2022-08-22', '', '', '', '', '', '', NULL, 4, '', 'AKOTO', '0334', '98WE', '11 23', '', '', 0, NULL, 'ZA', '100 CC', 3333333, 666666, NULL, '', 1, 1, NULL, '', NULL, '', NULL, '2022-08-22', '2022-08-04', 'Showroom', NULL);
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (36, 14, '2022-02-25', 'KYMCO DOWNTOWN 350i ABS', 'SK64CB-101208', 'TIA', 12000000, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (37, 15, '2022-02-25', 'YAMAHA BWS 100', '4VP-901896', 'TIA', 3200000, 2750000, '2022-08-22', 'RAKOS', '', '', '', '034174', '', 1, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', '2022-08-22', NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (264, 16, '2022-06-15', 'KYMCO RACING S', 'SR30JD-100999', 'FYM', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (265, 17, '2022-06-15', 'KYMCO RACING S', 'SR30JC-101061', 'FYM', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (266, 18, '2022-05-21', 'KYMCO RACING S', 'SR25JD-111088', 'D11', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (278, 19, '2022-06-17', 'YAMAHA JOGPRO', '4UF-100248', 'ROYAL', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (288, 20, '2022-06-16', 'PGO TIGRA', 'A5F-13430', 'YAMMY', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (289, 21, '2022-06-17', 'PGO ALPHA MAX', 'J2F-01587', 'FYM', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (290, 22, '2022-06-17', 'YAMAHA FORCE', 'G3E8E-037550', 'FYM', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (294, 23, '2022-06-17', 'YAMAHA RSZERO', 'E3B9E-449767', 'D48/22', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (295, 24, '2022-06-17', 'YAMAHA RSZERO', 'E3B9E-421260', 'ZLM', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (299, 25, '2022-05-15', 'KYMCO RACING S', 'SR30JD-100730', 'D11', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (305, 26, '2022-06-15', 'KYMCO G5', 'SR30AC-100179', 'KHAN', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (306, 27, '2022-05-15', 'PGO ALPHA MAX', 'J2E6F-02516', 'D10', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (307, 28, '2022-06-29', 'PGO TIGRA', 'A5F-12677', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (310, 29, '2022-06-29', 'KYMCO GP', 'SD25UB-202426', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (314, 30, '2022-06-29', 'KYMCO GP', 'SJ25KB-100205', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (322, 31, '2022-06-29', 'KYMCO GP', 'SD25UC-204485', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (328, 32, '2022-06-29', 'KYMCO GP', 'SJ25KB-388969', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (329, 33, '2022-06-29', 'KYMCO JR', 'SG20KA-123625', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (331, 34, '2022-06-29', 'YAMAHA RS ZERO', 'E3B9E-437972', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (333, 35, '2022-06-29', 'YAMAHA RS ZERO', 'E3B9E-617525', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (335, 36, '2022-06-29', 'KYMCO JR', 'SG20KA-117610', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (340, 37, '2022-06-29', 'KYMCO JR', 'SG20KA-231333', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (345, 38, '2022-06-29', 'KYMCO JR', 'SG20KC-108249', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (346, 39, '2022-06-29', 'KYMCO JR', 'SN20GA-105835', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (349, 40, '2022-06-29', 'PGO JBUBU', 'J3F-02008', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (350, 41, '2022-06-29', 'PGO JBUBU', 'J3F-12340', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (351, 42, '2022-06-29', 'PGO JBUBU', 'J3F-28019', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (352, 43, '2022-06-29', 'KYMCO G5 MEGA FI', 'SR25EA-100230', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (354, 44, '2022-06-29', 'KYMCO G5 MEGA FI', 'SR25EA-114411', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (358, 45, '2022-06-29', 'KYMCO G5 MEGA FI', 'SR30ED-104016', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (359, 46, '2022-06-29', 'KYMCO G5 MEGA FI', 'SR30ED-113020', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (363, 47, '2022-06-29', 'AEON OZ', 'T25I-001010', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (369, 48, '2022-06-29', 'KYMCO G6', 'SR25FD-102122', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (370, 49, '2022-06-29', 'KYMCO G6', 'SR30FA-102309', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (372, 50, '2022-06-29', 'KYMCO G6', 'SR25FA-114839', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (373, 51, '2022-06-29', 'YAMAHA FORCE', 'G3H8E-068036', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (378, 52, '2022-06-29', 'KYMCO G5', 'SE25AA-122510', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (384, 53, '2022-06-29', 'KYMCO G5', 'SE30AA-100158', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (385, 54, '2022-06-29', 'KYMCO G5', 'SE30AE-100158', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (386, 55, '2022-06-29', 'KYMCO G5', 'SE30AE-102272', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (387, 56, '2022-06-29', 'KYMCO G5', 'SE25AC-100496', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (390, 57, '2022-06-29', 'KYMCO G5', 'SE30AE102267', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (391, 58, '2022-06-29', 'KYMCO G5', 'SR30AC-203726', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (397, 59, '2022-07-02', 'SYM RX', 'LT-307891', 'D57', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (418, 60, '2022-07-09', 'YAMAHA CYGNUS III', 'E3B8E-491096', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (420, 61, '2022-07-09', 'SYM DRG', 'DB-036337', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (421, 62, '2022-07-09', 'SYM FIGHTER 6', 'DK-000360', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (422, 63, '2022-07-09', 'SYM JET S', 'DH-012750', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (423, 64, '2022-07-09', 'YAMAHA FORCE', 'G3H8E-032573', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (424, 65, '2022-07-09', 'KYMCO G5', 'SE25AA-103305', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (425, 66, '2022-07-09', 'KYMCO G5', 'SE25AA-126473', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (426, 67, '2022-07-09', 'KYMCO G5', 'SE25AA-134015', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (428, 68, '2022-07-09', 'KYMCO G5', 'SR25AA-100820', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (429, 69, '2022-07-09', 'KYMCO G5', 'SR25AA-207683', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (433, 70, '2022-07-09', 'KYMCO G5', 'SE30AA-101501', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (434, 71, '2022-07-09', 'KYMCO G5', 'SE30AH-100279', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (435, 72, '2022-07-09', 'KYMCO G5', 'SE30AH-100836', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (439, 73, '2022-07-09', 'KYMCO GP', 'SD25UA-112130', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (441, 74, '2022-07-09', 'KYMCO GP', 'SD25UA-206025', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (443, 75, '2022-07-09', 'KYMCO GP', 'SD25UB-105327', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (446, 76, '2022-07-09', 'KYMCO RACING KING', 'SC36AE-301771', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (449, 77, '2022-07-09', 'KYMCO G5 MEGA FI', 'SR25EA-108960', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (451, 78, '2022-07-09', 'KYMCO G5 MEGA FI', 'SR25EA-112097', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (456, 79, '2022-07-09', 'KYMCO RACING', 'SR30BB-201832', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (458, 80, '2022-07-09', 'KYMCO RACING', 'SR30BB-211028', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (459, 81, '2022-07-09', 'KYMCO RACING', 'SR30BB-212558', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (460, 82, '2022-07-09', 'KYMCO RACING', 'SR30BB-214428', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (461, 83, '2022-07-09', 'KYMCO RACING', 'SR30BB-216363', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (462, 84, '2022-07-09', 'KYMCO RACING', 'SR30BB-218225', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (463, 85, '2022-07-09', 'KYMCO RACING', 'SR30BB-222361', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (465, 86, '2022-07-09', 'KYMCO RACING', 'SR30BB-226379', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (466, 87, '2022-07-09', 'KYMCO RACING', 'SR30BB-259599', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (468, 88, '2022-07-09', 'KYMCO RACING', 'SR30BB-267757', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (469, 89, '2022-07-09', 'KYMCO RACING', 'SR30BB-304971', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (473, 90, '2022-07-09', 'YAMAHA RS ZERO', 'E3B9E-473120', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (474, 91, '2022-07-09', 'YAMAHA RS ZERO', 'E3B9E-474891', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (475, 92, '2022-07-09', 'PGO TIGRA', 'A1F-03557', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (476, 93, '2022-07-09', 'PGO TIGRA', 'A1F-05342', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (478, 94, '2022-07-09', 'PGO TIGRA', 'A5F-02293', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (480, 95, '2022-07-09', 'PGO TIGRA', 'A5F-07476', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (482, 96, '2022-07-09', 'YAMAHA FORCE', 'G3H8E-005011', 'D56', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (490, 97, '2022-07-15', 'SYM RX', 'LT-337622', 'YAMMY', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (494, 98, '2022-07-15', 'SYM RX', 'LT-345827', 'YAMMY', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (506, 99, '2022-07-22', 'YAMAHA CYGNUS III', 'E3B8E-619937', 'D59/22', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (512, 100, '2022-07-22', 'YAMAHA CYGNUS III', 'E3B8E-649305', 'D59/22', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (513, 101, '2022-07-22', 'YAMAHA CYGNUS III', 'E3B8E-698176', 'D59/22', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (514, 102, '2022-07-22', 'YAMAHA CUXI II', 'E3E4E-556475', 'D59/22', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (515, 103, '2022-07-22', 'KYMCO G6', 'SR30GD-102940', 'D59/22', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (516, 104, '2022-07-22', 'PGO TIGRA', 'A5F-00600', 'D59/22', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (518, 105, '2022-07-22', 'KYMCO G5 MEGA FI', 'SR25EA-110663', 'D59/22', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (519, 106, '2022-07-22', 'AEON OZ', 'T30R-003156', 'D59/22', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (521, 107, '2022-07-22', 'AEON OZ', 'T30R-003685', 'D59/22', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (523, 108, '2022-07-22', 'PGO TIGRA', 'A1F-02850', 'D59/22', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (530, 109, '2022-07-30', 'KYMCO RACING', 'SR30BA-101160', 'NAMANA TSARA', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (531, 110, '2022-07-30', 'KYMCO RACING', 'SR30BB-205299', 'NAMANA TSARA', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (532, 111, '2022-07-30', 'KYMCO RACING', 'SR30BB-202446', 'NAMANA TSARA', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (533, 112, '2022-07-30', 'KYMCO RACING', 'SR30BB-308310', 'NAMANA TSARA', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (534, 113, '2022-07-30', 'KYMCO RACING', 'SR30BB-251650', 'NAMANA TSARA', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (535, 114, '2022-07-30', 'KYMCO RACING', 'SR30BB-313639', 'NAMANA TSARA', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (536, 115, '2022-07-30', 'KYMCO RACING', 'SR30BB-231395', 'NAMANA TSARA', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (546, 116, '2022-03-07', 'KYMCO MANY', 'SE22BA-300977', 'NAMANA TSARA', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (548, 117, '2022-07-30', 'YAMAHA RSZ', 'E390E-261236', 'NAMANA TSARA', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (549, 118, '2022-07-30', 'YAMAHA RSZ', 'E390E-103210', 'NAMANA TSARA', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (550, 119, '2022-07-30', 'KYMCO MANY', 'SE22BC120207', 'NAMANA TSARA', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (551, 120, '2022-07-30', 'YAMAHA RSZ', 'E390E-101569', 'NAMANA TSARA', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (552, 121, '2022-07-30', 'YAMAHA RSZ', 'E3B9E-326450', 'NAMANA TSARA', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (553, 122, '2022-07-30', 'YAMAHA CUXI', 'E3E4E-591306', 'NAMANA TSARA', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (554, 123, '2022-07-30', 'KYMCO RACING S', 'SR25JC-106692', 'NAMANA TSARA', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (555, 124, '2022-07-30', 'PGO TIGRA', 'A5F-03005', 'NAMANA TSARA', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (557, 125, '2022-07-30', 'KYMCO G6', 'SR30FA-135341', 'NAMANA TSARA', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (558, 126, '2022-07-30', 'KYMCO G6', 'SR25FC-103143', 'NAMANA TSARA', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (559, 127, '2022-07-30', 'KYMCO G6', 'SR25FC-103612', 'NAMANA TSARA', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (560, 128, '2022-07-30', 'SYM JET', 'DF-112950', 'NAMANA TSARA', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (561, 129, '2022-07-30', 'SYM JET', 'DF-005788', 'NAMANA TSARA', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (563, 130, '2022-07-30', 'SYM JET', 'DF-014352', 'NAMANA TSARA', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (564, 131, '2022-07-30', 'SYM JET', 'DF-102568', 'NAMANA TSARA', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (565, 132, '2022-07-30', 'SYM JET', 'DF-031422', 'NAMANA TSARA', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (566, 133, '2022-07-30', 'SYM JET', 'DF-107286', 'NAMANA TSARA', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (567, 134, '2022-07-30', 'YAMAHA RS ZERO', 'E3B9E-627437', 'NAMANA TSARA', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (568, 135, '2022-07-30', 'YAMAHA RS ZERO', 'E3B9E-423283', 'NAMANA TSARA', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (570, 136, '2022-07-30', 'YAMAHA RS ZERO', 'E3B9E-419172', 'NAMANA TSARA', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (571, 137, '2022-07-30', 'YAMAHA RS ZERO', 'E3B9E-581102', 'NAMANA TSARA', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
INSERT INTO "moto_moto" ("id", "ID_Moto", "date_entree", "nom_moto", "num_moteur", "FRN", "PA", "PV", "date_vente", "nom_client_1", "CIN_Num_Client_1", "PJ_CIN_Client_1_recto", "PJ_CIN_Client_1_verso", "tel_client_1", "adresse_client_1", "num_BL", "num_sur_facture", "PJ_Facture", "nom_client_2", "tel_client_2", "adresse_client_2", "CIN_Num_Client_2", "PJ_CIN_Client_2_recto", "PJ_CIN_Client_2_verso", "montant_reparation", "motif_reparation", "commercial", "volume_moteur", "PU_HT", "TVA", "PT", "montant_lettre", "Ref", "archive", "carte_rose", "model_no_1", "carte_grise", "magasin", "date_BL", "date_facture", "date_arrivee", "localisation", "fournisseur") VALUES (572, 138, '2022-07-30', 'AEON OZ', 'T30R-001122', 'NAMANA TSARA', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, '', NULL, 0, '', '', '', '', NULL, NULL, NULL, '', '');
COMMIT;

-- ----------------------------
-- Table structure for myapp_flower
-- ----------------------------
DROP TABLE IF EXISTS "myapp_flower";
CREATE TABLE "myapp_flower" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(50) NOT NULL, "description" text NOT NULL, "datepick" date NOT NULL, "image" varchar(100) NOT NULL);

-- ----------------------------
-- Records of myapp_flower
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for myapp_selchoice
-- ----------------------------
DROP TABLE IF EXISTS "myapp_selchoice";
CREATE TABLE "myapp_selchoice" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "titleSelect_id" bigint NOT NULL REFERENCES "myapp_flower" ("id") DEFERRABLE INITIALLY DEFERRED);

-- ----------------------------
-- Records of myapp_selchoice
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for operation_operation
-- ----------------------------
DROP TABLE IF EXISTS "operation_operation";
CREATE TABLE "operation_operation" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "Date_Reception" date NULL, "type_Operation" varchar(50) NOT NULL, "Reference_Reception" varchar(50) NOT NULL, "BL_PJ" varchar(100) NOT NULL, "BL_Num" varchar(50) NOT NULL, "BL_Date" date NULL, "Container" varchar(50) NOT NULL, "Plomb" varchar(50) NOT NULL, "ETA" date NULL, "Marchandise" varchar(50) NOT NULL, "Poids" integer NULL, "Depart" date NULL, "Arrivee_Tana" date NULL, "Client" varchar(50) NOT NULL, "INCOTERM" varchar(50) NOT NULL, "Montant_Invoice" integer NULL, "Devise" integer NULL, "Invoice_PJ" varchar(100) NOT NULL, "Invoice_Num" varchar(50) NOT NULL, "Nbre_Colis" integer NULL, "PJ_PL" varchar(100) NOT NULL, "Gross_Weight" integer NULL, "Net_Weight" integer NULL, "DE_Num" varchar(50) NOT NULL, "DE_PJ" varchar(100) NOT NULL, "Fumigation_Num" varchar(50) NOT NULL, "Fumigation_PJ" varchar(100) NOT NULL, "BSC_ID_Exportateur" varchar(50) NOT NULL, "BSC_Num" varchar(50) NOT NULL, "BSC_ID_Importateur" varchar(50) NOT NULL, "BSC_PJ" varchar(100) NOT NULL, "BSC_Remarque" varchar(50) NOT NULL, "BSC_Depense" integer NULL, "Dom_Num" varchar(50) NOT NULL, "Dom_PJ" varchar(100) NOT NULL, "Dom_Banque" varchar(50) NOT NULL, "Dom_Num_Compte" varchar(50) NOT NULL, "Dom_Depense" integer NULL, "OT_PJ" varchar(100) NOT NULL, "Date_OT" date NULL, "OT_Honoraire" integer NULL, "Autres_Num" varchar(50) NOT NULL, "Champ_1" varchar(50) NOT NULL, "Champ_2" varchar(50) NOT NULL, "Champ_3" varchar(50) NOT NULL, "Champ_4" varchar(50) NOT NULL, "ch1_PJ" varchar(100) NOT NULL, "ch2_PJ" varchar(100) NOT NULL, "ch3_PJ" varchar(100) NOT NULL, "ch4_PJ" varchar(100) NOT NULL, "Autres_Depense" integer NULL, "Prep_Full" bool NOT NULL, "Date_BAD" date NULL, "BAD_Montant" integer NULL, "BAD_PJ" varchar(100) NOT NULL, "Overstay_Nb_jrs" integer NULL, "Overstay_Montant" integer NULL, "Overstay_PJ" varchar(100) NOT NULL, "Surestaries_Nb_jrs" integer NULL, "Surestaries_Montant" integer NULL, "Surestaries_PJ" varchar(100) NOT NULL, "MICTSL_SMMC" varchar(20) NULL, "Date_MICTSL" date NULL, "Montant_MICTSL" integer NULL, "Magasinage_Nb_Jrs" integer NULL, "Magasinage_Montant" integer NULL, "Magasinage_PJ" varchar(100) NOT NULL, "DAU_Date" date NULL, "DAU_Num" varchar(50) NOT NULL, "DAU_Depense" integer NULL, "Circuit" varchar(20) NULL, "Date_Liquidation" date NULL, "Liquidateur" varchar(50) NOT NULL, "Resultat_Scan" varchar(50) NOT NULL, "Resultat_Scan_PJ" varchar(100) NOT NULL, "Resultat_Visite" varchar(100) NOT NULL, "Droit_Compromis" integer NULL, "DC_Mode_Paiement" varchar(20) NULL, "Amende_Montant" integer NULL, "Amende_Mode_Paiement" varchar(20) NULL, "OV_Num" varchar(50) NOT NULL, "OV_Montant" integer NULL, "OV_Date_Paiement" date NULL, "OV_Banque" varchar(50) NOT NULL, "OV_Num_Compte" varchar(50) NULL, "OV_Depense" integer NULL, "OV_Docker" integer NULL, "Date_Chargement" date NULL, "Num_Camion" varchar(50) NOT NULL, "Num_Remorque" varchar(50) NOT NULL, "Nom_Transporteur" varchar(50) NOT NULL, "Nom_Chauffeur" varchar(50) NOT NULL, "Tel_Chauffeur" varchar(50) NOT NULL, "Num_Permis" varchar(50) NOT NULL, "Lieu_Livraison" varchar(50) NOT NULL, "Montant_Fret" integer NULL, "Immobilisation" integer NULL, "Autres_Motifs" varchar(50) NOT NULL, "Autres_Montant" integer NULL, "Num_BS" varchar(50) NOT NULL, "Date_BS" date NULL, "Date_Livraison" date NULL, "Remarque_General" varchar(50) NOT NULL, "Depense_Fixe" integer NULL, "Depense_Autre" integer NULL, "Total" integer NULL, "Facture_OT_Honoraire" decimal NULL, "Facture_Autres_Montant" decimal NULL, "Facture_BAD_Montant" decimal NULL, "Facture_Overstay_Montant" decimal NULL, "Facture_Surestaries_Montant" decimal NULL, "Facture_Debarquement" decimal NULL, "Facture_Magasinage_Montant" decimal NULL, "Facture_Droit_Compromis" decimal NULL, "Facture_Amende_Montant" decimal NULL, "Facture_OV_Montant" decimal NULL, "Facture_OV_Docker" decimal NULL, "Facture_Montant_Fret" decimal NULL, "Facture_Immobilisation" decimal NULL, "Facture_Num_Facture" varchar(50) NOT NULL, "Facture_Nom_Client" varchar(50) NOT NULL, "Facture_Adresse_Client" varchar(50) NOT NULL, "Facture_Contact_Client" varchar(50) NOT NULL, "Facture_email_client" varchar(50) NOT NULL, "Facture_Date_Facture" date NULL, "Facture_SousTotal" decimal NULL, "Tax" decimal NULL, "TotalFacture" decimal NULL, "Exportateur_Name_id" bigint NULL REFERENCES "exportateur_exportateur" ("id") DEFERRABLE INITIALLY DEFERRED, "Importateur_Name_id" bigint NULL REFERENCES "importateur_importateur" ("id") DEFERRABLE INITIALLY DEFERRED, "Nom_Compagnie_id" bigint NULL REFERENCES "compagnie_compagnie" ("id") DEFERRABLE INITIALLY DEFERRED);

-- ----------------------------
-- Records of operation_operation
-- ----------------------------
BEGIN;
INSERT INTO "operation_operation" ("id", "Date_Reception", "type_Operation", "Reference_Reception", "BL_PJ", "BL_Num", "BL_Date", "Container", "Plomb", "ETA", "Marchandise", "Poids", "Depart", "Arrivee_Tana", "Client", "INCOTERM", "Montant_Invoice", "Devise", "Invoice_PJ", "Invoice_Num", "Nbre_Colis", "PJ_PL", "Gross_Weight", "Net_Weight", "DE_Num", "DE_PJ", "Fumigation_Num", "Fumigation_PJ", "BSC_ID_Exportateur", "BSC_Num", "BSC_ID_Importateur", "BSC_PJ", "BSC_Remarque", "BSC_Depense", "Dom_Num", "Dom_PJ", "Dom_Banque", "Dom_Num_Compte", "Dom_Depense", "OT_PJ", "Date_OT", "OT_Honoraire", "Autres_Num", "Champ_1", "Champ_2", "Champ_3", "Champ_4", "ch1_PJ", "ch2_PJ", "ch3_PJ", "ch4_PJ", "Autres_Depense", "Prep_Full", "Date_BAD", "BAD_Montant", "BAD_PJ", "Overstay_Nb_jrs", "Overstay_Montant", "Overstay_PJ", "Surestaries_Nb_jrs", "Surestaries_Montant", "Surestaries_PJ", "MICTSL_SMMC", "Date_MICTSL", "Montant_MICTSL", "Magasinage_Nb_Jrs", "Magasinage_Montant", "Magasinage_PJ", "DAU_Date", "DAU_Num", "DAU_Depense", "Circuit", "Date_Liquidation", "Liquidateur", "Resultat_Scan", "Resultat_Scan_PJ", "Resultat_Visite", "Droit_Compromis", "DC_Mode_Paiement", "Amende_Montant", "Amende_Mode_Paiement", "OV_Num", "OV_Montant", "OV_Date_Paiement", "OV_Banque", "OV_Num_Compte", "OV_Depense", "OV_Docker", "Date_Chargement", "Num_Camion", "Num_Remorque", "Nom_Transporteur", "Nom_Chauffeur", "Tel_Chauffeur", "Num_Permis", "Lieu_Livraison", "Montant_Fret", "Immobilisation", "Autres_Motifs", "Autres_Montant", "Num_BS", "Date_BS", "Date_Livraison", "Remarque_General", "Depense_Fixe", "Depense_Autre", "Total", "Facture_OT_Honoraire", "Facture_Autres_Montant", "Facture_BAD_Montant", "Facture_Overstay_Montant", "Facture_Surestaries_Montant", "Facture_Debarquement", "Facture_Magasinage_Montant", "Facture_Droit_Compromis", "Facture_Amende_Montant", "Facture_OV_Montant", "Facture_OV_Docker", "Facture_Montant_Fret", "Facture_Immobilisation", "Facture_Num_Facture", "Facture_Nom_Client", "Facture_Adresse_Client", "Facture_Contact_Client", "Facture_email_client", "Facture_Date_Facture", "Facture_SousTotal", "Tax", "TotalFacture", "Exportateur_Name_id", "Importateur_Name_id", "Nom_Compagnie_id") VALUES (1, '2021-02-23', 'Importation', '1', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, '', '', NULL, NULL, '', '', NULL, '', NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, 0, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "operation_operation" ("id", "Date_Reception", "type_Operation", "Reference_Reception", "BL_PJ", "BL_Num", "BL_Date", "Container", "Plomb", "ETA", "Marchandise", "Poids", "Depart", "Arrivee_Tana", "Client", "INCOTERM", "Montant_Invoice", "Devise", "Invoice_PJ", "Invoice_Num", "Nbre_Colis", "PJ_PL", "Gross_Weight", "Net_Weight", "DE_Num", "DE_PJ", "Fumigation_Num", "Fumigation_PJ", "BSC_ID_Exportateur", "BSC_Num", "BSC_ID_Importateur", "BSC_PJ", "BSC_Remarque", "BSC_Depense", "Dom_Num", "Dom_PJ", "Dom_Banque", "Dom_Num_Compte", "Dom_Depense", "OT_PJ", "Date_OT", "OT_Honoraire", "Autres_Num", "Champ_1", "Champ_2", "Champ_3", "Champ_4", "ch1_PJ", "ch2_PJ", "ch3_PJ", "ch4_PJ", "Autres_Depense", "Prep_Full", "Date_BAD", "BAD_Montant", "BAD_PJ", "Overstay_Nb_jrs", "Overstay_Montant", "Overstay_PJ", "Surestaries_Nb_jrs", "Surestaries_Montant", "Surestaries_PJ", "MICTSL_SMMC", "Date_MICTSL", "Montant_MICTSL", "Magasinage_Nb_Jrs", "Magasinage_Montant", "Magasinage_PJ", "DAU_Date", "DAU_Num", "DAU_Depense", "Circuit", "Date_Liquidation", "Liquidateur", "Resultat_Scan", "Resultat_Scan_PJ", "Resultat_Visite", "Droit_Compromis", "DC_Mode_Paiement", "Amende_Montant", "Amende_Mode_Paiement", "OV_Num", "OV_Montant", "OV_Date_Paiement", "OV_Banque", "OV_Num_Compte", "OV_Depense", "OV_Docker", "Date_Chargement", "Num_Camion", "Num_Remorque", "Nom_Transporteur", "Nom_Chauffeur", "Tel_Chauffeur", "Num_Permis", "Lieu_Livraison", "Montant_Fret", "Immobilisation", "Autres_Motifs", "Autres_Montant", "Num_BS", "Date_BS", "Date_Livraison", "Remarque_General", "Depense_Fixe", "Depense_Autre", "Total", "Facture_OT_Honoraire", "Facture_Autres_Montant", "Facture_BAD_Montant", "Facture_Overstay_Montant", "Facture_Surestaries_Montant", "Facture_Debarquement", "Facture_Magasinage_Montant", "Facture_Droit_Compromis", "Facture_Amende_Montant", "Facture_OV_Montant", "Facture_OV_Docker", "Facture_Montant_Fret", "Facture_Immobilisation", "Facture_Num_Facture", "Facture_Nom_Client", "Facture_Adresse_Client", "Facture_Contact_Client", "Facture_email_client", "Facture_Date_Facture", "Facture_SousTotal", "Tax", "TotalFacture", "Exportateur_Name_id", "Importateur_Name_id", "Nom_Compagnie_id") VALUES (3, '2021-03-18', 'Importation', '2', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, '', '', NULL, NULL, '', '', NULL, '', NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, 0, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for socialaccount_socialaccount
-- ----------------------------
DROP TABLE IF EXISTS "socialaccount_socialaccount";
CREATE TABLE "socialaccount_socialaccount" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "provider" varchar(200) NOT NULL, "uid" varchar(191) NOT NULL, "last_login" datetime NOT NULL, "date_joined" datetime NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "extra_data" text NOT NULL CHECK ((JSON_VALID("extra_data") OR "extra_data" IS NULL)));

-- ----------------------------
-- Records of socialaccount_socialaccount
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for socialaccount_socialapp
-- ----------------------------
DROP TABLE IF EXISTS "socialaccount_socialapp";
CREATE TABLE "socialaccount_socialapp" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "provider" varchar(30) NOT NULL, "name" varchar(40) NOT NULL, "client_id" varchar(191) NOT NULL, "secret" varchar(191) NOT NULL, "key" varchar(191) NOT NULL, "provider_id" varchar(200) NOT NULL, "settings" text NOT NULL CHECK ((JSON_VALID("settings") OR "settings" IS NULL)));

-- ----------------------------
-- Records of socialaccount_socialapp
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for socialaccount_socialapp_sites
-- ----------------------------
DROP TABLE IF EXISTS "socialaccount_socialapp_sites";
CREATE TABLE "socialaccount_socialapp_sites" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "socialapp_id" integer NOT NULL REFERENCES "socialaccount_socialapp" ("id") DEFERRABLE INITIALLY DEFERRED, "site_id" integer NOT NULL REFERENCES "django_site" ("id") DEFERRABLE INITIALLY DEFERRED);

-- ----------------------------
-- Records of socialaccount_socialapp_sites
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for socialaccount_socialtoken
-- ----------------------------
DROP TABLE IF EXISTS "socialaccount_socialtoken";
CREATE TABLE "socialaccount_socialtoken" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "token" text NOT NULL, "token_secret" text NOT NULL, "expires_at" datetime NULL, "account_id" integer NOT NULL REFERENCES "socialaccount_socialaccount" ("id") DEFERRABLE INITIALLY DEFERRED, "app_id" integer NULL REFERENCES "socialaccount_socialapp" ("id") DEFERRABLE INITIALLY DEFERRED);

-- ----------------------------
-- Records of socialaccount_socialtoken
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sqlite_sequence
-- ----------------------------
DROP TABLE IF EXISTS "sqlite_sequence";
CREATE TABLE sqlite_sequence(name,seq);

-- ----------------------------
-- Records of sqlite_sequence
-- ----------------------------
BEGIN;
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('django_migrations', 82);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('django_admin_log', 138);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('django_content_type', 29);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('auth_permission', 116);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('auth_group', 4);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('auth_user', 7);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('django_site', 1);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('auth_group_permissions', 232);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('auth_user_groups', 8);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('auth_user_user_permissions', 228);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('caisseMoto_solde', 1);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('caisseMoto_caissemoto', 26);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('account_emailaddress', 0);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('caisseTamatave_caisse', 3);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('caisseTamatave_solde', 1);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('caisseTana_caisse', 10);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('caisseTana_solde', 1);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('compagnie_compagnie', 0);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('exportateur_exportateur', 0);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('facture_blmoto', 0);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('facture_facturemoto', 0);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('facture_factureoperation', 0);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('importateur_importateur', 0);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('moto_moto', 572);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('myapp_flower', 0);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('myapp_selchoice', 0);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('operation_operation', 3);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('socialaccount_socialapp', 0);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('socialaccount_socialtoken', 0);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('socialaccount_socialaccount', 0);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('versement_versement', 0);
COMMIT;

-- ----------------------------
-- Table structure for versement_versement
-- ----------------------------
DROP TABLE IF EXISTS "versement_versement";
CREATE TABLE "versement_versement" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "date" date NULL, "reference" varchar(500) NOT NULL, "beneficiaire" varchar(500) NOT NULL, "montant" integer NOT NULL, "remarque" varchar(500) NOT NULL, "PJ" varchar(100) NOT NULL);

-- ----------------------------
-- Records of versement_versement
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Auto increment value for account_emailaddress
-- ----------------------------

-- ----------------------------
-- Indexes structure for table account_emailaddress
-- ----------------------------
CREATE INDEX "main"."account_emailaddress_email_03be32b2"
ON "account_emailaddress" (
  "email" ASC
);
CREATE INDEX "main"."account_emailaddress_user_id_2c513194"
ON "account_emailaddress" (
  "user_id" ASC
);
CREATE UNIQUE INDEX "main"."account_emailaddress_user_id_email_987c8728_uniq"
ON "account_emailaddress" (
  "user_id" ASC,
  "email" ASC
);
CREATE UNIQUE INDEX "main"."unique_primary_email"
ON "account_emailaddress" (
  "user_id" ASC,
  "primary" ASC
);
CREATE UNIQUE INDEX "main"."unique_verified_email"
ON "account_emailaddress" (
  "email" ASC
);

-- ----------------------------
-- Indexes structure for table account_emailconfirmation
-- ----------------------------
CREATE INDEX "main"."account_emailconfirmation_email_address_id_5b7f8c58"
ON "account_emailconfirmation" (
  "email_address_id" ASC
);

-- ----------------------------
-- Auto increment value for auth_group
-- ----------------------------
UPDATE "main"."sqlite_sequence" SET seq = 4 WHERE name = 'auth_group';

-- ----------------------------
-- Auto increment value for auth_group_permissions
-- ----------------------------
UPDATE "main"."sqlite_sequence" SET seq = 232 WHERE name = 'auth_group_permissions';

-- ----------------------------
-- Indexes structure for table auth_group_permissions
-- ----------------------------
CREATE INDEX "main"."auth_group_permissions_group_id_b120cbf9"
ON "auth_group_permissions" (
  "group_id" ASC
);
CREATE UNIQUE INDEX "main"."auth_group_permissions_group_id_permission_id_0cd325b0_uniq"
ON "auth_group_permissions" (
  "group_id" ASC,
  "permission_id" ASC
);
CREATE INDEX "main"."auth_group_permissions_permission_id_84c5c92e"
ON "auth_group_permissions" (
  "permission_id" ASC
);

-- ----------------------------
-- Auto increment value for auth_permission
-- ----------------------------
UPDATE "main"."sqlite_sequence" SET seq = 116 WHERE name = 'auth_permission';

-- ----------------------------
-- Indexes structure for table auth_permission
-- ----------------------------
CREATE INDEX "main"."auth_permission_content_type_id_2f476e4b"
ON "auth_permission" (
  "content_type_id" ASC
);
CREATE UNIQUE INDEX "main"."auth_permission_content_type_id_codename_01ab375a_uniq"
ON "auth_permission" (
  "content_type_id" ASC,
  "codename" ASC
);

-- ----------------------------
-- Auto increment value for auth_user
-- ----------------------------
UPDATE "main"."sqlite_sequence" SET seq = 7 WHERE name = 'auth_user';

-- ----------------------------
-- Auto increment value for auth_user_groups
-- ----------------------------
UPDATE "main"."sqlite_sequence" SET seq = 8 WHERE name = 'auth_user_groups';

-- ----------------------------
-- Indexes structure for table auth_user_groups
-- ----------------------------
CREATE INDEX "main"."auth_user_groups_group_id_97559544"
ON "auth_user_groups" (
  "group_id" ASC
);
CREATE INDEX "main"."auth_user_groups_user_id_6a12ed8b"
ON "auth_user_groups" (
  "user_id" ASC
);
CREATE UNIQUE INDEX "main"."auth_user_groups_user_id_group_id_94350c0c_uniq"
ON "auth_user_groups" (
  "user_id" ASC,
  "group_id" ASC
);

-- ----------------------------
-- Auto increment value for auth_user_user_permissions
-- ----------------------------
UPDATE "main"."sqlite_sequence" SET seq = 228 WHERE name = 'auth_user_user_permissions';

-- ----------------------------
-- Indexes structure for table auth_user_user_permissions
-- ----------------------------
CREATE INDEX "main"."auth_user_user_permissions_permission_id_1fbb5f2c"
ON "auth_user_user_permissions" (
  "permission_id" ASC
);
CREATE INDEX "main"."auth_user_user_permissions_user_id_a95ead1b"
ON "auth_user_user_permissions" (
  "user_id" ASC
);
CREATE UNIQUE INDEX "main"."auth_user_user_permissions_user_id_permission_id_14a6b632_uniq"
ON "auth_user_user_permissions" (
  "user_id" ASC,
  "permission_id" ASC
);

-- ----------------------------
-- Auto increment value for caisseMoto_caissemoto
-- ----------------------------
UPDATE "main"."sqlite_sequence" SET seq = 26 WHERE name = 'caisseMoto_caissemoto';

-- ----------------------------
-- Auto increment value for caisseMoto_solde
-- ----------------------------
UPDATE "main"."sqlite_sequence" SET seq = 1 WHERE name = 'caisseMoto_solde';

-- ----------------------------
-- Auto increment value for caisseTamatave_caisse
-- ----------------------------
UPDATE "main"."sqlite_sequence" SET seq = 3 WHERE name = 'caisseTamatave_caisse';

-- ----------------------------
-- Auto increment value for caisseTamatave_solde
-- ----------------------------
UPDATE "main"."sqlite_sequence" SET seq = 1 WHERE name = 'caisseTamatave_solde';

-- ----------------------------
-- Auto increment value for caisseTana_caisse
-- ----------------------------
UPDATE "main"."sqlite_sequence" SET seq = 10 WHERE name = 'caisseTana_caisse';

-- ----------------------------
-- Auto increment value for caisseTana_solde
-- ----------------------------
UPDATE "main"."sqlite_sequence" SET seq = 1 WHERE name = 'caisseTana_solde';

-- ----------------------------
-- Auto increment value for compagnie_compagnie
-- ----------------------------

-- ----------------------------
-- Auto increment value for django_admin_log
-- ----------------------------
UPDATE "main"."sqlite_sequence" SET seq = 138 WHERE name = 'django_admin_log';

-- ----------------------------
-- Indexes structure for table django_admin_log
-- ----------------------------
CREATE INDEX "main"."django_admin_log_content_type_id_c4bce8eb"
ON "django_admin_log" (
  "content_type_id" ASC
);
CREATE INDEX "main"."django_admin_log_user_id_c564eba6"
ON "django_admin_log" (
  "user_id" ASC
);

-- ----------------------------
-- Auto increment value for django_content_type
-- ----------------------------
UPDATE "main"."sqlite_sequence" SET seq = 29 WHERE name = 'django_content_type';

-- ----------------------------
-- Indexes structure for table django_content_type
-- ----------------------------
CREATE UNIQUE INDEX "main"."django_content_type_app_label_model_76bd3d3b_uniq"
ON "django_content_type" (
  "app_label" ASC,
  "model" ASC
);

-- ----------------------------
-- Auto increment value for django_migrations
-- ----------------------------
UPDATE "main"."sqlite_sequence" SET seq = 82 WHERE name = 'django_migrations';

-- ----------------------------
-- Indexes structure for table django_session
-- ----------------------------
CREATE INDEX "main"."django_session_expire_date_a5c62663"
ON "django_session" (
  "expire_date" ASC
);

-- ----------------------------
-- Auto increment value for django_site
-- ----------------------------
UPDATE "main"."sqlite_sequence" SET seq = 1 WHERE name = 'django_site';

-- ----------------------------
-- Auto increment value for exportateur_exportateur
-- ----------------------------

-- ----------------------------
-- Auto increment value for facture_blmoto
-- ----------------------------

-- ----------------------------
-- Auto increment value for facture_facturemoto
-- ----------------------------

-- ----------------------------
-- Auto increment value for facture_factureoperation
-- ----------------------------

-- ----------------------------
-- Indexes structure for table facture_factureoperation
-- ----------------------------
CREATE INDEX "main"."facture_factureoperation_idOp_id_d92a5fec"
ON "facture_factureoperation" (
  "idOp_id" ASC
);

-- ----------------------------
-- Auto increment value for importateur_importateur
-- ----------------------------

-- ----------------------------
-- Auto increment value for moto_moto
-- ----------------------------
UPDATE "main"."sqlite_sequence" SET seq = 572 WHERE name = 'moto_moto';

-- ----------------------------
-- Auto increment value for myapp_flower
-- ----------------------------

-- ----------------------------
-- Auto increment value for myapp_selchoice
-- ----------------------------

-- ----------------------------
-- Indexes structure for table myapp_selchoice
-- ----------------------------
CREATE INDEX "main"."myapp_selchoice_titleSelect_id_7fd27733"
ON "myapp_selchoice" (
  "titleSelect_id" ASC
);

-- ----------------------------
-- Auto increment value for operation_operation
-- ----------------------------
UPDATE "main"."sqlite_sequence" SET seq = 3 WHERE name = 'operation_operation';

-- ----------------------------
-- Indexes structure for table operation_operation
-- ----------------------------
CREATE INDEX "main"."operation_operation_Exportateur_Name_id_38ae4b9d"
ON "operation_operation" (
  "Exportateur_Name_id" ASC
);
CREATE INDEX "main"."operation_operation_Importateur_Name_id_516e1c4a"
ON "operation_operation" (
  "Importateur_Name_id" ASC
);
CREATE INDEX "main"."operation_operation_Nom_Compagnie_id_c29a4d40"
ON "operation_operation" (
  "Nom_Compagnie_id" ASC
);

-- ----------------------------
-- Auto increment value for socialaccount_socialaccount
-- ----------------------------

-- ----------------------------
-- Indexes structure for table socialaccount_socialaccount
-- ----------------------------
CREATE UNIQUE INDEX "main"."socialaccount_socialaccount_provider_uid_fc810c6e_uniq"
ON "socialaccount_socialaccount" (
  "provider" ASC,
  "uid" ASC
);
CREATE INDEX "main"."socialaccount_socialaccount_user_id_8146e70c"
ON "socialaccount_socialaccount" (
  "user_id" ASC
);

-- ----------------------------
-- Auto increment value for socialaccount_socialapp
-- ----------------------------

-- ----------------------------
-- Indexes structure for table socialaccount_socialapp_sites
-- ----------------------------
CREATE INDEX "main"."socialaccount_socialapp_sites_site_id_2579dee5"
ON "socialaccount_socialapp_sites" (
  "site_id" ASC
);
CREATE INDEX "main"."socialaccount_socialapp_sites_socialapp_id_97fb6e7d"
ON "socialaccount_socialapp_sites" (
  "socialapp_id" ASC
);
CREATE UNIQUE INDEX "main"."socialaccount_socialapp_sites_socialapp_id_site_id_71a9a768_uniq"
ON "socialaccount_socialapp_sites" (
  "socialapp_id" ASC,
  "site_id" ASC
);

-- ----------------------------
-- Auto increment value for socialaccount_socialtoken
-- ----------------------------

-- ----------------------------
-- Indexes structure for table socialaccount_socialtoken
-- ----------------------------
CREATE INDEX "main"."socialaccount_socialtoken_account_id_951f210e"
ON "socialaccount_socialtoken" (
  "account_id" ASC
);
CREATE INDEX "main"."socialaccount_socialtoken_app_id_636a42d7"
ON "socialaccount_socialtoken" (
  "app_id" ASC
);
CREATE UNIQUE INDEX "main"."socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq"
ON "socialaccount_socialtoken" (
  "app_id" ASC,
  "account_id" ASC
);

-- ----------------------------
-- Auto increment value for versement_versement
-- ----------------------------

PRAGMA foreign_keys = true;
