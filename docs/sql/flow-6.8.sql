/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : localhost:3306
 Source Schema         : flow-6.8

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 18/02/2023 12:15:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for act_co_content_item
-- ----------------------------
DROP TABLE IF EXISTS `act_co_content_item`;
CREATE TABLE `act_co_content_item`  (
  `ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `MIME_TYPE_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `TASK_ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CONTENT_STORE_ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CONTENT_STORE_NAME_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `FIELD_` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CONTENT_AVAILABLE_` bit(1) NULL DEFAULT b'0',
  `CREATED_` timestamp(6) NULL DEFAULT NULL,
  `CREATED_BY_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `LAST_MODIFIED_` timestamp(6) NULL DEFAULT NULL,
  `LAST_MODIFIED_BY_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CONTENT_SIZE_` bigint(20) NULL DEFAULT 0,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `idx_contitem_taskid`(`TASK_ID_`) USING BTREE,
  INDEX `idx_contitem_procid`(`PROC_INST_ID_`) USING BTREE,
  INDEX `idx_contitem_scope`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_co_content_item
-- ----------------------------

-- ----------------------------
-- Table structure for act_co_databasechangelog
-- ----------------------------
DROP TABLE IF EXISTS `act_co_databasechangelog`;
CREATE TABLE `act_co_databasechangelog`  (
  `ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `AUTHOR` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `FILENAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `DATEEXECUTED` datetime(0) NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `MD5SUM` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `COMMENTS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `TAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `LIQUIBASE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CONTEXTS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `LABELS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_co_databasechangelog
-- ----------------------------
INSERT INTO `act_co_databasechangelog` VALUES ('1', 'activiti', 'org/flowable/content/db/liquibase/flowable-content-db-changelog.xml', '2021-09-28 11:36:35', 1, 'EXECUTED', '8:7644d7165cfe799200a2abdd3419e8b6', 'createTable tableName=ACT_CO_CONTENT_ITEM; createIndex indexName=idx_contitem_taskid, tableName=ACT_CO_CONTENT_ITEM; createIndex indexName=idx_contitem_procid, tableName=ACT_CO_CONTENT_ITEM', '', NULL, '4.3.5', NULL, NULL, '2800195177');
INSERT INTO `act_co_databasechangelog` VALUES ('2', 'flowable', 'org/flowable/content/db/liquibase/flowable-content-db-changelog.xml', '2021-09-28 11:36:35', 2, 'EXECUTED', '8:fe7b11ac7dbbf9c43006b23bbab60bab', 'addColumn tableName=ACT_CO_CONTENT_ITEM; createIndex indexName=idx_contitem_scope, tableName=ACT_CO_CONTENT_ITEM', '', NULL, '4.3.5', NULL, NULL, '2800195177');

-- ----------------------------
-- Table structure for act_co_databasechangeloglock
-- ----------------------------
DROP TABLE IF EXISTS `act_co_databasechangeloglock`;
CREATE TABLE `act_co_databasechangeloglock`  (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime(0) NULL DEFAULT NULL,
  `LOCKEDBY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_co_databasechangeloglock
-- ----------------------------
INSERT INTO `act_co_databasechangeloglock` VALUES (1, b'0', NULL, NULL);

-- ----------------------------
-- Table structure for act_de_databasechangelog
-- ----------------------------
DROP TABLE IF EXISTS `act_de_databasechangelog`;
CREATE TABLE `act_de_databasechangelog`  (
  `ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `AUTHOR` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `FILENAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `DATEEXECUTED` datetime(0) NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `MD5SUM` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `COMMENTS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `TAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `LIQUIBASE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CONTEXTS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `LABELS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_de_databasechangelog
-- ----------------------------
INSERT INTO `act_de_databasechangelog` VALUES ('1', 'flowable', 'META-INF/liquibase/flowable-modeler-app-db-changelog.xml', '2021-09-28 11:36:43', 1, 'EXECUTED', '8:e70d1d9d3899a734296b2514ccc71501', 'createTable tableName=ACT_DE_MODEL; createIndex indexName=idx_proc_mod_created, tableName=ACT_DE_MODEL; createTable tableName=ACT_DE_MODEL_HISTORY; createIndex indexName=idx_proc_mod_history_proc, tableName=ACT_DE_MODEL_HISTORY; createTable tableN...', '', NULL, '4.3.5', NULL, NULL, '2800203835');
INSERT INTO `act_de_databasechangelog` VALUES ('3', 'flowable', 'META-INF/liquibase/flowable-modeler-app-db-changelog.xml', '2021-09-28 11:36:44', 2, 'EXECUTED', '8:3a9143bef2e45f2316231cc1369138b6', 'addColumn tableName=ACT_DE_MODEL; addColumn tableName=ACT_DE_MODEL_HISTORY', '', NULL, '4.3.5', NULL, NULL, '2800203835');

-- ----------------------------
-- Table structure for act_de_databasechangeloglock
-- ----------------------------
DROP TABLE IF EXISTS `act_de_databasechangeloglock`;
CREATE TABLE `act_de_databasechangeloglock`  (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime(0) NULL DEFAULT NULL,
  `LOCKEDBY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_de_databasechangeloglock
-- ----------------------------
INSERT INTO `act_de_databasechangeloglock` VALUES (1, b'0', NULL, NULL);

-- ----------------------------
-- Table structure for act_de_model
-- ----------------------------
DROP TABLE IF EXISTS `act_de_model`;
CREATE TABLE `act_de_model`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model_key` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `model_comment` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `last_updated` datetime(6) NULL DEFAULT NULL,
  `last_updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `version` int(11) NULL DEFAULT NULL,
  `model_editor_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `thumbnail` longblob NULL,
  `model_type` int(11) NULL DEFAULT NULL,
  `tenant_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_proc_mod_created`(`created_by`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_de_model
-- ----------------------------
INSERT INTO `act_de_model` VALUES ('7a76271c200d11ecbaee00e04d680167', '请假', 'leave', NULL, NULL, '2021-09-28 11:38:00.090000', '10101', '2021-09-28 11:44:29.119000', '10101', 1, '{\"bounds\":{\"lowerRight\":{\"x\":1485.0,\"y\":700.0},\"upperLeft\":{\"x\":0.0,\"y\":0.0}},\"resourceId\":\"canvas\",\"stencil\":{\"id\":\"BPMNDiagram\"},\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\",\"url\":\"../editor/stencilsets/bpmn2.0/bpmn2.0.json\"},\"properties\":{\"process_id\":\"leave\",\"name\":\"请假\",\"process_namespace\":\"http://flowable.org/modeler\",\"iseagerexecutionfetch\":false,\"messages\":[],\"executionlisteners\":{\"executionListeners\":[]},\"eventlisteners\":{\"eventListeners\":[]},\"signaldefinitions\":[],\"messagedefinitions\":[],\"escalationdefinitions\":[],\"processid\":\"leave\"},\"childShapes\":[{\"bounds\":{\"lowerRight\":{\"x\":-135.0,\"y\":145.0},\"upperLeft\":{\"x\":-165.0,\"y\":115.0}},\"resourceId\":\"startEvent1\",\"childShapes\":[],\"stencil\":{\"id\":\"StartNoneEvent\"},\"properties\":{\"overrideid\":\"startEvent1\",\"interrupting\":true,\"executionlisteners\":{\"executionListeners\":[]}},\"outgoing\":[{\"resourceId\":\"Flow_19ganz3\"}]},{\"bounds\":{\"lowerRight\":{\"x\":20.0,\"y\":170.0},\"upperLeft\":{\"x\":-80.0,\"y\":90.0}},\"resourceId\":\"Activity_0cvpkas\",\"childShapes\":[],\"stencil\":{\"id\":\"UserTask\"},\"properties\":{\"overrideid\":\"Activity_0cvpkas\",\"name\":\"提交人\",\"usertaskassignment\":{\"assignment\":{\"type\":\"static\",\"assignee\":\"${initiator}\"}},\"skipexpression\":\"${initiator==\'\'}\",\"assigneeType\":\"static\",\"asynchronousdefinition\":false,\"exclusivedefinition\":true,\"isforcompensation\":false,\"tasklisteners\":{\"taskListeners\":[]},\"executionlisteners\":{\"executionListeners\":[]}},\"outgoing\":[{\"resourceId\":\"Flow_0u1gy6g\"}]},{\"bounds\":{\"lowerRight\":{\"x\":172.0,\"y\":212.0},\"upperLeft\":{\"x\":128.0,\"y\":212.0}},\"resourceId\":\"Flow_19ganz3\",\"childShapes\":[],\"stencil\":{\"id\":\"SequenceFlow\"},\"dockers\":[{\"x\":15.0,\"y\":15.0},{\"x\":50.0,\"y\":40.0}],\"outgoing\":[{\"resourceId\":\"Activity_0cvpkas\"}],\"target\":{\"resourceId\":\"Activity_0cvpkas\"},\"properties\":{\"overrideid\":\"Flow_19ganz3\"}},{\"bounds\":{\"lowerRight\":{\"x\":125.0,\"y\":155.0},\"upperLeft\":{\"x\":75.0,\"y\":105.0}},\"resourceId\":\"Gateway_00dt1rh\",\"childShapes\":[],\"stencil\":{\"id\":\"ExclusiveGateway\"},\"properties\":{\"overrideid\":\"Gateway_00dt1rh\",\"asynchronousdefinition\":false,\"exclusivedefinition\":true,\"executionlisteners\":{\"executionListeners\":[]}},\"outgoing\":[{\"resourceId\":\"Flow_19c7cnd\"},{\"resourceId\":\"Flow_0xb2lye\"}]},{\"bounds\":{\"lowerRight\":{\"x\":172.0,\"y\":212.0},\"upperLeft\":{\"x\":128.0,\"y\":212.0}},\"resourceId\":\"Flow_0u1gy6g\",\"childShapes\":[],\"stencil\":{\"id\":\"SequenceFlow\"},\"dockers\":[{\"x\":50.0,\"y\":40.0},{\"x\":25.0,\"y\":25.0}],\"outgoing\":[{\"resourceId\":\"Gateway_00dt1rh\"}],\"target\":{\"resourceId\":\"Gateway_00dt1rh\"},\"properties\":{\"overrideid\":\"Flow_0u1gy6g\"}},{\"bounds\":{\"lowerRight\":{\"x\":250.0,\"y\":40.0},\"upperLeft\":{\"x\":150.0,\"y\":-40.0}},\"resourceId\":\"Activity_0hd55ea\",\"childShapes\":[],\"stencil\":{\"id\":\"UserTask\"},\"properties\":{\"overrideid\":\"Activity_0hd55ea\",\"name\":\"经理\",\"usertaskassignment\":{\"assignment\":{\"type\":\"static\",\"assignee\":\"10000\"}},\"assigneeType\":\"idm\",\"idmAssignee\":\"[{\\\"id\\\":\\\"1\\\",\\\"name\\\":\\\"易烊千玺\\\",\\\"code\\\":\\\"10000\\\",\\\"sex\\\":1,\\\"mobile\\\":\\\"18689203258\\\",\\\"companyId\\\":\\\"1\\\",\\\"companyName\\\":\\\"中国石化\\\",\\\"deptId\\\":\\\"27\\\",\\\"deptName\\\":\\\"领导班子\\\"}]\",\"asynchronousdefinition\":false,\"exclusivedefinition\":true,\"isforcompensation\":false,\"tasklisteners\":{\"taskListeners\":[]},\"executionlisteners\":{\"executionListeners\":[]}},\"outgoing\":[{\"resourceId\":\"Flow_1j9kaqz\"}]},{\"bounds\":{\"lowerRight\":{\"x\":172.0,\"y\":212.0},\"upperLeft\":{\"x\":128.0,\"y\":212.0}},\"resourceId\":\"Flow_19c7cnd\",\"childShapes\":[],\"stencil\":{\"id\":\"SequenceFlow\"},\"dockers\":[{\"x\":25.0,\"y\":25.0},{\"x\":100.0,\"y\":0.0},{\"x\":50.0,\"y\":40.0}],\"outgoing\":[{\"resourceId\":\"Activity_0hd55ea\"}],\"target\":{\"resourceId\":\"Activity_0hd55ea\"},\"properties\":{\"overrideid\":\"Flow_19c7cnd\",\"defaultflow\":true}},{\"bounds\":{\"lowerRight\":{\"x\":250.0,\"y\":290.0},\"upperLeft\":{\"x\":150.0,\"y\":210.0}},\"resourceId\":\"Activity_1gtvl0c\",\"childShapes\":[],\"stencil\":{\"id\":\"UserTask\"},\"properties\":{\"overrideid\":\"Activity_1gtvl0c\",\"name\":\"总监\",\"usertaskassignment\":{\"assignment\":{\"type\":\"static\",\"assignee\":\"10000\"}},\"assigneeType\":\"idm\",\"idmAssignee\":\"[{\\\"id\\\":\\\"1\\\",\\\"name\\\":\\\"易烊千玺\\\",\\\"code\\\":\\\"10000\\\",\\\"sex\\\":1,\\\"mobile\\\":\\\"18689203258\\\",\\\"companyId\\\":\\\"1\\\",\\\"companyName\\\":\\\"中国石化\\\",\\\"deptId\\\":\\\"27\\\",\\\"deptName\\\":\\\"领导班子\\\"}]\",\"asynchronousdefinition\":false,\"exclusivedefinition\":true,\"isforcompensation\":false,\"tasklisteners\":{\"taskListeners\":[]},\"executionlisteners\":{\"executionListeners\":[]}},\"outgoing\":[{\"resourceId\":\"Flow_1n59p57\"}]},{\"bounds\":{\"lowerRight\":{\"x\":172.0,\"y\":212.0},\"upperLeft\":{\"x\":128.0,\"y\":212.0}},\"resourceId\":\"Flow_0xb2lye\",\"childShapes\":[],\"stencil\":{\"id\":\"SequenceFlow\"},\"dockers\":[{\"x\":25.0,\"y\":25.0},{\"x\":100.0,\"y\":250.0},{\"x\":50.0,\"y\":40.0}],\"outgoing\":[{\"resourceId\":\"Activity_1gtvl0c\"}],\"target\":{\"resourceId\":\"Activity_1gtvl0c\"},\"properties\":{\"overrideid\":\"Flow_0xb2lye\",\"name\":\"大于三天\",\"conditionsequenceflow\":\"${form.days>3}\"}},{\"bounds\":{\"lowerRight\":{\"x\":325.0,\"y\":275.0},\"upperLeft\":{\"x\":275.0,\"y\":225.0}},\"resourceId\":\"Gateway_0nnziij\",\"childShapes\":[],\"stencil\":{\"id\":\"ExclusiveGateway\"},\"properties\":{\"overrideid\":\"Gateway_0nnziij\",\"asynchronousdefinition\":false,\"exclusivedefinition\":true,\"executionlisteners\":{\"executionListeners\":[]}},\"outgoing\":[{\"resourceId\":\"Flow_1cf3dkv\"},{\"resourceId\":\"Flow_1p39s4o\"}]},{\"bounds\":{\"lowerRight\":{\"x\":172.0,\"y\":212.0},\"upperLeft\":{\"x\":128.0,\"y\":212.0}},\"resourceId\":\"Flow_1n59p57\",\"childShapes\":[],\"stencil\":{\"id\":\"SequenceFlow\"},\"dockers\":[{\"x\":50.0,\"y\":40.0},{\"x\":25.0,\"y\":25.0}],\"outgoing\":[{\"resourceId\":\"Gateway_0nnziij\"}],\"target\":{\"resourceId\":\"Gateway_0nnziij\"},\"properties\":{\"overrideid\":\"Flow_1n59p57\"}},{\"bounds\":{\"lowerRight\":{\"x\":480.0,\"y\":160.0},\"upperLeft\":{\"x\":380.0,\"y\":80.0}},\"resourceId\":\"Activity_0es20dx\",\"childShapes\":[],\"stencil\":{\"id\":\"UserTask\"},\"properties\":{\"overrideid\":\"Activity_0es20dx\",\"name\":\"总经理\",\"usertaskassignment\":{\"assignment\":{\"type\":\"static\",\"assignee\":\"10000\"}},\"assigneeType\":\"idm\",\"idmAssignee\":\"[{\\\"id\\\":\\\"1\\\",\\\"name\\\":\\\"易烊千玺\\\",\\\"code\\\":\\\"10000\\\",\\\"sex\\\":1,\\\"mobile\\\":\\\"18689203258\\\",\\\"companyId\\\":\\\"1\\\",\\\"companyName\\\":\\\"中国石化\\\",\\\"deptId\\\":\\\"27\\\",\\\"deptName\\\":\\\"领导班子\\\"}]\",\"asynchronousdefinition\":false,\"exclusivedefinition\":true,\"isforcompensation\":false,\"tasklisteners\":{\"taskListeners\":[]},\"executionlisteners\":{\"executionListeners\":[]}},\"outgoing\":[{\"resourceId\":\"Flow_1xu33s8\"}]},{\"bounds\":{\"lowerRight\":{\"x\":172.0,\"y\":212.0},\"upperLeft\":{\"x\":128.0,\"y\":212.0}},\"resourceId\":\"Flow_1cf3dkv\",\"childShapes\":[],\"stencil\":{\"id\":\"SequenceFlow\"},\"dockers\":[{\"x\":25.0,\"y\":25.0},{\"x\":300.0,\"y\":120.0},{\"x\":50.0,\"y\":40.0}],\"outgoing\":[{\"resourceId\":\"Activity_0es20dx\"}],\"target\":{\"resourceId\":\"Activity_0es20dx\"},\"properties\":{\"overrideid\":\"Flow_1cf3dkv\",\"name\":\"大于五天\",\"conditionsequenceflow\":\"${form.days>5}\"}},{\"bounds\":{\"lowerRight\":{\"x\":740.0,\"y\":160.0},\"upperLeft\":{\"x\":640.0,\"y\":80.0}},\"resourceId\":\"Activity_1bdj24i\",\"childShapes\":[],\"stencil\":{\"id\":\"UserTask\"},\"properties\":{\"overrideid\":\"Activity_1bdj24i\",\"name\":\"薪酬绩效岗、考勤岗\",\"usertaskassignment\":{\"assignment\":{\"type\":\"static\",\"assignee\":\"${user}\"}},\"assigneeType\":\"static\",\"asynchronousdefinition\":false,\"exclusivedefinition\":true,\"isforcompensation\":false,\"multiinstance_type\":\"Parallel\",\"multiinstance_collection\":\"${form_userList}\",\"multiinstance_variable\":\"user\",\"multiinstance_variableaggregations\":null,\"tasklisteners\":{\"taskListeners\":[]},\"executionlisteners\":{\"executionListeners\":[]}},\"outgoing\":[{\"resourceId\":\"Flow_10t15ej\"}]},{\"bounds\":{\"lowerRight\":{\"x\":172.0,\"y\":212.0},\"upperLeft\":{\"x\":128.0,\"y\":212.0}},\"resourceId\":\"Flow_1p39s4o\",\"childShapes\":[],\"stencil\":{\"id\":\"SequenceFlow\"},\"dockers\":[{\"x\":25.0,\"y\":25.0},{\"x\":690.0,\"y\":250.0},{\"x\":50.0,\"y\":40.0}],\"outgoing\":[{\"resourceId\":\"Activity_1bdj24i\"}],\"target\":{\"resourceId\":\"Activity_1bdj24i\"},\"properties\":{\"overrideid\":\"Flow_1p39s4o\",\"defaultflow\":true}},{\"bounds\":{\"lowerRight\":{\"x\":172.0,\"y\":212.0},\"upperLeft\":{\"x\":128.0,\"y\":212.0}},\"resourceId\":\"Flow_1j9kaqz\",\"childShapes\":[],\"stencil\":{\"id\":\"SequenceFlow\"},\"dockers\":[{\"x\":50.0,\"y\":40.0},{\"x\":690.0,\"y\":0.0},{\"x\":50.0,\"y\":40.0}],\"outgoing\":[{\"resourceId\":\"Activity_1bdj24i\"}],\"target\":{\"resourceId\":\"Activity_1bdj24i\"},\"properties\":{\"overrideid\":\"Flow_1j9kaqz\"}},{\"bounds\":{\"lowerRight\":{\"x\":172.0,\"y\":212.0},\"upperLeft\":{\"x\":128.0,\"y\":212.0}},\"resourceId\":\"Flow_1xu33s8\",\"childShapes\":[],\"stencil\":{\"id\":\"SequenceFlow\"},\"dockers\":[{\"x\":50.0,\"y\":40.0},{\"x\":50.0,\"y\":40.0}],\"outgoing\":[{\"resourceId\":\"Activity_1bdj24i\"}],\"target\":{\"resourceId\":\"Activity_1bdj24i\"},\"properties\":{\"overrideid\":\"Flow_1xu33s8\"}},{\"bounds\":{\"lowerRight\":{\"x\":938.0,\"y\":138.0},\"upperLeft\":{\"x\":902.0,\"y\":102.0}},\"resourceId\":\"Event_0hbccv3\",\"childShapes\":[],\"stencil\":{\"id\":\"EndNoneEvent\"},\"properties\":{\"overrideid\":\"Event_0hbccv3\",\"executionlisteners\":{\"executionListeners\":[]}},\"outgoing\":[]},{\"bounds\":{\"lowerRight\":{\"x\":172.0,\"y\":212.0},\"upperLeft\":{\"x\":128.0,\"y\":212.0}},\"resourceId\":\"Flow_10t15ej\",\"childShapes\":[],\"stencil\":{\"id\":\"SequenceFlow\"},\"dockers\":[{\"x\":50.0,\"y\":40.0},{\"x\":18.0,\"y\":18.0}],\"outgoing\":[{\"resourceId\":\"Event_0hbccv3\"}],\"target\":{\"resourceId\":\"Event_0hbccv3\"},\"properties\":{\"overrideid\":\"Flow_10t15ej\"}}]}', 0x89504E470D0A1A0A0000000D494844520000016A000000730806000000B1764804000011584944415478DAED9D0B7814D51DC503A5804A152B5AA4A8A8585FD85AC547AD627CB42642A02849C83E420812056D01358152C560EB1BC54214B1202855C0F86845D4CA12920D2951B4CA4383418380210D41C24308E1E1F49C70B7A5919818B2C3ECCEF97DDFF9EE9DC9CC6EE6CE7FCEBD7377E6DE9818E1282CCB6A535656965B5C5CBC6FE1C285D682050BC2AA4020600583C14D904FA52F84104D80265D5858686DDCB8D1DA5E5D6E2D9B9F5997D6D6D6864D555555564141C15698F6009D0121846804B6A469D234D0950BB2EB8C9A69388DDA98752D5AD8253A034208D108ECEE0899E7EAA29C3AA3661A6EA3A660D47B74068410A211D86F1C32CED2A2C97546CDD426A3B674068410A289464D83AE2F19B5104238AC456DB764D4420821A316420819B58C5A082164D4420821A396510B21447869DD9C9DD2D2D2DACBA88510C206931E3870A0056D85D6412BA0C5C9C9C9F391BE004D4949497900CB63A06158F640BDB1EE722C97213FCB29469D9D9DDD3A3131F17B191919DF8F8F8F6F87FC117EBFFFA8BE7DFBFEC0EBF51E8D8AA523D6FD10FF7B27AC3F01F9CE3E9FEF44A43FC6719CE4F1784E41FE541CD7E948BB23FD09B63D0BF97390EF81CF380FE9CFB0EDCFB1ED85C85F84FC25482F457A19CB242929A917F2B1C85F8DF41AA4BFC2B6D7619B78536E0948FB22FD0DD6DD80FC00E493901F883405A917EBFCC80E427E30F24390BF096906740BF2C3B1FE36A4BF453A02EB46217F07F299C88FE679423A16BA0BF97148B3A17BA13F42F79973F910F28F20FF28D2C7903E8E759390CF819E44FE29A45391FE05E9746806B67996E71AE95F4D5CCC41FE456CF312F22F237D15E9DFA1792676DE44FA16D2B7A100B6CD439A0F05A142A8085A02BD032D85DE87FE057D88FD96235D097D8CFD5621FD045A0D7D06AD81D642EBA12FA00DD0BFA18DD026E84BEC5F6DE2793BB403AA817641BBA1BDD0D78C795DFA22A24060EFEADFBF3F8DEB649A110D87A64253A639F3E2E705CE8B187A1E7ADD5C6CBC18B638C1A84D65B3CF5C88BBCD85B913FA0AFFFB36FEAFE602FE12AA822AA10A73A17F612AA9CFA1326308AB8D419460FF8F58811903F9D018CA7BD0BB50B1311C1A4F21B62D40BA085A4883A25119C37A83E586FC6B3434636C2F43B9D05CEC379B06688CF0396826F2CFD0288D614E65A589FC134827D35869B0345AE42720FF30F20F9AF3741F8D19F9F148EF81EEA671D3C0CDB9CC42FE4EE46FA7D1D3F069FCC8DFCAF38DFCCDAC184C05910EA5617D2A2B105624AC509047363911D91B59E1B0E26105847C1F544CD763398E15142B2A5658A8C0AE42FE4AE4AF30F175192B386C7331F23D91BF8015202B421383E7227F3662F24C5698AC38B1ED69D8A61BE394152B2B5856B4D8F647C81F9F9A9A7A1C2B6256C8AC9891EF9090907024EFFC5871B30267458E706925A31611074D8C81AD3E6AE1A29857DC88880BDA4A7605C8A8858C5A08E7062D6FFB4F92510B19B510CE0DDA528FC773868C5AC8A885706ED0F287B21E326A21A316C2B941CBC7A37ACAA8858C5A08E706ED623E3225A316326A219C1BB47CDEF71A19B590510BE150CC9B64BD9BBBFF815371D9AC1A4DC52564D4C22D41CB57806F68EEFEC160B02234B9AD9D2A2F2F9FA3C96D858C5AB82568F95AB8A7B9FBE7E5E5F5CBCFCFDF525959B9D3AE96344D3A1008AC8506E80C0A19B5887A38A60407003A94CF8061F641EB7629BB22D86F1C66F13B4A64D242462DDC14B41C316D984A42C8A885702830E98968558F54490819B5100E2534DEB44A42C8A885706ED07270F97B541242462D8443094D0CA09210326A219C1BB4A33853884A42C8A885706E8B9A73213EA99210326A219C1BB49C176FBA4A42C8A885706ED07266F1E7551242462D8443E14CD2494949AFAA24844B4C7A858C5A441CC9C9C9372170772624241CA9D2102E30EABB64D422A2C8CECE6E0DA35E8EC0FD44A5215C720779968C5A445A6B7A0482F643A850A5115E2CCB6A535656965B5C5CBC8F6378877BF0AA4020600583C14D904F65A9B214110ABB3A60D09F43FD396FA24A24BCD0580A0B0BAD0DEB5659CBE6675ADBABCBC33E246C555595555050B035DA461A0C9525C7416739DA519ED15A962242CCDAEBF59EC7EE0F95467861EB8FC6B27241769DB130B563FC6E184C6DB44DB0102A4B1E9F9DE5198D65A95BAC08B9C5F2783C67A0455DAAB31D5E425396AD2ECAA93316A636CE2DB9271ACBF27094A7A67F73F82D965D1795DDB75889898927C3A8D7EA6C8797D024C0A54593EB8C85A926013EB4B23C1CE5A909951D7C8B65573FD8E1B8C5F2FBFD27C0A82B75B6C36F2E8CA1FA92B934DFA80F4779CAA81D7C8B6577BFA29DB75868511F03A3DEA2B36D5F2BD06E45738B5A65D9F2C00FBA252727DF668640BE131ED13D2202E230F52BDA11106DE2E3E3DBE164EC9295CA5C5496EE366A3E638E3BECB73C1ECF3E3E6B7EA0F0B7D930EC0EEA57B43F20E2207E071FCFDB272B95B9A82CDD6BD4494949D77ABDDE1A9AF2D0A143AD49932659B9B9B9564E4E8E3568D0A0AF8D612F494B4B6BAF7E45FB02E25AA81AE284015590E64C94B9A82C5D6AD46C49874C7AC68C19564D4D8D7520DBB66DB3468E1C196A5D672B20EC09883863D27DCC720F683534915D21B254C592CAD25D468D16F3DB21936E88D2D2D23AA3F6783C9B9BDCAA8E8D8D6DC329A47C3EDF17DC39353575537A7A7A0E3EA0A302A2492DE9B87AEB3B437C3B31176A2F5B95B9A82CDD5196FCE1907DD2ECEEA8DF92AECFD8B16343ADEAD8267DF8902143DE1C3F7EFC9774F9DDBB775B151515D69C3973F660FD76BFDF7F9D02A2492DE9FAF0878279D012A8938B3CB455182F8212DE2AA251D143E6A2B274627942F7D17CD927DD18D3A64D0BFDB0D87857E998316352C68D1BB76BEFDEBDDFF8A0E5CB975B30EBAF5AAA651D4501D1504BBA3EECFA9862BA42BABBC1A4EBFFBA1D2E1DEE58B2EB3855969129FE70D818DCA6C9FDD45959596BF8B66043CC9D3BD71A3162C40B32EA26B7A40F5A1FC6ECFF91F1D268776A3E9AC8471475BBAEAE0F3796A5795EDA9A306142CBB6A8333232F6EED8B1A3C10F6337487A7AFA36B7DF62858E2366FF2378139BF11133CCBE1DA3DCA8B77ABDDEA3652E326AB7F651C378F7FAFD7EABBABABA415F650F46666666D3FBA8B96163E816EB7FEAD5AB97D5AE5D3B06D7F9CDE82AE91313E5F0F579BE462F739151BBF5A90F5C03B3E815C3870FB756AD5A65D5EF56E6327B2A4C6BFA533ECCD1E8870E1D3A7477632DEAC183076F5540FC1FB740EBA16E32E96F04E93AE824998B8CDAAD464DE3850117851A777CBA83DD1CEC93663A7AF4E850C36F4F939FF818356AD4AA6FEBA39E3D7B766D4646C67405C437E0CB2D1F34D295E12A9336465DCAA15E652E326A37BF99187AE41977975507BB33674BBAC9266D5AD47DE1F8D50D3DF53168D0A0CD7AEAA34166F3B0620EFE628BEB4CDA18F50AFE1E217391516B50A6FFB6AE2F0F0DCAC41F0EF97A7993BA3BEAE3F57A5FC9CACA2A2D2929A9A461B3BB63E6CC991BF8E20B3F5401D1207C996551CCFE1F0A5D6FD2C6A897423D652E326A1975185CDF4CFBBEC634CBCB51034CD49B894D8265C4B1AEB3DD6ED2C6A817B30521739151CBA815104E0B88AE500534CBCD266D8C3A005D13EEEF3970FA289B5513CD5371A92C45B4D7DC7C5CCF3226DDCAADE7187762F361D4BDC3FD3DC160B0C2CE29DD422A2F2F9F136D13B2AA2C85DB6EB1D80DD2CACDE351E3D85F8659DF10EEEFC9CBCBEB979F9FBFA5B2B272A75DAD3F1A4B2010586BD7FC9B76A1B214AEBBC5E2908530AB1A171BF5F390C78EEFC245DE07E77529CF6DB867B437DF5112ADC6A2B214AEBAC5F2783CC7C2A836BBF51CA7A4A43C8316F56045BB6BCEF7597C004125A15BAC88BAC5F2F97C27227037B8B845FD248C7A98A2DD35E7FB2E19B56EB122EE160B2DEAD310B89FB9F5FCF2B1CE268D0626A2C5A857C8A84524DE0A9E0B7DE4E2E37F80AFCE2A125C65D6326A1159A0457D2102F73D175FB49CE5E21E45828C5A0827B7282FE7DB796E3D7EB6A6D9AA5624C8A885702C1C1B0546B5C0C517ED28E83145828C5A0827B7A81310B8F35CDCA21EC6273F1409326A219C6C548930EB175D7CD1A643D31509326A219C6CD4A930EA675D7CD17AF876A22241462D84938336039AEAD6E3472575232AAB971409326A219CDCA21E01B37ADCC5176D6FE87545828C5A082707ED68E841B71E3F9F7AE198D48A0419B5104E0E5A57BFF0619E232F5424C8A8857072D03EC856B55B8F3F3939F922CE9BA84890510BE1E4A0FD33F4BBE6EE6F59569BB2B2B2DCE2E2E27D1CBF3BDC03570502012B180C6E827C2D71FC5EAFF73C98F57245828C5A082707ED543EF9D1DCFD69D2858585969DE376575555590505055B5B6294418FC773068EBF549120A316C2C941FB1CE46FEEFE6C49874C7A7B75B9B56C7E665D6A8359D7B6C4E40A89898927E3F8D72A1264D44238396873F9766273F73F70BAB2950BB2EB8C9AA94DF34A1EF274657EBFFF049441A52241462D849383761E8CBA4F73F73F7002E0D545397546CD344226006E8316F53128832D8A0419B5104E0EDA009F256E09A32E2D9A5C67D44C23C0A8E320AB6DDBB68928835D8A0419B5104E0EDAC530EA5F1EAA51D3A0EBCBC146CD8AA91AE238D455B8A3F85A9120A316C2C941FB3E6779698916B5DD6AA651C719930E75F7F480564313D915A28890510BE138385F626262E2392E31EA504B3AAEDEFACE105F7AC985DA2B2A64D442382D68CB60D4A7BAC0A8EBB7A4EBD301E2040A4BA04E8A0C19B5104E0ADA0D3E9FEFC42837EA865AD2F561D7C714D315D25DD121A316C21124272757A7A5A5758C62A36EAC257D30C64055D0A5DFB691DFEF3F4A1124A316C28EA0AD81517FE77ED9D03E1160D4DC6662338A6686D9B76343268DB25B93929272A5A248462D443869CDA085B642EBA0157C5C0FADECF9485F80A6C0881EC0F21833092CA7ADEACDA141B15C86FC2CA71A35FEB7120EE1DAA54B975B4DEBF8FCEF502ED7D66F85676767B78E8D8DE50B326DA12368D42883787C4795D7EBED8332E9C4B71CF1B7CE58D705EBBA7A3C9E53D8FF8FED4EE79822C89FC91F6EB1DC03DBFF14EBCEE713376604BF4BB0EE177C5412EA85E5582C5FCD67DCF1F75F9BEF62D92720DF0FF9FED0002C27617920CF0DF23E681096076379083414CB3743C3B1EE360EBE85FC48E80E2C6772D444E47F8FFC1FA07166C8DB7BB1EE4F48EFC7BA87903E82E547919F6806F0CAE164C0587E0AE9D3D0346806A773633C705A33E467731E4ECE9C83E557A0BF9917AB18576F42FFC0DF174079C8E74341C61DF44FE81D8E66C8A791B0FD074897412BA18FB1FD2A8ECB027DCA4A92AFFE43EBA172A802DA086D8236F32526683BB4838D11A816DA037D2DA31691482BBE9DC7312F38929C199F99B39E7868CE34699A352F4E5E849C0D85E3371B73DFE204A336954D83EAD9B327B75B0F756B8E499BCFD9672E745EF03BA1AF502EDB989A8B9FC650690CA3DC18C8E7FCB1D6184B298D864FD9980A719931A2F7A077A16263548BB14D01D245D0421A1A8D0D7A83658F7D5E33C64703CC85E6D218CDB9A151CEC4F233C6409FA6A1424F203F99464BC38526609B87CD10B7F7D398A1F11C971CBA9BC64D0387B2B07C27966FA7C1D3E8A15B1917AC005811980A21CDCCBDE9337133D04C9A7C232B14562C7CFB1595D2F55817C78A8715107415EF48B0CD15ACA05851619B8BB1DC13DB5CC08A8C151A742E96CF6645C70A8F151FB6E96662B62B2B465690D0F1A9A9A9C7619B634D4C774848483892777FAC6059D132DE75C90BD711414F7DF0E5960F1AEACA68C8A49B82319B329A8222420821A33EB4E7A867F35F8E39F88B2DCD32E910326921848CBA658C9A3F802E8AD9FF43618B99B41042C8A85BF61572767D701CEB6C99B4104246EDDC4199BA4215D02C99B4104246EDDC614EF9B89E25931642C8A89D3D7140479D412144D473E0545C36ABA625A6E2124288A827180C56D839037948E5E5E5735A62725B2184887AF2F2F2FAE5E7E76FA9ACACDC69574B9A261D0804D6420374068410A209C030FBA075BB945D11EC370EB3F81D253269218410420821841042082184104208218410420821841042082184104208218410420821A281FF0023E632160C7D2B770000000049454E44AE426082, 0, 'flow');
INSERT INTO `act_de_model` VALUES ('899e8ef7957711ed97de766c80182d43', 'aaa', 'bb', NULL, NULL, '2023-01-16 16:26:54.870000', '10101', '2023-01-16 16:26:54.870000', '10101', 1, '{\"id\":\"canvas\",\"resourceId\":\"canvas\",\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"properties\":{\"process_id\":\"bb\",\"name\":\"aaa\"},\"childShapes\":[{\"bounds\":{\"lowerRight\":{\"x\":130,\"y\":193},\"upperLeft\":{\"x\":100,\"y\":163}},\"childShapes\":[],\"dockers\":[],\"outgoing\":[],\"resourceId\":\"startEvent1\",\"stencil\":{\"id\":\"StartNoneEvent\"}}]}', 0x89504E470D0A1A0A0000000D494844520000002D0000002D08060000003A1AE29A000002E04944415478DAED58DF6B526118DEC52EFA23BA080AEACFF08F48747A5051F157F3D74C10744CA6178A8C5D0B42188B2E4236314B6585919814132744B46A3936E7C19B31AA63FEC8AFF71D79135DCC73BEF38DE03C7038777ECF7978BEE77D5E1716142850F0FF821072ADDD6EDBB3D9ECAB442271EEF178C626938968B55AC271DCD4E9740EC3E1F0613299DC82E7F69593CDE5720F63B1D8D8E7F391743A4D1A8D06E976BB6430181004BEFBFD3ED9DBDB23F051C4EBF54EFD7E7FC766B35999130672E6783CFE33180C5E109A4C26E4B268B55A24140A4DEC76FB07B55A7D8B85BA8BF97CFEA5C3E1208542612EB27FA3542A11B3D92CC8AA3A12AE56AB6FDD6E373938382034D0E97408082058ADD67BB290468591307A9426F0F740ED6F4B4B4B1C750FA3256829FC2FC50D06C31910BF432D25D6D7D787E86139512C1605BD5EFF860AE9EDEDED479812A3D188C80D97CBC54BB609AA8C398CB1C602FBFBFB43C96AE3A4C3CB2725DAE605C4200FD3F48668D2389A33990C6189CDCDCD1690BE2F9A3476091CCD2C51AFD73B40BA209A34969F5EAFC79434CFF37D207D2C9A34B6B559F961053C0F480F4493C67A7915C0734593361A8D53D64A0B82C04B521AE26EC8DAD3A7A7A71F25797A7575F513EBF42897CBCF24A5472A95CAB0CEE9B5B5B5A2A49C8E4422379797977F319C88039D4EF745D24444ACACAC7C66D53DC01A5B40F8B5E49667B158D4814060CC40ED3350B9496D198025B42D779FC6FB832AAB54AA452AA4D163B884CAB5B9409BCCC3193D6A9BCB0C1CC7E941F11FB477C49393931AD8E288FA8E38031474332EA1B414478591B046A309C9FADF071CA005D5CF777676BE4BB89C671B1B1B0FD012F09898FCC3841E07855E805DF866B329CC93C3954AE5317CF43BBC74D43D7C49F277913C54D83E2C0CEF6BB5DA51B7DBEDCD4A16961FEC12BBBBBB4FA3D1E873B0D721924575A9A58404AF5F07D57C40E6093C5FB1A561BDFCF33EC62E81A359F2A453A0408102050AE4C66FB109509232650D3B0000000049454E44AE426082, 0, 'flow');

-- ----------------------------
-- Table structure for act_de_model_history
-- ----------------------------
DROP TABLE IF EXISTS `act_de_model_history`;
CREATE TABLE `act_de_model_history`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model_key` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `model_comment` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `last_updated` datetime(6) NULL DEFAULT NULL,
  `last_updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `removal_date` datetime(6) NULL DEFAULT NULL,
  `version` int(11) NULL DEFAULT NULL,
  `model_editor_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `model_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model_type` int(11) NULL DEFAULT NULL,
  `tenant_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_proc_mod_history_proc`(`model_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_de_model_history
-- ----------------------------

-- ----------------------------
-- Table structure for act_de_model_relation
-- ----------------------------
DROP TABLE IF EXISTS `act_de_model_relation`;
CREATE TABLE `act_de_model_relation`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_model_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `model_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `relation_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_relation_parent`(`parent_model_id`) USING BTREE,
  INDEX `fk_relation_child`(`model_id`) USING BTREE,
  CONSTRAINT `fk_relation_child` FOREIGN KEY (`model_id`) REFERENCES `act_de_model` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_relation_parent` FOREIGN KEY (`parent_model_id`) REFERENCES `act_de_model` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_de_model_relation
-- ----------------------------

-- ----------------------------
-- Table structure for act_dmn_databasechangelog
-- ----------------------------
DROP TABLE IF EXISTS `act_dmn_databasechangelog`;
CREATE TABLE `act_dmn_databasechangelog`  (
  `ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `AUTHOR` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `FILENAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `DATEEXECUTED` datetime(0) NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `MD5SUM` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `COMMENTS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `TAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `LIQUIBASE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CONTEXTS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `LABELS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_dmn_databasechangelog
-- ----------------------------
INSERT INTO `act_dmn_databasechangelog` VALUES ('1', 'activiti', 'org/flowable/dmn/db/liquibase/flowable-dmn-db-changelog.xml', '2021-09-28 11:36:32', 1, 'EXECUTED', '8:c8701f1c71018b55029f450b2e9a10a1', 'createTable tableName=ACT_DMN_DEPLOYMENT; createTable tableName=ACT_DMN_DEPLOYMENT_RESOURCE; createTable tableName=ACT_DMN_DECISION_TABLE', '', NULL, '4.3.5', NULL, NULL, '2800192770');
INSERT INTO `act_dmn_databasechangelog` VALUES ('2', 'flowable', 'org/flowable/dmn/db/liquibase/flowable-dmn-db-changelog.xml', '2021-09-28 11:36:32', 2, 'EXECUTED', '8:47f94b27feb7df8a30d4e338c7bd5fb8', 'createTable tableName=ACT_DMN_HI_DECISION_EXECUTION', '', NULL, '4.3.5', NULL, NULL, '2800192770');
INSERT INTO `act_dmn_databasechangelog` VALUES ('3', 'flowable', 'org/flowable/dmn/db/liquibase/flowable-dmn-db-changelog.xml', '2021-09-28 11:36:32', 3, 'EXECUTED', '8:ac17eae89fbdccb6e08daf3c7797b579', 'addColumn tableName=ACT_DMN_HI_DECISION_EXECUTION', '', NULL, '4.3.5', NULL, NULL, '2800192770');
INSERT INTO `act_dmn_databasechangelog` VALUES ('4', 'flowable', 'org/flowable/dmn/db/liquibase/flowable-dmn-db-changelog.xml', '2021-09-28 11:36:32', 4, 'EXECUTED', '8:f73aabc4529e7292c2942073d1cff6f9', 'dropColumn columnName=PARENT_DEPLOYMENT_ID_, tableName=ACT_DMN_DECISION_TABLE', '', NULL, '4.3.5', NULL, NULL, '2800192770');
INSERT INTO `act_dmn_databasechangelog` VALUES ('5', 'flowable', 'org/flowable/dmn/db/liquibase/flowable-dmn-db-changelog.xml', '2021-09-28 11:36:32', 5, 'EXECUTED', '8:3e03528582dd4eeb4eb41f9b9539140d', 'modifyDataType columnName=DEPLOY_TIME_, tableName=ACT_DMN_DEPLOYMENT; modifyDataType columnName=START_TIME_, tableName=ACT_DMN_HI_DECISION_EXECUTION; modifyDataType columnName=END_TIME_, tableName=ACT_DMN_HI_DECISION_EXECUTION', '', NULL, '4.3.5', NULL, NULL, '2800192770');
INSERT INTO `act_dmn_databasechangelog` VALUES ('6', 'flowable', 'org/flowable/dmn/db/liquibase/flowable-dmn-db-changelog.xml', '2021-09-28 11:36:33', 6, 'EXECUTED', '8:646c6a061e0b6e8a62e69844ff96abb0', 'createIndex indexName=ACT_IDX_DEC_TBL_UNIQ, tableName=ACT_DMN_DECISION_TABLE', '', NULL, '4.3.5', NULL, NULL, '2800192770');
INSERT INTO `act_dmn_databasechangelog` VALUES ('7', 'flowable', 'org/flowable/dmn/db/liquibase/flowable-dmn-db-changelog.xml', '2021-09-28 11:36:33', 7, 'EXECUTED', '8:215a499ff7ae77685b55355245b8b708', 'dropIndex indexName=ACT_IDX_DEC_TBL_UNIQ, tableName=ACT_DMN_DECISION_TABLE; renameTable newTableName=ACT_DMN_DECISION, oldTableName=ACT_DMN_DECISION_TABLE; createIndex indexName=ACT_IDX_DMN_DEC_UNIQ, tableName=ACT_DMN_DECISION', '', NULL, '4.3.5', NULL, NULL, '2800192770');
INSERT INTO `act_dmn_databasechangelog` VALUES ('8', 'flowable', 'org/flowable/dmn/db/liquibase/flowable-dmn-db-changelog.xml', '2021-09-28 11:36:33', 8, 'EXECUTED', '8:5355bee389318afed91a11702f2df032', 'addColumn tableName=ACT_DMN_DECISION', '', NULL, '4.3.5', NULL, NULL, '2800192770');
INSERT INTO `act_dmn_databasechangelog` VALUES ('9', 'flowable', 'org/flowable/dmn/db/liquibase/flowable-dmn-db-changelog.xml', '2023-02-18 12:08:26', 9, 'EXECUTED', '8:0fe82086431b1953d293f0199f805876', 'createIndex indexName=ACT_IDX_DMN_INSTANCE_ID, tableName=ACT_DMN_HI_DECISION_EXECUTION', '', NULL, '4.5.0', NULL, NULL, '6693305934');

-- ----------------------------
-- Table structure for act_dmn_databasechangeloglock
-- ----------------------------
DROP TABLE IF EXISTS `act_dmn_databasechangeloglock`;
CREATE TABLE `act_dmn_databasechangeloglock`  (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime(0) NULL DEFAULT NULL,
  `LOCKEDBY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_dmn_databasechangeloglock
-- ----------------------------
INSERT INTO `act_dmn_databasechangeloglock` VALUES (1, b'0', NULL, NULL);

-- ----------------------------
-- Table structure for act_dmn_decision
-- ----------------------------
DROP TABLE IF EXISTS `act_dmn_decision`;
CREATE TABLE `act_dmn_decision`  (
  `ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `VERSION_` int(11) NULL DEFAULT NULL,
  `KEY_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `RESOURCE_NAME_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DESCRIPTION_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DECISION_TYPE_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE INDEX `ACT_IDX_DMN_DEC_UNIQ`(`KEY_`, `VERSION_`, `TENANT_ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_dmn_decision
-- ----------------------------

-- ----------------------------
-- Table structure for act_dmn_deployment
-- ----------------------------
DROP TABLE IF EXISTS `act_dmn_deployment`;
CREATE TABLE `act_dmn_deployment`  (
  `ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DEPLOY_TIME_` datetime(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `PARENT_DEPLOYMENT_ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_dmn_deployment
-- ----------------------------

-- ----------------------------
-- Table structure for act_dmn_deployment_resource
-- ----------------------------
DROP TABLE IF EXISTS `act_dmn_deployment_resource`;
CREATE TABLE `act_dmn_deployment_resource`  (
  `ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `RESOURCE_BYTES_` longblob NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_dmn_deployment_resource
-- ----------------------------

-- ----------------------------
-- Table structure for act_dmn_hi_decision_execution
-- ----------------------------
DROP TABLE IF EXISTS `act_dmn_hi_decision_execution`;
CREATE TABLE `act_dmn_hi_decision_execution`  (
  `ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `DECISION_DEFINITION_ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `START_TIME_` datetime(3) NULL DEFAULT NULL,
  `END_TIME_` datetime(3) NULL DEFAULT NULL,
  `INSTANCE_ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ACTIVITY_ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `FAILED_` bit(1) NULL DEFAULT b'0',
  `TENANT_ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `EXECUTION_JSON_` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_DMN_INSTANCE_ID`(`INSTANCE_ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_dmn_hi_decision_execution
-- ----------------------------

-- ----------------------------
-- Table structure for act_evt_log
-- ----------------------------
DROP TABLE IF EXISTS `act_evt_log`;
CREATE TABLE `act_evt_log`  (
  `LOG_NR_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TIME_STAMP_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DATA_` longblob NULL,
  `LOCK_OWNER_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint(4) NULL DEFAULT 0,
  PRIMARY KEY (`LOG_NR_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_evt_log
-- ----------------------------

-- ----------------------------
-- Table structure for act_ge_bytearray
-- ----------------------------
DROP TABLE IF EXISTS `act_ge_bytearray`;
CREATE TABLE `act_ge_bytearray`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `BYTES_` longblob NULL,
  `GENERATED_` tinyint(4) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_FK_BYTEARR_DEPL`(`DEPLOYMENT_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ge_bytearray
-- ----------------------------
INSERT INTO `act_ge_bytearray` VALUES ('66102dbe200e11ecbaee00e04d680167', 1, 'leave.bpmn', '66102dbd200e11ecbaee00e04d680167', 0x3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554462D38223F3E0A3C646566696E6974696F6E7320786D6C6E733D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F4D4F44454C2220786D6C6E733A7873693D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612D696E7374616E63652220786D6C6E733A7873643D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612220786D6C6E733A666C6F7761626C653D22687474703A2F2F666C6F7761626C652E6F72672F62706D6E2220786D6C6E733A62706D6E64693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F44492220786D6C6E733A6F6D6764633D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44432220786D6C6E733A6F6D6764693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44492220747970654C616E67756167653D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D61222065787072657373696F6E4C616E67756167653D22687474703A2F2F7777772E77332E6F72672F313939392F585061746822207461726765744E616D6573706163653D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C657222206578706F727465723D22466C6F7761626C65204F70656E20536F75726365204D6F64656C6572223E0A20203C70726F636573732069643D226C6561766522206E616D653D22E8AFB7E581872220697345786563757461626C653D2274727565223E0A202020203C73746172744576656E742069643D2273746172744576656E7431223E3C2F73746172744576656E743E0A202020203C757365725461736B2069643D2241637469766974795F306376706B617322206E616D653D22E68F90E4BAA4E4BABA2220666C6F7761626C653A61737369676E65653D22247B696E69746961746F727D2220666C6F7761626C653A736B697045787072657373696F6E3D22247B696E69746961746F723D3D27277D223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A20202020202020203C666C6F7761626C653A61737369676E65655479706520786D6C6E733A666C6F7761626C653D22687474703A2F2F666C6F7761626C652E6F72672F62706D6E223E3C215B43444154415B7374617469635D5D3E3C2F666C6F7761626C653A61737369676E6565547970653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D22466C6F775F313967616E7A332220736F757263655265663D2273746172744576656E743122207461726765745265663D2241637469766974795F306376706B6173223E3C2F73657175656E6365466C6F773E0A202020203C6578636C7573697665476174657761792069643D22476174657761795F30306474317268222064656661756C743D22466C6F775F31396337636E64223E3C2F6578636C7573697665476174657761793E0A202020203C73657175656E6365466C6F772069643D22466C6F775F307531677936672220736F757263655265663D2241637469766974795F306376706B617322207461726765745265663D22476174657761795F30306474317268223E3C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D2241637469766974795F3068643535656122206E616D653D22E7BB8FE790862220666C6F7761626C653A61737369676E65653D223130303030223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A20202020202020203C666C6F7761626C653A61737369676E65655479706520786D6C6E733A666C6F7761626C653D22687474703A2F2F666C6F7761626C652E6F72672F62706D6E223E3C215B43444154415B69646D5D5D3E3C2F666C6F7761626C653A61737369676E6565547970653E0A20202020202020203C666C6F7761626C653A69646D41737369676E656520786D6C6E733A666C6F7761626C653D22687474703A2F2F666C6F7761626C652E6F72672F62706D6E223E3C215B43444154415B5B7B226964223A2231222C226E616D65223A22E69893E7838AE58D83E78EBA222C22636F6465223A223130303030222C22736578223A312C226D6F62696C65223A223138363839323033323538222C22636F6D70616E794964223A2231222C22636F6D70616E794E616D65223A22E4B8ADE59BBDE79FB3E58C96222C22646570744964223A223237222C22646570744E616D65223A22E9A286E5AFBCE78FADE5AD90227D5D5D5D3E3C2F666C6F7761626C653A69646D41737369676E65653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D22466C6F775F31396337636E642220736F757263655265663D22476174657761795F3030647431726822207461726765745265663D2241637469766974795F30686435356561223E3C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D2241637469766974795F316774766C306322206E616D653D22E680BBE79B912220666C6F7761626C653A61737369676E65653D223130303030223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A20202020202020203C666C6F7761626C653A61737369676E65655479706520786D6C6E733A666C6F7761626C653D22687474703A2F2F666C6F7761626C652E6F72672F62706D6E223E3C215B43444154415B69646D5D5D3E3C2F666C6F7761626C653A61737369676E6565547970653E0A20202020202020203C666C6F7761626C653A69646D41737369676E656520786D6C6E733A666C6F7761626C653D22687474703A2F2F666C6F7761626C652E6F72672F62706D6E223E3C215B43444154415B5B7B226964223A2231222C226E616D65223A22E69893E7838AE58D83E78EBA222C22636F6465223A223130303030222C22736578223A312C226D6F62696C65223A223138363839323033323538222C22636F6D70616E794964223A2231222C22636F6D70616E794E616D65223A22E4B8ADE59BBDE79FB3E58C96222C22646570744964223A223237222C22646570744E616D65223A22E9A286E5AFBCE78FADE5AD90227D5D5D5D3E3C2F666C6F7761626C653A69646D41737369676E65653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D22466C6F775F307862326C796522206E616D653D22E5A4A7E4BA8EE4B889E5A4A92220736F757263655265663D22476174657761795F3030647431726822207461726765745265663D2241637469766974795F316774766C3063223E0A2020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B666F726D2E646179733E337D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0A202020203C2F73657175656E6365466C6F773E0A202020203C6578636C7573697665476174657761792069643D22476174657761795F306E6E7A69696A222064656661756C743D22466C6F775F3170333973346F223E3C2F6578636C7573697665476174657761793E0A202020203C73657175656E6365466C6F772069643D22466C6F775F316E35397035372220736F757263655265663D2241637469766974795F316774766C306322207461726765745265663D22476174657761795F306E6E7A69696A223E3C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D2241637469766974795F3065733230647822206E616D653D22E680BBE7BB8FE790862220666C6F7761626C653A61737369676E65653D223130303030223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A20202020202020203C666C6F7761626C653A61737369676E65655479706520786D6C6E733A666C6F7761626C653D22687474703A2F2F666C6F7761626C652E6F72672F62706D6E223E3C215B43444154415B69646D5D5D3E3C2F666C6F7761626C653A61737369676E6565547970653E0A20202020202020203C666C6F7761626C653A69646D41737369676E656520786D6C6E733A666C6F7761626C653D22687474703A2F2F666C6F7761626C652E6F72672F62706D6E223E3C215B43444154415B5B7B226964223A2231222C226E616D65223A22E69893E7838AE58D83E78EBA222C22636F6465223A223130303030222C22736578223A312C226D6F62696C65223A223138363839323033323538222C22636F6D70616E794964223A2231222C22636F6D70616E794E616D65223A22E4B8ADE59BBDE79FB3E58C96222C22646570744964223A223237222C22646570744E616D65223A22E9A286E5AFBCE78FADE5AD90227D5D5D5D3E3C2F666C6F7761626C653A69646D41737369676E65653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D22466C6F775F31636633646B7622206E616D653D22E5A4A7E4BA8EE4BA94E5A4A92220736F757263655265663D22476174657761795F306E6E7A69696A22207461726765745265663D2241637469766974795F30657332306478223E0A2020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B666F726D2E646179733E357D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0A202020203C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D2241637469766974795F3162646A32346922206E616D653D22E896AAE985ACE7BBA9E69588E5B297E38081E88083E58BA4E5B2972220666C6F7761626C653A61737369676E65653D22247B757365727D223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A20202020202020203C666C6F7761626C653A61737369676E65655479706520786D6C6E733A666C6F7761626C653D22687474703A2F2F666C6F7761626C652E6F72672F62706D6E223E3C215B43444154415B7374617469635D5D3E3C2F666C6F7761626C653A61737369676E6565547970653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A2020202020203C6D756C7469496E7374616E63654C6F6F7043686172616374657269737469637320697353657175656E7469616C3D2266616C73652220666C6F7761626C653A636F6C6C656374696F6E3D22247B666F726D5F757365724C6973747D2220666C6F7761626C653A656C656D656E745661726961626C653D2275736572223E0A20202020202020203C657874656E73696F6E456C656D656E74733E3C2F657874656E73696F6E456C656D656E74733E0A2020202020203C2F6D756C7469496E7374616E63654C6F6F704368617261637465726973746963733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D22466C6F775F3170333973346F2220736F757263655265663D22476174657761795F306E6E7A69696A22207461726765745265663D2241637469766974795F3162646A323469223E3C2F73657175656E6365466C6F773E0A202020203C73657175656E6365466C6F772069643D22466C6F775F316A396B61717A2220736F757263655265663D2241637469766974795F3068643535656122207461726765745265663D2241637469766974795F3162646A323469223E3C2F73657175656E6365466C6F773E0A202020203C73657175656E6365466C6F772069643D22466C6F775F317875333373382220736F757263655265663D2241637469766974795F3065733230647822207461726765745265663D2241637469766974795F3162646A323469223E3C2F73657175656E6365466C6F773E0A202020203C656E644576656E742069643D224576656E745F30686263637633223E3C2F656E644576656E743E0A202020203C73657175656E6365466C6F772069643D22466C6F775F3130743135656A2220736F757263655265663D2241637469766974795F3162646A32346922207461726765745265663D224576656E745F30686263637633223E3C2F73657175656E6365466C6F773E0A20203C2F70726F636573733E0A20203C62706D6E64693A42504D4E4469616772616D2069643D2242504D4E4469616772616D5F6C65617665223E0A202020203C62706D6E64693A42504D4E506C616E652062706D6E456C656D656E743D226C65617665222069643D2242504D4E506C616E655F6C65617665223E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D2273746172744576656E7431222069643D2242504D4E53686170655F73746172744576656E7431223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2233302E30222077696474683D2233302E302220783D222D3136352E302220793D223131352E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D2241637469766974795F306376706B6173222069643D2242504D4E53686170655F41637469766974795F306376706B6173223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D222D38302E302220793D2239302E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D22476174657761795F30306474317268222069643D2242504D4E53686170655F476174657761795F30306474317268223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2235302E30222077696474683D2235302E302220783D2237352E302220793D223130352E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D2241637469766974795F30686435356561222069643D2242504D4E53686170655F41637469766974795F30686435356561223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223135302E302220793D222D34302E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D2241637469766974795F316774766C3063222069643D2242504D4E53686170655F41637469766974795F316774766C3063223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223135302E302220793D223231302E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D22476174657761795F306E6E7A69696A222069643D2242504D4E53686170655F476174657761795F306E6E7A69696A223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2235302E30222077696474683D2235302E302220783D223237352E302220793D223232352E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D2241637469766974795F30657332306478222069643D2242504D4E53686170655F41637469766974795F30657332306478223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223338302E302220793D2238302E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D2241637469766974795F3162646A323469222069643D2242504D4E53686170655F41637469766974795F3162646A323469223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223634302E302220793D2238302E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D224576656E745F30686263637633222069643D2242504D4E53686170655F4576656E745F30686263637633223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2233362E30222077696474683D2233362E302220783D223930322E302220793D223130322E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22466C6F775F313967616E7A33222069643D2242504D4E456467655F466C6F775F313967616E7A332220666C6F7761626C653A736F75726365446F636B6572583D2231352E302220666C6F7761626C653A736F75726365446F636B6572593D2231352E302220666C6F7761626C653A746172676574446F636B6572583D2235302E302220666C6F7761626C653A746172676574446F636B6572593D2234302E30223E0A20202020202020203C6F6D6764693A776179706F696E7420783D222D3133352E30353030303132363839353330382220793D223133302E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D222D38302E30303030303030303030323230382220793D223133302E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22466C6F775F316A396B61717A222069643D2242504D4E456467655F466C6F775F316A396B61717A2220666C6F7761626C653A736F75726365446F636B6572583D2235302E302220666C6F7761626C653A736F75726365446F636B6572593D2234302E302220666C6F7761626C653A746172676574446F636B6572583D2235302E302220666C6F7761626C653A746172676574446F636B6572593D2234302E30223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223234392E39353030303030303030303030322220793D22302E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223639302E302220793D22302E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223639302E302220793D2238302E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22466C6F775F316E3539703537222069643D2242504D4E456467655F466C6F775F316E35397035372220666C6F7761626C653A736F75726365446F636B6572583D2235302E302220666C6F7761626C653A736F75726365446F636B6572593D2234302E302220666C6F7761626C653A746172676574446F636B6572583D2232352E302220666C6F7761626C653A746172676574446F636B6572593D2232352E30223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223234392E39353030303030303030303030322220793D223235302E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223237352E302220793D223235302E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22466C6F775F31636633646B76222069643D2242504D4E456467655F466C6F775F31636633646B762220666C6F7761626C653A736F75726365446F636B6572583D2232352E302220666C6F7761626C653A736F75726365446F636B6572593D2232352E302220666C6F7761626C653A746172676574446F636B6572583D2235302E302220666C6F7761626C653A746172676574446F636B6572593D2234302E30223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223330302E302220793D223232352E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223330302E302220793D223132302E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223338302E302220793D223132302E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22466C6F775F3130743135656A222069643D2242504D4E456467655F466C6F775F3130743135656A2220666C6F7761626C653A736F75726365446F636B6572583D2235302E302220666C6F7761626C653A736F75726365446F636B6572593D2234302E302220666C6F7761626C653A746172676574446F636B6572583D2231382E302220666C6F7761626C653A746172676574446F636B6572593D2231382E30223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223733392E3934393939393939393836332220793D223132302E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223930322E302220793D223132302E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22466C6F775F30753167793667222069643D2242504D4E456467655F466C6F775F307531677936672220666C6F7761626C653A736F75726365446F636B6572583D2235302E302220666C6F7761626C653A736F75726365446F636B6572593D2234302E302220666C6F7761626C653A746172676574446F636B6572583D2232352E302220666C6F7761626C653A746172676574446F636B6572593D2232352E30223E0A20202020202020203C6F6D6764693A776179706F696E7420783D2231392E3935303030303030303030303030332220793D223133302E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D2237352E302220793D223133302E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22466C6F775F31396337636E64222069643D2242504D4E456467655F466C6F775F31396337636E642220666C6F7761626C653A736F75726365446F636B6572583D2232352E302220666C6F7761626C653A736F75726365446F636B6572593D2232352E302220666C6F7761626C653A746172676574446F636B6572583D2235302E302220666C6F7761626C653A746172676574446F636B6572593D2234302E30223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223130302E302220793D223130352E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223130302E302220793D22302E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223135302E302220793D22302E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22466C6F775F31787533337338222069643D2242504D4E456467655F466C6F775F317875333373382220666C6F7761626C653A736F75726365446F636B6572583D2235302E302220666C6F7761626C653A736F75726365446F636B6572593D2234302E302220666C6F7761626C653A746172676574446F636B6572583D2235302E302220666C6F7761626C653A746172676574446F636B6572593D2234302E30223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223437392E39343939393939393938333039342220793D223132302E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223634302E302220793D223132302E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22466C6F775F3170333973346F222069643D2242504D4E456467655F466C6F775F3170333973346F2220666C6F7761626C653A736F75726365446F636B6572583D2232352E302220666C6F7761626C653A736F75726365446F636B6572593D2232352E302220666C6F7761626C653A746172676574446F636B6572583D2235302E302220666C6F7761626C653A746172676574446F636B6572593D2234302E30223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223332342E39343638303231303230323530362220793D223235302E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223639302E302220793D223235302E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223639302E302220793D223135392E3935223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22466C6F775F307862326C7965222069643D2242504D4E456467655F466C6F775F307862326C79652220666C6F7761626C653A736F75726365446F636B6572583D2232352E302220666C6F7761626C653A736F75726365446F636B6572593D2232352E302220666C6F7761626C653A746172676574446F636B6572583D2235302E302220666C6F7761626C653A746172676574446F636B6572593D2234302E30223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223130302E302220793D223135342E3933393631323832323634373737223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223130302E302220793D223235302E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223135302E302220793D223235302E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A202020203C2F62706D6E64693A42504D4E506C616E653E0A20203C2F62706D6E64693A42504D4E4469616772616D3E0A3C2F646566696E6974696F6E733E, 0);
INSERT INTO `act_ge_bytearray` VALUES ('66576fef200e11ecbaee00e04d680167', 1, 'leave.leave.png', '66102dbd200e11ecbaee00e04d680167', 0x89504E470D0A1A0A0000000D4948445200000459000001540806000000FF3BE3470000322B4944415478DAEDDD0F8C9D659D2FF0E3826159D62009864B760D9A6BB8846CCC86601623D99D1837B2B104D0C230EDB44CBA86B27B91755D0C2ADB20B8C62ABBA8A9C63FCB8210AE5743A0622FB7DA332DFD636D6391682D16E9A505CB74CA8CA43485FEA1EA7BCFEFF53C93B733E7CC9C337366E69C99CF27793233E79C393D333DEFF3FCDEEF3CCFF3964A00F3409665A7EFDDBBF7E1EDDBB7FF6EFDFAF559B95CD666B8F5F7F7679B376FFE4DA5F57A4702000040878A8065CB962DD9D0D05076E2C4096D96DAF0F070B669D3A6C3FDFDFD0BBD2B010000A003C50C16014BDB042D27CAE5F26EEF4A000000E840B14448C0D13EAD5C2E9FF4AE040000800E147B820837DA2A64C9BC2B010000600E872CAFBE3298EDDD717FF674FF5D798BCFE336C188900500000068306439726820DBF5C315D9CF1FFFF8292D6E8BFB8423421600000010B23410B2EC7FFAFB630296D45E7C7A8D7044C8020000003412B2EC7EE2F3754396B84F38226401000000214B0321CBAEF2A7EB862C719F7044C8020000004216218B900500000098999025AE26542F6489FB8423421600000010B23410B2ECD9FA95BA214BDC271C11B20000008090A58190E5E5819DD9AE75778C5D2A54B92DEE138E085900000040C8D240C8126DDF930F8E0959E236C1889005000000683464397E3CDBF3E3AF8D5D2A54B92DEE138E085900000040C83241C872E4D040F6ECD65575F76489FBE2310212210B0000000859EACC5E19DCB321FBC50F3E553760492D1E138F35AB45C80200000042962666AF98D52264010000001A08591A99BD32DEAC1661899005000000842C9536D980253561899005000000842C9A900500000010B2085900000000218B266401000000218B266401000000218B266401000000842C421600000040C8A2095900000040C8A2095900000000218B900500000010B2085900000000218B266401000000218B266401000000842C421600000040C822640100000066504F4F4FB9D22E17B208590000008029B8FEFAEBB36811B67477775F266411B2000000005308590A6D6DAD992D4216210B000000D05CC83232B3A518B60859842C000000C0244296E2CC965846246411B200000040BB87181DD1842CEDD5E6CAFB4AD3344DD34637D52300306EC8D2A121D08EEEEEEE055D5D5DA7C7E3DA3D6459B76E5DFC9EB3D75E7B2D7BFCF1C7B3A54B97668F3DF658F6810F7C20EBEBEB33930500D44D00806261C6439653C295A4DD43960858EEB9E79E3C643976ECD829B77FF2939F1CF9FAE0C183D97BDFFBDE3C8079E8A187B277BFFBDDF9CF1D5FA760E6C1071FCCCE3CF34C210B00A89B0000C5C2A442966D3D3D3D578F0E573A216459BD7AF5C872A608556EBBEDB691CFAFB9E69A318F8F2026EE8B192FE971F7DD775FFE318296085FDEFAD6B70A590040DD040028169A7A7D3567AE744AC8B273E7CE3C1C79E491474E99B5129FAF5DBB36FBEE77BF9B7FFEC4134F8C99F912B356D2E7BB76EDCA3F7EFBDBDFCE0E1C38907FBE7FFF7E210B00A89B0000C5426BB56BC872E8D0A13C68D9B66D5B76C92597E461C9D9679F9D7F9D1EF3C20B2FE4A149CC78397CF8701EAEC4D7F7DE7B6FB66AD5AAFCF3871F7ED84C1600503701008A85F91BB2448B6025829308509E7CF2C96CEBD6ADF9D7A99D71C61979A0921E7FE4C8913C5089CD72D34C96347B2566B2C4FD7BF6EC11B20080BA0900502CCCAF9025C291685BB66CC937BD8D3D57D2EDB15CA8DEF7A4E54211B6A4D92D318BE5FDEF7F7F3EA345C80200EA260040B130AF4296E2FE2C71E5A06290522F6439E79C73F2E5459B366DCA67C0A4C7C74C1697700600751300A0589877214BDA6FE5E28B2FCEF6EDDB975F31285D8A396EFFD0873E34F279042ACF3DF75CFEF985175E982F118A50265DD2B954DD93257D1E9BE90A590040DD04002816E645C832BAC572A1891E137BAE34F378210B00A89B0000C5C2BC0B59E64B13B200A06E0200140B42164DC8020042160040C8A209590040DD04002816842C421600503701008A05218B26640140DD04002816842C9A900500842C00806241C822640100751300A05810B208590040DD04002816842C9A90050075130080904513B20080900500502C0859842C00A06E0200140B4216210B00A89B0000C582904513B200A06E020010B26842160010B200008A05218B900500D44D00806241C822640100751300A05810B268421600D44D000042164DC80200EA260040B1206411B20080BA0900502C0859842C00A06E0200140B42164DC8020042160040C8A209590040DD04002816842C421600503701008A05218B900500D44D00806241C8A209590040C80200085934210B00A89B0000C5C264AC5FBF5EB8D13EED58B95C3EE9E80240DD040028163AD0E6CD9B07878686041C6DD0060606BE532E97773BBA00503701008A850EB461C386AB366EDCF8CA4B2FBD7454D0317B33582260E9EFEF7FA1D2163ABA00503701008A850E5539B15F502E9777C45295D813449BF116BFF7DD021600D44D008062010000751300A0580000503701008A050000751300A0580000503701008A05C5020080BA0900502C0000A89B0000C5020080BA0900502C0000A89B0000140B0000EA260040B10000A06E0200140B0000EA260040B10000A06E0200502C0000A89B0000C5020080BA0900502C0000A89B0000C5020080BA49DD040028160000D44D008062010040DD040028160000D44D008062010000751300A0580000503701008A050000751300A0580000503701008A050000D44D008062010040DD040028160000D44D008062010040DD040028160000503701008A050000751300A058000068BB1A694DD44913B41D7E530040B18010B200008CAD912EADB493E3852CDDDDDD0BFCA60080620121640100A85D27AD1D2764D9D6D5D575BADF1200502C1E842C0000B5EBA44BEB852C3D3D3D57FB0D0100A38B07210B0040FD5AA9D6DE2C3BCC6201006A150E42160080FAB5D298BD59ECC50200D42B1C842C0000E3E8EEEE5E6D160B003021210B00C0F8BABBBB2F2BECC57285DF08005093900500A0A19A29DF9BC52C160060BC8241C802003071CD74A9BA090098A860502C00D322CBB2D3F7EEDDFBF0F6EDDB7FB77EFDFAAC5C2E6B33DCFAFBFBB3CD9B37FFA6D27ABD23D11FE80FF407002064013A549C506DD9B2251B1A1ACA4E9C38A1CD521B1E1ECE366DDA74B87282B5D0BB12FD81FE407F00004216A003C55FAC9D50B5CD89D58972B9BCDBBB12FD81A63F0000210BD081624980139AF6699593AA93DE95E80F34FD01000859800E147B00389969AB932AFD3DFA034D7F00004216602E9F54BDFACA60B677C7FDD9D3FD77E52D3E8FDB9C0839A9427FA03FD01F00809005A0C193AA238706B25D3F5C91FDFCF18F9FD2E2B6B8CFC990932AF407FA03FD010008590027550D9C54ED7FFAFB634EA8527BF1E9354E869C54A13FD01FE80F0040C802D0C849D5EE273E5FF7A42AEE7332E4A40AFD81FE407F00004216C04955032755BBCA9FAE7B5215F73919725285FE407FA03F00E6B82CCB4EDFBB77EFC3DBB76FFF5D5C8E2E3A296D665B7F7F7FB679F3E6DF545AAF77A490057052A539A9427FA0E90F800E1501CB962D5BB2A1A1219DF42CB6E1E1E16CD3A64D87FBFBFB177A570A5980CE3CA98AAB87D43BA98AFB8C774EAAD01FE80FF407C01C173358042C6D13B49CA80C12BBBD2B5B13B22C59B2E42CBF1160264FAAF66CFD4ADD93AAB8CF58E7A40AFD81FE407F00CC71B14448E7DC5683C449EFCAA9872C958F5D95B6EFCA2BAFFC13BF1560A64EAA5E1ED899ED5A77C7D8A50195DBE23EE39C932AF407FA03FD016090D00C121D15B2540396A19E9E9EBFF11B01667ABCDCF7E483634EAAE236639CF112FD81FE407F00182446DAABAF0C667B77DC9FAF218D169FC76D3A7683441B862C02166076C6CBE3C7B33D3FFEDAD8A50195DBE23EE39CF112FD81FE407F001824B2238706B25D3F5C3176BA63E5B6B84FE76E906893802566B06402166036C6CB180F9FDDBAAAEE1E0C719F31D37889FE407FA03F00842CD9FEA7BF5F779078F1E9353A778344BB042C43AE2E04CCF87879FC7836B86743F68B1F7CAAEE58995A3C261EEBAFD8C64BF407FA03FD01308F4396DD4F7CBEEE0011F7E9DC0D12ED10B0C40C16210B3093E3E5447FADF6576CE325FA03FD81FE0030488C69BBCA9FAE3B30C47D3A7783443B042CD5AFFDFE80191B2F1BF96BF5787FC536EE192FD11FE80FF407809045C86290680B4B962C392B2ED35CDC8345C802CCE47839D913AAD48C7BC64BF407FA03FD01300F4396B89A50BD0121EED3B91B2466CB95575EF927C5AF852CC06C8E979AF112FD81A63F8046F4F5F5BDB972EEB2B0D25655DAB64A1BAC5E2935B5F87A5B7777F77FF6F4F4F456DAB97E6B736890D8B3F52B754396B84FE76E9068174216C04995F112F407FA036857DDDDDD0B2AE72C6B7A7A7A7E3B2A5499B055BEA75C69577775759DEE37D9E183C4CB033BB35DEBEE18BB54A8725BDCA7733748085900E3A566BC447FA0E90FA0EE79CAA53D3D3DDB9B0D56EAB41D95E7BAC26FB5C307897D4F3E38266489DB74EC0609210B60BCD48C97E80F34FD018C15B34E7A7A7A3E576BE6CA6DB7DD963DFCF0C3D9D6AD5BB35FFFFAD7D9B163C7B2F0FAEBAFE75F6FDFBE3D7BF4D147B3152B56D40B5B56F5F5F5FDB1DF72270E12C78F677B7EFCB5B14B852AB7C57D3A7783449B785F356491EA024EAA8C97A03FD01FC0AC5ABC78F19F8F9EBDB264C992ECFEFBEFCF060707B3663CFFFCF3D9BDF7DE9BF5F5F58D0E5A7E11FF8EDF76070D12470E0D64CF6E5D55774F96B82F1EA3833748CCB24B2BED50A5ADAA7E5CE0570238A9325E82FE407F00B3A1A7A7E7A2458B161D2806229FFBDCE7B2A1A1A16C2A5E7EF9E5ECAEBBEE1A1DB4ECAFB4B7F9ADB7FB2071FC7836B86743F68B1F7C6AC24BCEC563E2B166B5182466C9FB2A6DB8D2FA0A5F47D062460BE0A4CA7809FA03FD01CCA89859520C5862F6CAC68D1BB3DFFEF6B759AB6CD9B2257F5E414B870C1213CD5E31ABC520D146AE28D59EB9928217335A002755C64BD01FE80F604654F760195922B478F1E2EC99679EC9A643ECD9326AF9D02FAEBDF6DA3FF5BFD086834423B357C69BD5A2B33748CC90B444E88A260318002755C64BD01FE80FA0E56293DBE20C96E90A588A414B0439C5CD70FD2FB4E12031D98025359DBD41622642E2D21F66AAF44EF038410BE0A4CA7809FA03FD014CBBEA659A47AE22144B8466422C1D2AEED1E2F2CE0609CD20D1ACB4E7CAD50D3E3E052D3A1BC07869BC04FD81FE00A6457199506C72DBCA3D5826326A33DC1DB16CC9FF884142334834E2B2D2E4F65A8960E688A005305E1A2F417FA03F8056EBEEEE5E505C2634D5AB084DE6AA43C5FD597A7A7AAEF6BF6290D00C1213E92A35B644A81E4B8700E3A5F112F407FA0368B9EBAFBF7E4D0A38EEBFFFFE6C363CF4D043C590A5EC7FC520A119241A0948A69AC8BE4FD002182F8D97A03FD01F40ABF4F5F5BDB9B817CBE0E0E0AC842C317BA6B8096EE5359DDB921FB0F2DC7FBC73E7CEE50F3CF0C0A6952B571EBEE5965B4EA66933BDBDBDBFFF877FF88713B7DF7EFBDECF7FFEF30F55DAFF304818240C126DEFF2526BF7547179676044FCA5A7D22E375E1A2FA195FDC1B163C7B2BFFAABBFCADB638F3D16EFD7EC431FFAD0C8E7DFFEF6B7F3BF3AC7E7070E1CC8F6ECD9937DE0031FC8DBD2A54BF3C79D71C619D9A64D9BB2F5EBD767870E1DCA9F371EBF76EDDA917F27BE8E739DE2BF7DDA69A765B7DD765BCDD775E4C891FC7B62A3CC745B7A4DC3C3C3E3FE4C8F3FFE78FE9AA6EBB88ED7F0AD6F7D6BE4F737D1EBD11FD02EFDC2F5D75FBF30051B71ECCDA6152B56144396DE29FDF011AE3CF2C8230F7EE6339F39F9D18F7E34FBC637BE915FCE686060203F48437C8C74E7A73FFD69F6C0030F64FFF44FFFF4FB7FFEE77F7EFEC61B6FFCB090455334B66DC01281C8C2163FAFCD708154188D4CABEDEEEEBECC7869BC447FD0AAFEE0B5D75ECBDBEAD5ABF30021028EB8FDBBDFFDEEC8635290108F8B739578DCF9E79F3F72FFBBDEF5AE9110E4B9E79ECB3FC625615310115FEFDAB52BFFFE77BFFBDD238F5DB468D1C8E7715F3C3E029B74DB05175C907DE10B5FC8039CF8FAEB5FFFFA84C1477CEF5BDEF29653EEFBD297BE34A56379EBD6ADD975D75D37F2BABABABAB2871F7E38FF3C6ED71FD009FD425C36393D2EDEBFB3E9D1471F1D09592AAFF73F27FD836FDFBE7DD9BFFDDBBF1DFFF8C73F9E0728CDECE2FBB39FFD2CFBC4273EF1DBE5CB97EFBEF6DA6BDF2164D1148D6D232DED59388DCF6F335C503C65A3DADA5A7FB1325E1A2FD11F34DB1FAC5BB76E243CB8EFBEFBF28F2FBEF86276C92597646BD6ACC9DEFEF6B7E7A1427A7C8419F19868F17D31A3251E579C69121F2398482147042EDBB66DCB2EBCF0C2534294071F7C30BF2D8294E22C96085522AC898F3183263D4F71C64D9AE572F8F0E1FCEB14DEC45FC8CF3AEBACECF6DB6F1F79EC134F3C31A563390540E975ECDCB933FBE637BF794A98A33FA0DDFB85CA6DDBD2FD717CCEA698685278ADDB9AFE812BCF717AE500DF70D34D37E51DD0542E91F4831FFC205BB66CD9D1F936AB45D1A8686C536989502CE97943A5DD50FD3815B59EC7D221503C65B5DAE8E9C1C64BE325FA8366FB8308104A85192811A2C4B29FF8FC97BFFC65CD5923D1BEFCE52FE7570A89E544117EA48026BE273EEEDFBF7FE4F3082452F0F2777FF7773567B244D853FC379E7CF2C991D791668DA4D77AE79D778E3C36FE181DB36A623952043EC5969EBB18E234D3F6EDDB97BFDE68C5E78BA516F1F1631FFBD8C86D13FDBEF507CC76BF50F97A30DDFEEB5FFF7A56439658C953789D834D072C1B376EFCC9473EF291ECD9679F6DC90B7AFEF9E7B39B6EBAE9E8873FFCE1FF2964D1148DB31AB0A425421188FC57B5E8F8AF29042DE33D8FAB0E81E269BCB636A6071B2F8D97E80F9AE90F22244921410419679F7D763EB3246689C46D95F38D31B341E2F37BEEB9270F36E2FBD3CC9665CB96E51FFFF22FFFF2943D51525012FBBB4448127BB5A41930F1315E7371BF96F4FCF179042DF1EF4680F3C8238F8CDC1F4B9BD2E3E3F9DEF8C637D60C836246CE9BDEF4A6FCDF98EC0C9658EE94BE8E192CF1BCF13B8AD79E7E37C5FD67F407B46BBF50FCFAF5D75F9FD59025FEFDE2EB69EA878D192C11B0B4FAFAD3F17C37DE78E391296F122364D1148D9391028FB444E886F4579D29042DC58025B5A5A31E939626593AC47C2E12B4719AF1B2BD9AF7A4D609FD41DA83256A8FAF7EF5AB23E14B7C7DF0E0C19100A6185E4460124B7D56AE5C999D73CE39D95FFCC55FE4FB9EC47DB12CA8549DC9924290A79E7A2A9FD592428A98211241C90B2FBC9007157FF6677F36F2EFC6CC9468F19878EC4F7EF29391CF5360530C35E2F373CF3D377FADB1374C2C478AFD64E271B194E8CC33CF6C78DF947A2D36FC8DFD6122F4898FB7DC728BFE40EBE8D60E2615B2C41E2CB144A85533586ACD6859BA74E9A19E9E9E8B842C9A9065C674D5083A6A0524CD042DB5BEFFDE3ADF6FE910733E64F15B682A7CDAD1DDDDBDA0ABABEBF4761C2F63F941F13545FFF6D9CF7EB6EEBE10A5EA7280B83A48FA2B775CC564F455498C97E80F5AD71F44F8916664C4AC9498A11241450417E9B81D1DB2A4FD4F22CC88E542EF7CE73BF3C0240528A5EAD2A0B45FCA45175D94DF5EDCD3243E46F812CF13C145AD99281190A4AF63E3DCB82D2E1E527C5CDA14377D7DEBADB79E12C4C42C97B862D26467B2BCE73DEFC967F4145F57FCBCC5992CC5D92EFA03DAB55F28DE9E2EBAD3513359E22A4277DD75D789D883653A558A90A38B172FDE36D7DF34421645639BB8AC1AB05CDD6050D248D0D24CC092583A849045F174CAC9543B8F97A5EA5FB6D35FA0D36698B51E174B04464FCF8FDB3FF9C94F8E7C1D7FAD7EEF7BDF9B9FDCC4C95D9CECC5EFA4B8FC20FEC25E3C39335EA23FA8DFE2984A61411C83B1C4A618ACD40A59E2F169E649BAC473BAEC72DA87A5B8C74AFC1B114CA4A024053111B6C47E2E1164145F53CC82897D576286CBCD37DF3CB274A854986D530C6823A489E78E4D7AE3B5A59F21429C58BA540C5952BD55BC7A52332DC2A462909CFE1DFD01EDDE2F14F76489091B1DB727CBEAD5ABFF575C456826D63AFDE33FFEE3C1B9BE6C48C82264690369A94E5F9381C97841CB640296D1AF47D08290657E154FDB2A63FED5A34FA6DA71BC8C139ED84321AEBE11273D71A2135F5F7CF1C523FB2DA416CB06D26B2F5537954C9F5F73CD357537EA8C192FE97169D3CD085AE2A4EFAD6F7DABF112FD418341682C872955AF0214C76CF1F8294D309325AE42141BC38E7EAE38AED3B2A378BED157E889253CB12C28669AC426BAE9BE1490C4558A22708D193571ACC712A5745F71364BCC5889254BB1ACA8F873C5CF922E1F5DDC93259E376DC45B398F6AFAB81E1D0237BADF8BFE80D9EE173AFAEA42318BE5339FF9CCC9B84CF34CF8F9CF7F7E62AECF6611B20859665957138146A341CB5402962466B40C97ECD18290653EFC5E6AFEA5BA9DC7CB7A9B51C6C69A575D75D5988D242380291566AD94AAD3FDD3DE0AA32FC15A2AFC353D3E4F7F218F13B1B8E46BA9B02784F112FD41ED16CB798ACBF5D2E5978B57152A8DBA724E7C1D4B748A8167CC32197D7CA64B2C179725C5ACB677BCE31D23C76EF139EEBDF7DE91CF63E64B9A3512335D8AB34ED2B2A40856D36B8FF0B6561812E14C690AB356EA2D218AD972A97ED31FD029FD42E531AB52B011C7C46C7AF4D147474296CAEBFECF097FC04AB1B03C36BB9DCAA59A9BB56CD9B2839517F8B64E7B338CBED49C9045C832DBEFB51A2E2DD55F2234D9A0A515014B316839226841C842A7862CB18C28829638F98ABF884758128F89AF479F54C55FC6E3A4302D6D8893B255AB569D728957335940FDAC7E869A35D6C2146CC48CD1D9B462C58AE265A6275E95F3C0030F6C8A417F267DF18B5FFC59E505DEDA89C574BA7E775C6ACE20619098EDF75A8D0063A22542CD062D7FD4C28025B17408210B6D19B2441F17170188E023ED9752AAB17165042B715F0428F117F198C69C36954C4B8DA2B62A5E0DA554D8F3213E4FB35762264BDC1F4B168C97E80FD4ADEA67F883BEBEBE3757EAAC93E9BC28F6149A0D71A5E4458B16FDBE707E76EE842F7EE5CA9587638DD14CFAF18F7FFC7CE505AEE9D413DFE2F5BB6BCD363048182466EABD5623B898CA0C915A41CBAF5A1CB0140321571D42C8E2A4AA6DC68A581A90961C447F179B58A64BA1C6BE0AA3971694AACB0B628A7FDABBA134CE34FF5261B950842D29C089592CEF7FFFFBF350C77889FE40DDAA7E8653EAAC35E97CE81BDFF8C6AC842C314E17FF00DED00BBFE5965B4E0E0E0ECEE80B3D78F0E050E545EE9F0327BE23BFECE209B041C2203153EFB5AA4B5B1858D40A5A5A1DB0148316335A10B238A99AF5167BA144F011CB7F2A75D1C8655C235C89BF9CC532A2E225518BFBB3C495838A414ABD902536BA8CE78F4BCDA67D254AD5992CC64BE88CFA398ED9E8134E3BEDB491207674885AAFC57E2B31CB4DFD0C8D8B7D5BD279D092254BF25925332936C3BEE1861B8AB3581ADB92A1AFAF6FC6AF3B1DFF5EE5451E9B2B27BEC5D906B1B443C8629098A9F75AE90F33582260E96BE13F1F4B8446CF60F955F5F6566BC50C1C10B238A99A744B571389253F1184F4F6F69E727F6C18994EA28AFBADC4C6957159D738712A2E2D8A4BAFA6CF235049974CBDF0C20BF3254211CAA44B3A97AA7BB2A4CF63335DE325FA83F66B11C4A6E334EDA7F4AD6F7D2B3BEFBCF346FA87D883A95628138F8BCFE3FBE34A48C5FBBEF4A52FA99F61E25A6BE42A4377DD75D78CEE251BFF5EF132D3136DE07D4A81381B1A3889ECD8266469AF3657DF671FFCE0075300F2B516F663E3CD6419EFF2CE537177F5F9DF6C1841C8E2A46A365B9C24A53E2FF66659BE7C79FE79CC5869E4F2A8F55AECB9D2CCE39D54A13F68BF96AE2494AE2016C14B5C8639852F11A6C4C7B409769A11972E1F1D1B679E75D659D9EDB7DF3EF23DA3AF42A63F80B1AEBBEEBAF715CF81366EDC382379452C091EB5A2A0F13F0AC7F497999EC972F4E8D183736C26CB2997A06A9741A25458531E97AE5BB46851DE52C79ED690D72A18E3FE3BEEB8A3A97F2B9EDB2031B3EFB5526B97DC34B2274BAB8316335910B238A9D28C97D0F6FD416C8EFD852F7C21AF87E2635C112C5D0ABA54BD8C74A93AD3256EFBD9CF7E969D7FFEF959AC1A489B698FDE543B9E477F000DD55B77A7F3A1C58B17E701C8748A3D6B7B7B7B7F5F38075BD5D40BFEC8473E7262A6F7643970E0C0AFE6C89E2C35AFEFDD4E214B9ABA1853A053929E3AF6E8FCD354E9BFFEEBBFCE5BEAF8D32072F3CD37E75F7FF39BDFCCBF8EC4BEDEBF555C976E909899F7DAA8A0622A414BBDCB34D7BABA50AB8296D85BE648C99E2C08599C5469C64BF4076DDE1F940AB355D2C758329866ACC4E7C590A5DE65E14BD5FD9EDEF4A637E5359EFE002616E740C5654311B4C432DFE90A586EB8E186DF15CEC37E71EDB5D7FE69532F78C58A157B66FAEA423FFCE10FFF6F875F5D685B6C7A536F4DD66C0F12B1E63B05295FFDEA57F3F5E491B647E75FECE0D320509CCA1C297CF1F64809475F55A1DEC0535C676A909899F75AC115D5C062323342EA052C6F18E7FEA9062D5D9516416BAF6103218B932ACD78099D10B2A425852964893A3B66B3C4E7692678316439F7DC73E3821FD9BBDEF5AE7C8FA6B4D428829933CF3C33BBEEBAEBF407D0A0C58B17FF79A5EEDA530C5A62E9502BF7688973DF513358F657DADB9A7EB177DF7DF7BD15331AB2DC71C71D8F575EECAD1D584C8F379BA0AD0689D4D1A79DCE6BCD6479EAA9A74EF99EB499DF97BFFCE5539E27D69096AA1BFE8DF76FB5EB8EE91D1AB234F45E1B65324B6F260A584AD310B4B8AA104216842CC64BE8A8FE20FD41B2346A93DBF8FA631FFBD8983F62C652FD62FD7CEBADB7E65F47F8125FC72C97D8285B7F004DD55D6F2B062D6933DCA95E752856768CDAE476F2014BF8D77FFDD7FF7EF3CD37FF6E0677E93DB668D1A2E726FD820D124D25EE11A8FCFBBFFF7B7EA9B9180052C872DB6DB79DB26428A5F0870E1D1A595F9A9E23AE9C101F972D5B56F3DF890DBEE2FE0872DA7143BF7936483413B4341AB0B4326811B0206441C8E2A40A3AAE3F88FAB8B8C96DD4D6314B25BE4EAFBD54B84A585C16FE820B2EC876EDDA95BDFDED6FCFBF37668797AA7FE88C3F4E0A59A079D5192DDB8A81485CDEF9FEFBEFCF9ADD0625C299871E7AE894CB34A7254253CE2B2A27DFFFEFA73FFDE94C2D157AA8F282B71824A6AFEDD9B3275BB97265DE89C79B26CD34896544A53A97988B4B4C8E5E2B1ACF53AA5E8272A23027F663891DD24BE3CC783148CC78D0B2A085014B2B8296785D935DD2044216E3A566BC447F30AB57174A756F0427E96A43F107CB78ED5FFFFAD7476AE8B45C28FE00397A3FC3679E7966A436B7270B4C4ECCF6EFEEEEFE62AD0B857CEA539FCA97E6C59E2DCF3FFF7CF6FAEBAFE739447C1C1818C8F75CF9DEF7BE97AFD658B468D1EF6B3CC7AAA6F760A9E5EFFFFEEFAFFD977FF9979333309BE550E50779AAA7A7A7D72031BD7BB244425EAA5E5E2E66A7940ABB9E47FA1E6FBCE8F86B7D7FECDD9236BA8DA98E8D2C4BBAEFBEFB46069E08780C12B32E828CE13A81C6640396A9042D2960318305210B42162755D051FD417149FD3BDFF9CEFC0F96175D74513EDBBBF847C7348B25CD64B9F8E28B6BD6CE699678D4E3FA0398BCEAE59DB78D7365D666DA8EA62ED3DC88E5CB97EF5CB366CDB4262CB1FF4BCC6269729F0983C414960B45D29E029334A5313AFD46BEB7D4C0AC94784C5C91287D1D697EDC169BED1A24DA2268A935A3E58629042CE3052D4BEB85CD25976946C8829045C802FA03FD014C83D8CB322EAC5369279B0D577A7A7ACA0D5E68645285E2DB962D5B76F4D9679F9D968065E7CE9D8F55FE8DC1CA0F709141626636E78A13DFCAEF3DFF184B7F624F95F8BCB8E74ABDFD55222C898DBB5288323C3C5C3360B9E69A6BC6DC1E4B94E2BECA1B75646AA54162D6D45A3A540C482613B034F33C9795FE30A366A1EE1F210B4EAA9C5481FE407F00D3A5AFAFEFCDDDDDDDD7C7929FEA0C97C151A14A7CBDADF298FF8CD535D75E7BED7F9BF617D5DBDBBB78F9F2E5AF4D7577DED15E7CF1C51F2D5AB4E885B9BE4CA89D06896AC79855DE68F965E2D25AD23BEFBC33ABFC1FE7F79D7FFEF9F9BAD198E112FBA944281297A21B1DD6C4F2A2EA89443E0B2696209D77DE7935F776492DD6A1960A1B811924663D6819BD174A04224B4B53BB0CF344CF93962C592284900527554EAA407FA03F80F969F1E2C5CB6EBCF1C623AD9AD11233582260E9EEEEFE8441423348CC6AD0329357F5711521842C182F8D97A03FD01F0021A6D8F4F6F61EFEDEF7BEF7EA1436C33DF41FFFF11FF757A7E4F419243483C4AC9BA99925AE22849005E3A5F112F407FA036054E1F8B6458B16AD5FBE7CF9C1A79E7AEA6813E1CAB175EBD6FDEFDEDEDE1DB1C9ED7CD883C5206190E8B0A0653A0390F4FC66B02064C17869BC04FD81FE00A851402E8CB0A5AFAF6F68E5CA954FFFE8473F7A61606060302E3F168E1E3D7AF0C08103BFEAEFEFFF3F9FFEF4A7D72E5EBC786F842B317B65AE5F45C8206190E850D3B574282D11328305210BC64BE325CCD9FEE0D5575FCDAFE0191FA772BBFE00E6B9C58B17FF794F4FCF472B05E5C395B6AFD28E5577E88D8FFBAB974CBA3566C01824148D06897917B4C45584064B66B02064C17869BC8439DE1F44605279C9F9C7A9DCAE3F0050342A1AE796562D1DEA12B02064C17869BC04218B900540D1A8689CEFA63AA3257DFF42BF4A842C182F8D97206411B200281A158D8296C9EDA5E22A420859842CC64BE3250859842C0006094523530C4C5C4508842CC64BE3250859842C0006094523E30427C30D0427AE22044216E3A5F112842C4216008384A2912906285DA5E9B9FC3308598C979AF112FD8190457F00A0683448CC39F5960E5D5E72152110B2182F8D97206411B2001824148D341DB41467ACA4E0A5D7AF06842CC64BE3250859842C0006094523930B5AEE2E5922044216E3A5F112F4074216008384669098922BAA279136B905218BF1D27809FA03210B804142D168907012098E0FE3A566BC447F2064D11F000609CD20E124121C1F73D4FAF5EB8D53EDD38E55C6CB93DE95E80F842CFA0340C8A209599C4482E3A3036DDEBC79706868C858D5066D6060E03B95F172B77725FA8389DBABAFBE9A0726F1712AB7EB0F00842C4216279180E3A365366CD870D5C68D1B5F79E9A5978E1AAF66EF2FD67142D5DFDFFF42A52DF4AE447FA03FD01F0042164DC8E224121C1F1DAA52C82FA8F4D33B626A7AF4D7DA8CB7F8BDEF764285FE40D31F0042164DC8E224121C1F00B4CB98B026C685AEAEAED3FD3600842C42169C4482E3038049E8EEEEBEAC32269C8C71A1A7A7E70ABF1100218B90052791E0F800607221CBEA1813AA6D87DF08809045C8829348707C00D0FC5870699AC5925A7777F702BF1900218B90052791E0F800A0B9B1604D316049B359ECCD02206411B2E024121C1F00343E0E8C99C5925A4F4FCFD57E43002DB07EFD7AE146FBB46371393AEF4A2791E0F800601AC681B5B502966ADBE63704D0029B376F1E1C1A1A1270B4411B1818F84EB95CDEED5DE924121C1F00B4780CA83B8BC5DE2C002DB461C386AB366EDCF8CA4B2FBD7454D0317B33582260E9EFEF7FA1D2167A573A8904C707002D1E03D68C17B0B8D210400B554EEC1794CBE51DB15425F604D166BCC5EF7DB780C54924383E00302E00008A05707C00605C0000140BE0F800C0B80000A05800C70700C6050040B1008E0F008C0B008062011C1F0018170000C502383E00302E00002816C0F10180710100502C80E30300E30200A05800C70700C6050040B1008E0F00302E00008A05707C00605C0000140BE0F800C0B800002816C0F10180710100502C80E3C3F10180710100502C80E30300E30200A05800C70700C6050040B1008E0F008C0B00806201707C00605C0000140BE0F800C0B800002816C0F10180710100502C80E30300E30200A058001C1F0018170000C502383E00302E00008A05707C00605C0000140BE0F800C0B80000A05800C70700C6050040B1008E0F008C0B008062011C1F0018170000C502383E00302E00002816C0F10180710100502C80E30300E30200A05800C70700C6050040B1008E0F008C0B00008A05707C00605C0000140BE0F800C0B800002816C0F10180710100502C80E303008C0B008062011C1F0018170000C502383E00302E00008A85999465D9E97BF7EE7D78FBF6EDBF5BBF7E7D562E97B5196EFDFDFDD9E6CD9B7F5369BD8E0F00D44D008062A14345C0B265CB966C6868283B71E284364B6D787838DBB469D3E1FEFEFE858E0F00D44D008062A103C50C16014BDB042D27CAE5F26EC70700EA260040B1D08162899080A37D5AB95C3EE9F80040DD040028163A50EC0922DC68AB9025737C00A06E0200140B73386479F595C16CEF8EFBB3A7FBEFCA5B7C1EB70946842C8A69008C0B008062A1C190E5C8A1816CD70F57643F7FFCE3A7B4B82DEE138E085914D30018170000214B0321CBFEA7BF3F266049EDC5A7D70847842C8A69008C0B008062A1919065F7139FAF1BB2C47DC211218B621A00E302002064692064D955FE74DD9025EE138E085914D30018170000218B9045C8E2F800C0B80000281666266489AB09D50B59E23EE1889045310D8071010010B23410B2ECD9FA95BA214BDC271C11B228A601302E0000429606429697077666BBD6DD3176A950E5B6B84F382264514C03605C0000842C0D842CD1F63DF9E09890256E138C085914D30018170000C542A321CBF1E3D99E1F7F6DEC52A1CA6D719F7044C832CAFBAAC7C7157A0A00842C008090A5DA8E1C1AC89EDDBAAAEE9E2C715F3C46402264A9BAB4D20E55DAAAEAC7057A0B00842C00C0FC0E598E1FCF06F76CC87EF1834FD50D58528BC7C463CD6A99F721CBFB2A6DB8D2FA0A5F47D062460B80BA49C80200CCCF9065A2D92B66B508596AB8A2547BE64A0A5ECC680150370100CCBF90A591D92BE3CD6A1196CCBB90252D11BAA2C9000600751300C0DC0E59261BB0A4262C9957214B57E90F33557A27789CA00540DD040030FF42164DC8D2A0B4E7CAD50D3E3E052DF6680150370100085934214BD565A5C9EDB512C1CC11410B80BA090040C8A209591A5F22548FA54300EA260000218B36EF439614905C3DC5E7799FA00540DD04002064D1E66BC87279A9B57BAAB8BC3380BA090040C8A2CDBB90E5F26A20B2B0C5CF6B335C00751300A05810B268F32664494B7B164EE3F3DB0C1740DD04002816842CDA9C0E59D212A158D2F3864ABBA1FA712A6A3D8FA54300EA260040B12064D1E66CC8525C221481C87F555A56FD38D9A065BCE771D52100751300A05810B268732E644981475A2274433518C9A610B4140396D4968E7A4C5A9A64E91080BA0900502C0859B48E0F59BA6A041DB502926682965ADF7F6F9DEFB7740840DD04002816842C5AC7872C97550396AB1B0C4A1A095A9A0958124B8700D44D00806241C8A2756CC89296EAF43519988C17B44C266019FD7A042D00EA260040B12064D13A2664E96A22D0683468994AC092C48C96E1923D5A00D44D00806261B6F4F4F4942BED7221CBFC09591AFD3FAFE1D252FD2542930D5A5A11B01483962313052D4B962C394BCF04A06E0200140BD3F2FAA2C589777777F7654296B91FB234FA7F5E23C098688950B341CB1FB5306049C65D3A14014BE567DF57F9D9FF46EF04A06E0200140BD312B214DADA5AB31C842C732F6499E8FFBC46703195A538B582965FB5386029064275AF3A14014BE5671E12B400A89B0000C5C274872C23B31C8A27DE4296391DB2D4FC3FAFBAB4D4BACB24D70A5A5A1DB014839643821600751300A05898F590A538CB2196940859E67EC832FAFFBCF487192C11B0F4B5F02D174B8446CF60F955F5F6561B77068EA00540DD04007460B130179A90A5BDDA74FF7F7FF0831F4C01C8D75A78388C379365BCCB3B4FC5DD73E518D4344D9B2F4DF50800CCC51068477777F782AEAEAED3E3719D12B23CF7DC73A704427102FFD9CF7E76CCE35E7CF1C56CCF9E3D238FD9B97367F6F2CB2FE79FAF59B366BECE6439E5FFBC34C1929B16042CBF9AE6A0A5A1BD64CC6801000060BA4296D127DAA54E0A595268B26DDBB6ECD0A143F9E75BB76E1DF39803070EE4F7A58F11B23CF8E083F9E7AB57AFCE2A3F7FF6B77FFBB7F32564A9F97F3E2AA8984AD052EF32CDB5AE2ED4AAA025F69639D2E8EB16B4000000D0CA90655BE504F3EA3A27DA1D11B2ECDAB52B7BE49147B2B7BCE52DD9638F3D969D71C619F9D7175F7C7176CF3DF79CF2D8346BE5E0C18323214B7C7CF2C927F3E0659ECC6419F7FFBCE08A6A603199AB0BD50B58DE30CEFD530D5ABA2A6D7FA5F536F34DD5A065EF95575EF9277A060000002673C23DDE2C868E0A59D6AE5D9BBDF18D6F1C73FBD9679F9D5D75D555A7DC96C295FDFBF7E71FD7AD5B9787326926CCB265CBE672C8D2D0FFF92893B98CF344014B691A8296292D7112B000000030EDE65AC8F2CC33CFE427F3AFBDF65AFE316676A4FB86878747961CCDC590650A9A095A1A0D585A19B4B4720F1900000098DF214B9C9CDF74D34DD9D2A54BF316CB86E2B68F7EF4A3631E1F3357D2FDE9F1E97B4E3BEDB4393B93A54541CB8216062CAD085AE2754D76491300000008598AED97BFFC65DED2929F3BEFBC33FF3CAE22145713AAB5416EDA8B253EC6DE2DEF79CF7BB223478EE4B73DFEF8E34296DA22C818AE13684C3660994AD0920216335800000010B24CB5C5DE2AB1AFCA25975C92DD72CB2DD9E1C387F313F40857E2B2CEB18CE8C31FFE7053214BCC8C11B28C1BB4D49AD172C3140296F18296A5751EDB556A7EAF1800000010B2D46AE94A4171A9E673CE3927EBEDED3DE5FEB834730A55E2E3BE7DFB469609DD77DF7D231FCF3BEFBCEC820B2EC8AF4814B79D75D65979782364A9ABD6D2A16240329980A599E7B9ACF48719350B1DA100000008595ADC56AF5E3D32FB21F66659BE7CF9C84C95E2E38E1D3BD6113F4F9B872C296819BD174A04224B4B53BB0CF344CF93962C59220400008090459B13214B0A5A66F2AA3EAE220400008090459B93214B0A3E66626689AB080100002064D1E674C8928296E90C40D2F39BC10200008090459BD3214B98AEA543698990192C0000000859B47911B24C47D01257111A2C99C10200008090459B67214B68D5D2A12E010B00000042166D3E872C61AA335AD2F72F74040200002064D1E673C8520C4AAE98C4F7B98A1000000042164DC83285C0C4558400000010B2684296718293E1068213571102000040C8A20959A618A07495A6E7F2CF0000002064D1E654C812EA2D1DBABCE42A42000000085934214BD3414B71C64A0A5E7A1D6900000008593421CBE48296BB4B96080100002064D1842C53124B86B2924D6E01000010B2684296297BB3A30B000000218B266401000000842C421600000040C8226411B200000080904513B200000080904513B2000000004216210B0000002064D1842C0000002064D1842C000000206411B2085900000000218B9005000000680BEBD7AF176EB44F3B562E974F7A570200004007DABC79F3E0D0D09080A30DDAC0C0C077CAE5F26EEF4A000000E8401B366CB86AE3C68DAFBCF4D24B47051DB33783250296FEFEFE172A6DA1772500000074A8CA89FD8272B9BC2396AAC49E20DA8CB7F8BDEF16B00000000000000000000000000000000000000000000000000000000000000000000000000000000000D094FF0F9D98B7E657D12D2D0000000049454E44AE426082, 1);
INSERT INTO `act_ge_bytearray` VALUES ('8956a2a4200e11ecbaee00e04d680167', 1, 'var-form_userList', NULL, 0xACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000027704000000027400053130303033740005313030303478, NULL);
INSERT INTO `act_ge_bytearray` VALUES ('895717d6200e11ecbaee00e04d680167', 1, 'hist.var-form_userList', NULL, 0xACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000027704000000027400053130303033740005313030303478, NULL);

-- ----------------------------
-- Table structure for act_ge_property
-- ----------------------------
DROP TABLE IF EXISTS `act_ge_property`;
CREATE TABLE `act_ge_property`  (
  `NAME_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`NAME_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ge_property
-- ----------------------------
INSERT INTO `act_ge_property` VALUES ('batch.schema.version', '6.7.2.3', 1);
INSERT INTO `act_ge_property` VALUES ('cfg.execution-related-entities-count', 'true', 1);
INSERT INTO `act_ge_property` VALUES ('cfg.task-related-entities-count', 'true', 1);
INSERT INTO `act_ge_property` VALUES ('common.schema.version', '6.8.0.0', 1);
INSERT INTO `act_ge_property` VALUES ('entitylink.schema.version', '6.8.0.0', 1);
INSERT INTO `act_ge_property` VALUES ('eventsubscription.schema.version', '6.8.0.0', 1);
INSERT INTO `act_ge_property` VALUES ('identitylink.schema.version', '6.8.0.0', 1);
INSERT INTO `act_ge_property` VALUES ('job.schema.version', '6.8.0.0', 1);
INSERT INTO `act_ge_property` VALUES ('next.dbid', '1', 1);
INSERT INTO `act_ge_property` VALUES ('schema.history', 'upgrade(6.7.2.0->6.8.0.0)', 4);
INSERT INTO `act_ge_property` VALUES ('schema.version', '6.8.0.0', 4);
INSERT INTO `act_ge_property` VALUES ('task.schema.version', '6.8.0.0', 1);
INSERT INTO `act_ge_property` VALUES ('variable.schema.version', '6.8.0.0', 1);

-- ----------------------------
-- Table structure for act_hi_actinst
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_actinst`;
CREATE TABLE `act_hi_actinst`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT 1,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ACT_NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ACT_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) NULL DEFAULT NULL,
  `TRANSACTION_ORDER_` int(11) NULL DEFAULT NULL,
  `DURATION_` bigint(20) NULL DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_ACT_INST_START`(`START_TIME_`) USING BTREE,
  INDEX `ACT_IDX_HI_ACT_INST_END`(`END_TIME_`) USING BTREE,
  INDEX `ACT_IDX_HI_ACT_INST_PROCINST`(`PROC_INST_ID_`, `ACT_ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_ACT_INST_EXEC`(`EXECUTION_ID_`, `ACT_ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_actinst
-- ----------------------------
INSERT INTO `act_hi_actinst` VALUES ('895717da200e11ecbaee00e04d680167', 1, 'leave:1:66580c30200e11ecbaee00e04d680167', '89560661200e11ecbaee00e04d680167', '895717d9200e11ecbaee00e04d680167', 'startEvent1', NULL, NULL, NULL, 'startEvent', NULL, '2021-09-28 11:45:34.746', '2021-09-28 11:45:34.750', 1, 4, NULL, 'flow');
INSERT INTO `act_hi_actinst` VALUES ('8957db2b200e11ecbaee00e04d680167', 1, 'leave:1:66580c30200e11ecbaee00e04d680167', '89560661200e11ecbaee00e04d680167', '895717d9200e11ecbaee00e04d680167', 'Flow_19ganz3', NULL, NULL, NULL, 'sequenceFlow', NULL, '2021-09-28 11:45:34.751', '2021-09-28 11:45:34.751', 2, 0, NULL, 'flow');
INSERT INTO `act_hi_actinst` VALUES ('8958023c200e11ecbaee00e04d680167', 1, 'leave:1:66580c30200e11ecbaee00e04d680167', '89560661200e11ecbaee00e04d680167', '895717d9200e11ecbaee00e04d680167', 'Activity_0cvpkas', '895a251d200e11ecbaee00e04d680167', NULL, '提交人', 'userTask', NULL, '2021-09-28 11:45:34.752', '2021-09-28 11:45:34.767', 3, 15, NULL, 'flow');
INSERT INTO `act_hi_actinst` VALUES ('895a4c2e200e11ecbaee00e04d680167', 1, 'leave:1:66580c30200e11ecbaee00e04d680167', '89560661200e11ecbaee00e04d680167', '895717d9200e11ecbaee00e04d680167', 'Flow_0u1gy6g', NULL, NULL, NULL, 'sequenceFlow', NULL, '2021-09-28 11:45:34.767', '2021-09-28 11:45:34.767', 4, 0, NULL, 'flow');
INSERT INTO `act_hi_actinst` VALUES ('895a4c2f200e11ecbaee00e04d680167', 1, 'leave:1:66580c30200e11ecbaee00e04d680167', '89560661200e11ecbaee00e04d680167', '895717d9200e11ecbaee00e04d680167', 'Gateway_00dt1rh', NULL, NULL, NULL, 'exclusiveGateway', NULL, '2021-09-28 11:45:34.767', '2021-09-28 11:45:34.770', 5, 3, NULL, 'flow');
INSERT INTO `act_hi_actinst` VALUES ('895ac160200e11ecbaee00e04d680167', 1, 'leave:1:66580c30200e11ecbaee00e04d680167', '89560661200e11ecbaee00e04d680167', '895717d9200e11ecbaee00e04d680167', 'Flow_0xb2lye', NULL, NULL, '大于三天', 'sequenceFlow', NULL, '2021-09-28 11:45:34.770', '2021-09-28 11:45:34.770', 6, 0, NULL, 'flow');
INSERT INTO `act_hi_actinst` VALUES ('895ac161200e11ecbaee00e04d680167', 1, 'leave:1:66580c30200e11ecbaee00e04d680167', '89560661200e11ecbaee00e04d680167', '895717d9200e11ecbaee00e04d680167', 'Activity_1gtvl0c', '895ac162200e11ecbaee00e04d680167', NULL, '总监', 'userTask', '10000', '2021-09-28 11:45:34.770', NULL, 7, NULL, NULL, 'flow');

-- ----------------------------
-- Table structure for act_hi_attachment
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_attachment`;
CREATE TABLE `act_hi_attachment`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `URL_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CONTENT_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TIME_` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for act_hi_comment
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_comment`;
CREATE TABLE `act_hi_comment`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ACTION_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `MESSAGE_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `FULL_MSG_` longblob NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_comment
-- ----------------------------

-- ----------------------------
-- Table structure for act_hi_detail
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_detail`;
CREATE TABLE `act_hi_detail`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `BYTEARRAY_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DOUBLE_` double NULL DEFAULT NULL,
  `LONG_` bigint(20) NULL DEFAULT NULL,
  `TEXT_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TEXT2_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_DETAIL_PROC_INST`(`PROC_INST_ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_DETAIL_ACT_INST`(`ACT_INST_ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_DETAIL_TIME`(`TIME_`) USING BTREE,
  INDEX `ACT_IDX_HI_DETAIL_NAME`(`NAME_`) USING BTREE,
  INDEX `ACT_IDX_HI_DETAIL_TASK_ID`(`TASK_ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_detail
-- ----------------------------

-- ----------------------------
-- Table structure for act_hi_entitylink
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_entitylink`;
CREATE TABLE `act_hi_entitylink`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `LINK_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CREATE_TIME_` datetime(3) NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PARENT_ELEMENT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `REF_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `REF_SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `REF_SCOPE_DEFINITION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ROOT_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ROOT_SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `HIERARCHY_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_ENT_LNK_SCOPE`(`SCOPE_ID_`, `SCOPE_TYPE_`, `LINK_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_HI_ENT_LNK_REF_SCOPE`(`REF_SCOPE_ID_`, `REF_SCOPE_TYPE_`, `LINK_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_HI_ENT_LNK_ROOT_SCOPE`(`ROOT_SCOPE_ID_`, `ROOT_SCOPE_TYPE_`, `LINK_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_HI_ENT_LNK_SCOPE_DEF`(`SCOPE_DEFINITION_ID_`, `SCOPE_TYPE_`, `LINK_TYPE_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_entitylink
-- ----------------------------

-- ----------------------------
-- Table structure for act_hi_identitylink
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_identitylink`;
CREATE TABLE `act_hi_identitylink`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CREATE_TIME_` datetime(3) NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_IDENT_LNK_USER`(`USER_ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_IDENT_LNK_SCOPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_HI_IDENT_LNK_SUB_SCOPE`(`SUB_SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_HI_IDENT_LNK_SCOPE_DEF`(`SCOPE_DEFINITION_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_HI_IDENT_LNK_TASK`(`TASK_ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_IDENT_LNK_PROCINST`(`PROC_INST_ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_identitylink
-- ----------------------------
INSERT INTO `act_hi_identitylink` VALUES ('89560662200e11ecbaee00e04d680167', NULL, 'starter', '10005', NULL, '2021-09-28 11:45:34.739', '89560661200e11ecbaee00e04d680167', NULL, NULL, NULL, NULL);
INSERT INTO `act_hi_identitylink` VALUES ('895ae873200e11ecbaee00e04d680167', NULL, 'assignee', '10000', '895ac162200e11ecbaee00e04d680167', '2021-09-28 11:45:34.771', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `act_hi_identitylink` VALUES ('895ae874200e11ecbaee00e04d680167', NULL, 'participant', '10000', NULL, '2021-09-28 11:45:34.771', '89560661200e11ecbaee00e04d680167', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for act_hi_procinst
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_procinst`;
CREATE TABLE `act_hi_procinst`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT 1,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) NULL DEFAULT NULL,
  `DURATION_` bigint(20) NULL DEFAULT NULL,
  `START_USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `START_ACT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `END_ACT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CALLBACK_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CALLBACK_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `REFERENCE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `REFERENCE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROPAGATED_STAGE_INST_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `BUSINESS_STATUS_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE INDEX `PROC_INST_ID_`(`PROC_INST_ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_PRO_INST_END`(`END_TIME_`) USING BTREE,
  INDEX `ACT_IDX_HI_PRO_I_BUSKEY`(`BUSINESS_KEY_`) USING BTREE,
  INDEX `ACT_IDX_HI_PRO_SUPER_PROCINST`(`SUPER_PROCESS_INSTANCE_ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_procinst
-- ----------------------------
INSERT INTO `act_hi_procinst` VALUES ('89560661200e11ecbaee00e04d680167', 1, '89560661200e11ecbaee00e04d680167', '0caa8ba279f0cbe1277e90ce5caa066f', 'leave:1:66580c30200e11ecbaee00e04d680167', '2021-09-28 11:45:34.738', NULL, NULL, '10005', 'startEvent1', NULL, NULL, NULL, 'flow', '请假流程-调休 2021-09-28 11:45:34', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for act_hi_taskinst
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_taskinst`;
CREATE TABLE `act_hi_taskinst`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT 1,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TASK_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROPAGATED_STAGE_INST_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `OWNER_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ASSIGNEE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `CLAIM_TIME_` datetime(3) NULL DEFAULT NULL,
  `END_TIME_` datetime(3) NULL DEFAULT NULL,
  `DURATION_` bigint(20) NULL DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PRIORITY_` int(11) NULL DEFAULT NULL,
  `DUE_DATE_` datetime(3) NULL DEFAULT NULL,
  `FORM_KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  `LAST_UPDATED_TIME_` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_TASK_SCOPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_HI_TASK_SUB_SCOPE`(`SUB_SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_HI_TASK_SCOPE_DEF`(`SCOPE_DEFINITION_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_HI_TASK_INST_PROCINST`(`PROC_INST_ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_taskinst
-- ----------------------------
INSERT INTO `act_hi_taskinst` VALUES ('895a251d200e11ecbaee00e04d680167', 1, 'leave:1:66580c30200e11ecbaee00e04d680167', NULL, 'Activity_0cvpkas', '89560661200e11ecbaee00e04d680167', '895717d9200e11ecbaee00e04d680167', NULL, NULL, NULL, NULL, NULL, '提交人', NULL, NULL, NULL, NULL, '2021-09-28 11:45:34.752', NULL, '2021-09-28 11:45:34.767', 15, NULL, 50, NULL, NULL, NULL, 'flow', '2021-09-28 11:45:34.767');
INSERT INTO `act_hi_taskinst` VALUES ('895ac162200e11ecbaee00e04d680167', 1, 'leave:1:66580c30200e11ecbaee00e04d680167', NULL, 'Activity_1gtvl0c', '89560661200e11ecbaee00e04d680167', '895717d9200e11ecbaee00e04d680167', NULL, NULL, NULL, NULL, NULL, '总监', NULL, NULL, NULL, '10000', '2021-09-28 11:45:34.770', NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, 'flow', '2021-09-28 11:45:34.771');

-- ----------------------------
-- Table structure for act_hi_tsk_log
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_tsk_log`;
CREATE TABLE `act_hi_tsk_log`  (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TIME_STAMP_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DATA_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_tsk_log
-- ----------------------------

-- ----------------------------
-- Table structure for act_hi_varinst
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_varinst`;
CREATE TABLE `act_hi_varinst`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT 1,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DOUBLE_` double NULL DEFAULT NULL,
  `LONG_` bigint(20) NULL DEFAULT NULL,
  `TEXT_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TEXT2_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CREATE_TIME_` datetime(3) NULL DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_PROCVAR_NAME_TYPE`(`NAME_`, `VAR_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_HI_VAR_SCOPE_ID_TYPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_HI_VAR_SUB_ID_TYPE`(`SUB_SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_HI_PROCVAR_PROC_INST`(`PROC_INST_ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_PROCVAR_TASK_ID`(`TASK_ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_PROCVAR_EXE`(`EXECUTION_ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_varinst
-- ----------------------------
INSERT INTO `act_hi_varinst` VALUES ('89562d73200e11ecbaee00e04d680167', 0, '89560661200e11ecbaee00e04d680167', '89560661200e11ecbaee00e04d680167', NULL, '_FLOWABLE_SKIP_EXPRESSION_ENABLED', 'boolean', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2021-09-28 11:45:34.741', '2021-09-28 11:45:34.741');
INSERT INTO `act_hi_varinst` VALUES ('8956f0c5200e11ecbaee00e04d680167', 0, '89560661200e11ecbaee00e04d680167', '89560661200e11ecbaee00e04d680167', NULL, 'form_userList', 'serializable', NULL, NULL, NULL, '895717d6200e11ecbaee00e04d680167', NULL, NULL, NULL, NULL, '2021-09-28 11:45:34.745', '2021-09-28 11:45:34.745');
INSERT INTO `act_hi_varinst` VALUES ('895717d7200e11ecbaee00e04d680167', 0, '89560661200e11ecbaee00e04d680167', '89560661200e11ecbaee00e04d680167', NULL, 'form', 'json', NULL, NULL, NULL, NULL, NULL, NULL, '{\"days\":23.0}', NULL, '2021-09-28 11:45:34.746', '2021-09-28 11:45:34.746');
INSERT INTO `act_hi_varinst` VALUES ('895717d8200e11ecbaee00e04d680167', 0, '89560661200e11ecbaee00e04d680167', '89560661200e11ecbaee00e04d680167', NULL, 'initiator', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '2021-09-28 11:45:34.746', '2021-09-28 11:45:34.746');

-- ----------------------------
-- Table structure for act_id_bytearray
-- ----------------------------
DROP TABLE IF EXISTS `act_id_bytearray`;
CREATE TABLE `act_id_bytearray`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `BYTES_` longblob NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_id_bytearray
-- ----------------------------

-- ----------------------------
-- Table structure for act_id_group
-- ----------------------------
DROP TABLE IF EXISTS `act_id_group`;
CREATE TABLE `act_id_group`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_id_group
-- ----------------------------

-- ----------------------------
-- Table structure for act_id_info
-- ----------------------------
DROP TABLE IF EXISTS `act_id_info`;
CREATE TABLE `act_id_info`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `USER_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TYPE_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `VALUE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PASSWORD_` longblob NULL,
  `PARENT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_id_info
-- ----------------------------

-- ----------------------------
-- Table structure for act_id_membership
-- ----------------------------
DROP TABLE IF EXISTS `act_id_membership`;
CREATE TABLE `act_id_membership`  (
  `USER_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`USER_ID_`, `GROUP_ID_`) USING BTREE,
  INDEX `ACT_FK_MEMB_GROUP`(`GROUP_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_id_membership
-- ----------------------------

-- ----------------------------
-- Table structure for act_id_priv
-- ----------------------------
DROP TABLE IF EXISTS `act_id_priv`;
CREATE TABLE `act_id_priv`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE INDEX `ACT_UNIQ_PRIV_NAME`(`NAME_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_id_priv
-- ----------------------------

-- ----------------------------
-- Table structure for act_id_priv_mapping
-- ----------------------------
DROP TABLE IF EXISTS `act_id_priv_mapping`;
CREATE TABLE `act_id_priv_mapping`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PRIV_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `GROUP_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_FK_PRIV_MAPPING`(`PRIV_ID_`) USING BTREE,
  INDEX `ACT_IDX_PRIV_USER`(`USER_ID_`) USING BTREE,
  INDEX `ACT_IDX_PRIV_GROUP`(`GROUP_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_PRIV_MAPPING` FOREIGN KEY (`PRIV_ID_`) REFERENCES `act_id_priv` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_id_priv_mapping
-- ----------------------------

-- ----------------------------
-- Table structure for act_id_property
-- ----------------------------
DROP TABLE IF EXISTS `act_id_property`;
CREATE TABLE `act_id_property`  (
  `NAME_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`NAME_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_id_property
-- ----------------------------
INSERT INTO `act_id_property` VALUES ('schema.version', '6.8.0.0', 1);

-- ----------------------------
-- Table structure for act_id_token
-- ----------------------------
DROP TABLE IF EXISTS `act_id_token`;
CREATE TABLE `act_id_token`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `TOKEN_VALUE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TOKEN_DATE_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `IP_ADDRESS_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `USER_AGENT_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TOKEN_DATA_` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_id_token
-- ----------------------------

-- ----------------------------
-- Table structure for act_id_user
-- ----------------------------
DROP TABLE IF EXISTS `act_id_user`;
CREATE TABLE `act_id_user`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `FIRST_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `LAST_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DISPLAY_NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EMAIL_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PWD_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PICTURE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_id_user
-- ----------------------------

-- ----------------------------
-- Table structure for act_procdef_info
-- ----------------------------
DROP TABLE IF EXISTS `act_procdef_info`;
CREATE TABLE `act_procdef_info`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE INDEX `ACT_UNIQ_INFO_PROCDEF`(`PROC_DEF_ID_`) USING BTREE,
  INDEX `ACT_IDX_INFO_PROCDEF`(`PROC_DEF_ID_`) USING BTREE,
  INDEX `ACT_FK_INFO_JSON_BA`(`INFO_JSON_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_procdef_info
-- ----------------------------

-- ----------------------------
-- Table structure for act_re_deployment
-- ----------------------------
DROP TABLE IF EXISTS `act_re_deployment`;
CREATE TABLE `act_re_deployment`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  `DEPLOY_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DERIVED_FROM_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DERIVED_FROM_ROOT_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PARENT_DEPLOYMENT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ENGINE_VERSION_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_re_deployment
-- ----------------------------
INSERT INTO `act_re_deployment` VALUES ('66102dbd200e11ecbaee00e04d680167', '请假', '222', 'leave', 'flow', '2021-09-28 11:44:35.561', NULL, NULL, '66102dbd200e11ecbaee00e04d680167', NULL);

-- ----------------------------
-- Table structure for act_re_model
-- ----------------------------
DROP TABLE IF EXISTS `act_re_model`;
CREATE TABLE `act_re_model`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `VERSION_` int(11) NULL DEFAULT NULL,
  `META_INFO_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_FK_MODEL_SOURCE`(`EDITOR_SOURCE_VALUE_ID_`) USING BTREE,
  INDEX `ACT_FK_MODEL_SOURCE_EXTRA`(`EDITOR_SOURCE_EXTRA_VALUE_ID_`) USING BTREE,
  INDEX `ACT_FK_MODEL_DEPLOYMENT`(`DEPLOYMENT_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_re_model
-- ----------------------------

-- ----------------------------
-- Table structure for act_re_procdef
-- ----------------------------
DROP TABLE IF EXISTS `act_re_procdef`;
CREATE TABLE `act_re_procdef`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) NULL DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint(4) NULL DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  `ENGINE_VERSION_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DERIVED_FROM_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DERIVED_FROM_ROOT_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DERIVED_VERSION_` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE INDEX `ACT_UNIQ_PROCDEF`(`KEY_`, `VERSION_`, `DERIVED_VERSION_`, `TENANT_ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_re_procdef
-- ----------------------------
INSERT INTO `act_re_procdef` VALUES ('leave:1:66580c30200e11ecbaee00e04d680167', 1, '222', '请假', 'leave', 1, '66102dbd200e11ecbaee00e04d680167', 'leave.bpmn', 'leave.leave.png', NULL, 0, 1, 1, 'flow', NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for act_ru_actinst
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_actinst`;
CREATE TABLE `act_ru_actinst`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT 1,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ACT_NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ACT_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) NULL DEFAULT NULL,
  `DURATION_` bigint(20) NULL DEFAULT NULL,
  `TRANSACTION_ORDER_` int(11) NULL DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_RU_ACTI_START`(`START_TIME_`) USING BTREE,
  INDEX `ACT_IDX_RU_ACTI_END`(`END_TIME_`) USING BTREE,
  INDEX `ACT_IDX_RU_ACTI_PROC`(`PROC_INST_ID_`) USING BTREE,
  INDEX `ACT_IDX_RU_ACTI_PROC_ACT`(`PROC_INST_ID_`, `ACT_ID_`) USING BTREE,
  INDEX `ACT_IDX_RU_ACTI_EXEC`(`EXECUTION_ID_`) USING BTREE,
  INDEX `ACT_IDX_RU_ACTI_EXEC_ACT`(`EXECUTION_ID_`, `ACT_ID_`) USING BTREE,
  INDEX `ACT_IDX_RU_ACTI_TASK`(`TASK_ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_actinst
-- ----------------------------
INSERT INTO `act_ru_actinst` VALUES ('895717da200e11ecbaee00e04d680167', 1, 'leave:1:66580c30200e11ecbaee00e04d680167', '89560661200e11ecbaee00e04d680167', '895717d9200e11ecbaee00e04d680167', 'startEvent1', NULL, NULL, NULL, 'startEvent', NULL, '2021-09-28 11:45:34.746', '2021-09-28 11:45:34.750', 4, 1, NULL, 'flow');
INSERT INTO `act_ru_actinst` VALUES ('8957db2b200e11ecbaee00e04d680167', 1, 'leave:1:66580c30200e11ecbaee00e04d680167', '89560661200e11ecbaee00e04d680167', '895717d9200e11ecbaee00e04d680167', 'Flow_19ganz3', NULL, NULL, NULL, 'sequenceFlow', NULL, '2021-09-28 11:45:34.751', '2021-09-28 11:45:34.751', 0, 2, NULL, 'flow');
INSERT INTO `act_ru_actinst` VALUES ('8958023c200e11ecbaee00e04d680167', 1, 'leave:1:66580c30200e11ecbaee00e04d680167', '89560661200e11ecbaee00e04d680167', '895717d9200e11ecbaee00e04d680167', 'Activity_0cvpkas', '895a251d200e11ecbaee00e04d680167', NULL, '提交人', 'userTask', NULL, '2021-09-28 11:45:34.752', '2021-09-28 11:45:34.767', 15, 3, NULL, 'flow');
INSERT INTO `act_ru_actinst` VALUES ('895a4c2e200e11ecbaee00e04d680167', 1, 'leave:1:66580c30200e11ecbaee00e04d680167', '89560661200e11ecbaee00e04d680167', '895717d9200e11ecbaee00e04d680167', 'Flow_0u1gy6g', NULL, NULL, NULL, 'sequenceFlow', NULL, '2021-09-28 11:45:34.767', '2021-09-28 11:45:34.767', 0, 4, NULL, 'flow');
INSERT INTO `act_ru_actinst` VALUES ('895a4c2f200e11ecbaee00e04d680167', 1, 'leave:1:66580c30200e11ecbaee00e04d680167', '89560661200e11ecbaee00e04d680167', '895717d9200e11ecbaee00e04d680167', 'Gateway_00dt1rh', NULL, NULL, NULL, 'exclusiveGateway', NULL, '2021-09-28 11:45:34.767', '2021-09-28 11:45:34.770', 3, 5, NULL, 'flow');
INSERT INTO `act_ru_actinst` VALUES ('895ac160200e11ecbaee00e04d680167', 1, 'leave:1:66580c30200e11ecbaee00e04d680167', '89560661200e11ecbaee00e04d680167', '895717d9200e11ecbaee00e04d680167', 'Flow_0xb2lye', NULL, NULL, '大于三天', 'sequenceFlow', NULL, '2021-09-28 11:45:34.770', '2021-09-28 11:45:34.770', 0, 6, NULL, 'flow');
INSERT INTO `act_ru_actinst` VALUES ('895ac161200e11ecbaee00e04d680167', 1, 'leave:1:66580c30200e11ecbaee00e04d680167', '89560661200e11ecbaee00e04d680167', '895717d9200e11ecbaee00e04d680167', 'Activity_1gtvl0c', '895ac162200e11ecbaee00e04d680167', NULL, '总监', 'userTask', '10000', '2021-09-28 11:45:34.770', NULL, NULL, 7, NULL, 'flow');

-- ----------------------------
-- Table structure for act_ru_deadletter_job
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_deadletter_job`;
CREATE TABLE `act_ru_deadletter_job`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CORRELATION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_DEADLETTER_JOB_EXCEPTION_STACK_ID`(`EXCEPTION_STACK_ID_`) USING BTREE,
  INDEX `ACT_IDX_DEADLETTER_JOB_CUSTOM_VALUES_ID`(`CUSTOM_VALUES_ID_`) USING BTREE,
  INDEX `ACT_IDX_DEADLETTER_JOB_CORRELATION_ID`(`CORRELATION_ID_`) USING BTREE,
  INDEX `ACT_IDX_DJOB_SCOPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_DJOB_SUB_SCOPE`(`SUB_SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_DJOB_SCOPE_DEF`(`SCOPE_DEFINITION_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_FK_DEADLETTER_JOB_EXECUTION`(`EXECUTION_ID_`) USING BTREE,
  INDEX `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE`(`PROCESS_INSTANCE_ID_`) USING BTREE,
  INDEX `ACT_FK_DEADLETTER_JOB_PROC_DEF`(`PROC_DEF_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_deadletter_job
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_entitylink
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_entitylink`;
CREATE TABLE `act_ru_entitylink`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `CREATE_TIME_` datetime(3) NULL DEFAULT NULL,
  `LINK_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PARENT_ELEMENT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `REF_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `REF_SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `REF_SCOPE_DEFINITION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ROOT_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ROOT_SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `HIERARCHY_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_ENT_LNK_SCOPE`(`SCOPE_ID_`, `SCOPE_TYPE_`, `LINK_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_ENT_LNK_REF_SCOPE`(`REF_SCOPE_ID_`, `REF_SCOPE_TYPE_`, `LINK_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_ENT_LNK_ROOT_SCOPE`(`ROOT_SCOPE_ID_`, `ROOT_SCOPE_TYPE_`, `LINK_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_ENT_LNK_SCOPE_DEF`(`SCOPE_DEFINITION_ID_`, `SCOPE_TYPE_`, `LINK_TYPE_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_entitylink
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_event_subscr
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_event_subscr`;
CREATE TABLE `act_ru_event_subscr`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CONFIGURATION_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CREATED_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_EVENT_SUBSCR_CONFIG_`(`CONFIGURATION_`) USING BTREE,
  INDEX `ACT_FK_EVENT_EXEC`(`EXECUTION_ID_`) USING BTREE,
  INDEX `ACT_IDX_EVENT_SUBSCR_SCOPEREF_`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_event_subscr
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_execution
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_execution`;
CREATE TABLE `act_ru_execution`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PARENT_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ACT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) NULL DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) NULL DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) NULL DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) NULL DEFAULT NULL,
  `IS_MI_ROOT_` tinyint(4) NULL DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) NULL DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `START_ACT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `START_TIME_` datetime(3) NULL DEFAULT NULL,
  `START_USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `IS_COUNT_ENABLED_` tinyint(4) NULL DEFAULT NULL,
  `EVT_SUBSCR_COUNT_` int(11) NULL DEFAULT NULL,
  `TASK_COUNT_` int(11) NULL DEFAULT NULL,
  `JOB_COUNT_` int(11) NULL DEFAULT NULL,
  `TIMER_JOB_COUNT_` int(11) NULL DEFAULT NULL,
  `SUSP_JOB_COUNT_` int(11) NULL DEFAULT NULL,
  `DEADLETTER_JOB_COUNT_` int(11) NULL DEFAULT NULL,
  `EXTERNAL_WORKER_JOB_COUNT_` int(11) NULL DEFAULT NULL,
  `VAR_COUNT_` int(11) NULL DEFAULT NULL,
  `ID_LINK_COUNT_` int(11) NULL DEFAULT NULL,
  `CALLBACK_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CALLBACK_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `REFERENCE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `REFERENCE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROPAGATED_STAGE_INST_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `BUSINESS_STATUS_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_EXEC_BUSKEY`(`BUSINESS_KEY_`) USING BTREE,
  INDEX `ACT_IDC_EXEC_ROOT`(`ROOT_PROC_INST_ID_`) USING BTREE,
  INDEX `ACT_IDX_EXEC_REF_ID_`(`REFERENCE_ID_`) USING BTREE,
  INDEX `ACT_FK_EXE_PROCINST`(`PROC_INST_ID_`) USING BTREE,
  INDEX `ACT_FK_EXE_PARENT`(`PARENT_ID_`) USING BTREE,
  INDEX `ACT_FK_EXE_SUPER`(`SUPER_EXEC_`) USING BTREE,
  INDEX `ACT_FK_EXE_PROCDEF`(`PROC_DEF_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_execution
-- ----------------------------
INSERT INTO `act_ru_execution` VALUES ('89560661200e11ecbaee00e04d680167', 1, '89560661200e11ecbaee00e04d680167', '0caa8ba279f0cbe1277e90ce5caa066f', NULL, 'leave:1:66580c30200e11ecbaee00e04d680167', NULL, '89560661200e11ecbaee00e04d680167', NULL, 1, 0, 1, 0, 0, 1, NULL, 'flow', '请假流程-调休 2021-09-28 11:45:34', 'startEvent1', '2021-09-28 11:45:34.738', '10005', NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `act_ru_execution` VALUES ('895717d9200e11ecbaee00e04d680167', 1, '89560661200e11ecbaee00e04d680167', NULL, '89560661200e11ecbaee00e04d680167', 'leave:1:66580c30200e11ecbaee00e04d680167', NULL, '89560661200e11ecbaee00e04d680167', 'Activity_1gtvl0c', 1, 0, 0, 0, 0, 1, NULL, 'flow', NULL, NULL, '2021-09-28 11:45:34.746', NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for act_ru_external_job
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_external_job`;
CREATE TABLE `act_ru_external_job`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CORRELATION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `RETRIES_` int(11) NULL DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_EXTERNAL_JOB_EXCEPTION_STACK_ID`(`EXCEPTION_STACK_ID_`) USING BTREE,
  INDEX `ACT_IDX_EXTERNAL_JOB_CUSTOM_VALUES_ID`(`CUSTOM_VALUES_ID_`) USING BTREE,
  INDEX `ACT_IDX_EXTERNAL_JOB_CORRELATION_ID`(`CORRELATION_ID_`) USING BTREE,
  INDEX `ACT_IDX_EJOB_SCOPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_EJOB_SUB_SCOPE`(`SUB_SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_EJOB_SCOPE_DEF`(`SCOPE_DEFINITION_ID_`, `SCOPE_TYPE_`) USING BTREE,
  CONSTRAINT `ACT_FK_EXTERNAL_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_EXTERNAL_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_external_job
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_history_job
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_history_job`;
CREATE TABLE `act_ru_history_job`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `RETRIES_` int(11) NULL DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ADV_HANDLER_CFG_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_history_job
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_identitylink
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_identitylink`;
CREATE TABLE `act_ru_identitylink`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `GROUP_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_IDENT_LNK_USER`(`USER_ID_`) USING BTREE,
  INDEX `ACT_IDX_IDENT_LNK_GROUP`(`GROUP_ID_`) USING BTREE,
  INDEX `ACT_IDX_IDENT_LNK_SCOPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_IDENT_LNK_SUB_SCOPE`(`SUB_SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_IDENT_LNK_SCOPE_DEF`(`SCOPE_DEFINITION_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_ATHRZ_PROCEDEF`(`PROC_DEF_ID_`) USING BTREE,
  INDEX `ACT_FK_TSKASS_TASK`(`TASK_ID_`) USING BTREE,
  INDEX `ACT_FK_IDL_PROCINST`(`PROC_INST_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_identitylink
-- ----------------------------
INSERT INTO `act_ru_identitylink` VALUES ('89560662200e11ecbaee00e04d680167', 1, NULL, 'starter', '10005', NULL, '89560661200e11ecbaee00e04d680167', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `act_ru_identitylink` VALUES ('895ae874200e11ecbaee00e04d680167', 1, NULL, 'participant', '10000', NULL, '89560661200e11ecbaee00e04d680167', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for act_ru_job
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_job`;
CREATE TABLE `act_ru_job`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CORRELATION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `RETRIES_` int(11) NULL DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_JOB_EXCEPTION_STACK_ID`(`EXCEPTION_STACK_ID_`) USING BTREE,
  INDEX `ACT_IDX_JOB_CUSTOM_VALUES_ID`(`CUSTOM_VALUES_ID_`) USING BTREE,
  INDEX `ACT_IDX_JOB_CORRELATION_ID`(`CORRELATION_ID_`) USING BTREE,
  INDEX `ACT_IDX_JOB_SCOPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_JOB_SUB_SCOPE`(`SUB_SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_JOB_SCOPE_DEF`(`SCOPE_DEFINITION_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_FK_JOB_EXECUTION`(`EXECUTION_ID_`) USING BTREE,
  INDEX `ACT_FK_JOB_PROCESS_INSTANCE`(`PROCESS_INSTANCE_ID_`) USING BTREE,
  INDEX `ACT_FK_JOB_PROC_DEF`(`PROC_DEF_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_job
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_suspended_job
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_suspended_job`;
CREATE TABLE `act_ru_suspended_job`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CORRELATION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `RETRIES_` int(11) NULL DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_SUSPENDED_JOB_EXCEPTION_STACK_ID`(`EXCEPTION_STACK_ID_`) USING BTREE,
  INDEX `ACT_IDX_SUSPENDED_JOB_CUSTOM_VALUES_ID`(`CUSTOM_VALUES_ID_`) USING BTREE,
  INDEX `ACT_IDX_SUSPENDED_JOB_CORRELATION_ID`(`CORRELATION_ID_`) USING BTREE,
  INDEX `ACT_IDX_SJOB_SCOPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_SJOB_SUB_SCOPE`(`SUB_SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_SJOB_SCOPE_DEF`(`SCOPE_DEFINITION_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_FK_SUSPENDED_JOB_EXECUTION`(`EXECUTION_ID_`) USING BTREE,
  INDEX `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE`(`PROCESS_INSTANCE_ID_`) USING BTREE,
  INDEX `ACT_FK_SUSPENDED_JOB_PROC_DEF`(`PROC_DEF_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_suspended_job
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_task
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_task`;
CREATE TABLE `act_ru_task`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TASK_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROPAGATED_STAGE_INST_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `OWNER_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ASSIGNEE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DELEGATION_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PRIORITY_` int(11) NULL DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DUE_DATE_` datetime(3) NULL DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  `FORM_KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CLAIM_TIME_` datetime(3) NULL DEFAULT NULL,
  `IS_COUNT_ENABLED_` tinyint(4) NULL DEFAULT NULL,
  `VAR_COUNT_` int(11) NULL DEFAULT NULL,
  `ID_LINK_COUNT_` int(11) NULL DEFAULT NULL,
  `SUB_TASK_COUNT_` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_TASK_CREATE`(`CREATE_TIME_`) USING BTREE,
  INDEX `ACT_IDX_TASK_SCOPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_TASK_SUB_SCOPE`(`SUB_SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_TASK_SCOPE_DEF`(`SCOPE_DEFINITION_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_FK_TASK_EXE`(`EXECUTION_ID_`) USING BTREE,
  INDEX `ACT_FK_TASK_PROCINST`(`PROC_INST_ID_`) USING BTREE,
  INDEX `ACT_FK_TASK_PROCDEF`(`PROC_DEF_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_task
-- ----------------------------
INSERT INTO `act_ru_task` VALUES ('895ac162200e11ecbaee00e04d680167', 1, '895717d9200e11ecbaee00e04d680167', '89560661200e11ecbaee00e04d680167', 'leave:1:66580c30200e11ecbaee00e04d680167', NULL, NULL, NULL, NULL, NULL, NULL, '总监', NULL, NULL, 'Activity_1gtvl0c', NULL, '10000', NULL, 50, '2021-09-28 11:45:34.770', NULL, NULL, 1, 'flow', NULL, NULL, 1, 0, 0, 0);

-- ----------------------------
-- Table structure for act_ru_timer_job
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_timer_job`;
CREATE TABLE `act_ru_timer_job`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CORRELATION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `RETRIES_` int(11) NULL DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_TIMER_JOB_EXCEPTION_STACK_ID`(`EXCEPTION_STACK_ID_`) USING BTREE,
  INDEX `ACT_IDX_TIMER_JOB_CUSTOM_VALUES_ID`(`CUSTOM_VALUES_ID_`) USING BTREE,
  INDEX `ACT_IDX_TIMER_JOB_CORRELATION_ID`(`CORRELATION_ID_`) USING BTREE,
  INDEX `ACT_IDX_TIMER_JOB_DUEDATE`(`DUEDATE_`) USING BTREE,
  INDEX `ACT_IDX_TJOB_SCOPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_TJOB_SUB_SCOPE`(`SUB_SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_TJOB_SCOPE_DEF`(`SCOPE_DEFINITION_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_FK_TIMER_JOB_EXECUTION`(`EXECUTION_ID_`) USING BTREE,
  INDEX `ACT_FK_TIMER_JOB_PROCESS_INSTANCE`(`PROCESS_INSTANCE_ID_`) USING BTREE,
  INDEX `ACT_FK_TIMER_JOB_PROC_DEF`(`PROC_DEF_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_TIMER_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TIMER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TIMER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TIMER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_timer_job
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_variable
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_variable`;
CREATE TABLE `act_ru_variable`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DOUBLE_` double NULL DEFAULT NULL,
  `LONG_` bigint(20) NULL DEFAULT NULL,
  `TEXT_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TEXT2_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_RU_VAR_SCOPE_ID_TYPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_RU_VAR_SUB_ID_TYPE`(`SUB_SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_FK_VAR_BYTEARRAY`(`BYTEARRAY_ID_`) USING BTREE,
  INDEX `ACT_IDX_VARIABLE_TASK_ID`(`TASK_ID_`) USING BTREE,
  INDEX `ACT_FK_VAR_EXE`(`EXECUTION_ID_`) USING BTREE,
  INDEX `ACT_FK_VAR_PROCINST`(`PROC_INST_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_variable
-- ----------------------------
INSERT INTO `act_ru_variable` VALUES ('89562d73200e11ecbaee00e04d680167', 1, 'boolean', '_FLOWABLE_SKIP_EXPRESSION_ENABLED', '89560661200e11ecbaee00e04d680167', '89560661200e11ecbaee00e04d680167', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO `act_ru_variable` VALUES ('8956f0c5200e11ecbaee00e04d680167', 1, 'serializable', 'form_userList', '89560661200e11ecbaee00e04d680167', '89560661200e11ecbaee00e04d680167', NULL, NULL, NULL, NULL, '8956a2a4200e11ecbaee00e04d680167', NULL, NULL, NULL, NULL);
INSERT INTO `act_ru_variable` VALUES ('895717d7200e11ecbaee00e04d680167', 1, 'json', 'form', '89560661200e11ecbaee00e04d680167', '89560661200e11ecbaee00e04d680167', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"days\":23.0}', NULL);
INSERT INTO `act_ru_variable` VALUES ('895717d8200e11ecbaee00e04d680167', 1, 'string', 'initiator', '89560661200e11ecbaee00e04d680167', '89560661200e11ecbaee00e04d680167', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);

-- ----------------------------
-- Table structure for flw_channel_definition
-- ----------------------------
DROP TABLE IF EXISTS `flw_channel_definition`;
CREATE TABLE `flw_channel_definition`  (
  `ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `VERSION_` int(11) NULL DEFAULT NULL,
  `KEY_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CREATE_TIME_` datetime(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `RESOURCE_NAME_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DESCRIPTION_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `IMPLEMENTATION_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE INDEX `ACT_IDX_CHANNEL_DEF_UNIQ`(`KEY_`, `VERSION_`, `TENANT_ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of flw_channel_definition
-- ----------------------------

-- ----------------------------
-- Table structure for flw_ev_databasechangelog
-- ----------------------------
DROP TABLE IF EXISTS `flw_ev_databasechangelog`;
CREATE TABLE `flw_ev_databasechangelog`  (
  `ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `AUTHOR` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `FILENAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `DATEEXECUTED` datetime(0) NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `MD5SUM` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `COMMENTS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `TAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `LIQUIBASE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CONTEXTS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `LABELS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of flw_ev_databasechangelog
-- ----------------------------
INSERT INTO `flw_ev_databasechangelog` VALUES ('1', 'flowable', 'org/flowable/eventregistry/db/liquibase/flowable-eventregistry-db-changelog.xml', '2021-09-28 11:36:31', 1, 'EXECUTED', '8:1b0c48c9cf7945be799d868a2626d687', 'createTable tableName=FLW_EVENT_DEPLOYMENT; createTable tableName=FLW_EVENT_RESOURCE; createTable tableName=FLW_EVENT_DEFINITION; createIndex indexName=ACT_IDX_EVENT_DEF_UNIQ, tableName=FLW_EVENT_DEFINITION; createTable tableName=FLW_CHANNEL_DEFIN...', '', NULL, '4.3.5', NULL, NULL, '2800191377');
INSERT INTO `flw_ev_databasechangelog` VALUES ('2', 'flowable', 'org/flowable/eventregistry/db/liquibase/flowable-eventregistry-db-changelog.xml', '2022-05-18 19:20:01', 2, 'EXECUTED', '8:0ea825feb8e470558f0b5754352b9cda', 'addColumn tableName=FLW_CHANNEL_DEFINITION; addColumn tableName=FLW_CHANNEL_DEFINITION', '', NULL, '4.5.0', NULL, NULL, '2872801056');
INSERT INTO `flw_ev_databasechangelog` VALUES ('3', 'flowable', 'org/flowable/eventregistry/db/liquibase/flowable-eventregistry-db-changelog.xml', '2022-05-18 19:20:01', 3, 'EXECUTED', '8:3c2bb293350b5cbe6504331980c9dcee', 'customChange', '', NULL, '4.5.0', NULL, NULL, '2872801056');

-- ----------------------------
-- Table structure for flw_ev_databasechangeloglock
-- ----------------------------
DROP TABLE IF EXISTS `flw_ev_databasechangeloglock`;
CREATE TABLE `flw_ev_databasechangeloglock`  (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime(0) NULL DEFAULT NULL,
  `LOCKEDBY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of flw_ev_databasechangeloglock
-- ----------------------------
INSERT INTO `flw_ev_databasechangeloglock` VALUES (1, b'0', NULL, NULL);

-- ----------------------------
-- Table structure for flw_event_definition
-- ----------------------------
DROP TABLE IF EXISTS `flw_event_definition`;
CREATE TABLE `flw_event_definition`  (
  `ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `VERSION_` int(11) NULL DEFAULT NULL,
  `KEY_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `RESOURCE_NAME_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DESCRIPTION_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE INDEX `ACT_IDX_EVENT_DEF_UNIQ`(`KEY_`, `VERSION_`, `TENANT_ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of flw_event_definition
-- ----------------------------

-- ----------------------------
-- Table structure for flw_event_deployment
-- ----------------------------
DROP TABLE IF EXISTS `flw_event_deployment`;
CREATE TABLE `flw_event_deployment`  (
  `ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DEPLOY_TIME_` datetime(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `PARENT_DEPLOYMENT_ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of flw_event_deployment
-- ----------------------------

-- ----------------------------
-- Table structure for flw_event_resource
-- ----------------------------
DROP TABLE IF EXISTS `flw_event_resource`;
CREATE TABLE `flw_event_resource`  (
  `ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `RESOURCE_BYTES_` longblob NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of flw_event_resource
-- ----------------------------

-- ----------------------------
-- Table structure for flw_ru_batch
-- ----------------------------
DROP TABLE IF EXISTS `flw_ru_batch`;
CREATE TABLE `flw_ru_batch`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `TYPE_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `SEARCH_KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SEARCH_KEY2_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CREATE_TIME_` datetime(3) NOT NULL,
  `COMPLETE_TIME_` datetime(3) NULL DEFAULT NULL,
  `STATUS_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `BATCH_DOC_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of flw_ru_batch
-- ----------------------------

-- ----------------------------
-- Table structure for flw_ru_batch_part
-- ----------------------------
DROP TABLE IF EXISTS `flw_ru_batch_part`;
CREATE TABLE `flw_ru_batch_part`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `BATCH_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TYPE_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `SCOPE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SEARCH_KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SEARCH_KEY2_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CREATE_TIME_` datetime(3) NOT NULL,
  `COMPLETE_TIME_` datetime(3) NULL DEFAULT NULL,
  `STATUS_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `RESULT_DOC_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `FLW_IDX_BATCH_PART`(`BATCH_ID_`) USING BTREE,
  CONSTRAINT `FLW_FK_BATCH_PART_PARENT` FOREIGN KEY (`BATCH_ID_`) REFERENCES `flw_ru_batch` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of flw_ru_batch_part
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_base_app
-- ----------------------------
DROP TABLE IF EXISTS `tbl_base_app`;
CREATE TABLE `tbl_base_app`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '名称',
  `db_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '数据库id',
  `group_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '项目脚手架组织ID 如:com.example  com已经默认添加',
  `status` int(1) NULL DEFAULT NULL,
  `sn` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '系统标示',
  `secret_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `url` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '系统url前缀',
  `index_url` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '系统首页URL',
  `image` blob NULL COMMENT '系统的图标',
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '系统备注',
  `create_time` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `creator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人',
  `del_flag` int(11) NULL DEFAULT 1 COMMENT '删除标识0：删除1：存在',
  `order_no` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sn_unique_index`(`sn`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_base_app
-- ----------------------------
INSERT INTO `tbl_base_app` VALUES ('1376919254872035330', '门户', NULL, NULL, 0, 'portal', 'K9909Jszc%YcleRr50c9aRO88q5QdxK#~0XeJz8FU89092MA5ytwyE%bFTL0MUwF', 'http://localhost:8000', '/index', 0x616E742D64657369676E3A6163636F756E742D626F6F6B2D66696C6C6564, NULL, '2023-01-16 13:17:56', NULL, NULL, NULL, 1, 1);
INSERT INTO `tbl_base_app` VALUES ('1376919486070460417', '流程中心', NULL, NULL, 1, 'flow', 'Fu9E9N9m19b52@H9A6YWa0t8T2&$1Y~lt0d2nO9du1SP9m71X7bk@0551hVGG!K7', 'http://localhost:8989', '/index.html', NULL, NULL, '2021-05-19 15:05:02', NULL, NULL, NULL, 1, 1);
INSERT INTO `tbl_base_app` VALUES ('1376919513455071234', 'MDM', NULL, NULL, 1, 'mdm', 'g71U1Q7$cxxmv1R3PcC^99ypS0@9ne37ol1U1U30a719Ql@33m2cG1V950h8w0Nu', 'http://localhost:8889', '/index.html', NULL, NULL, '2023-01-16 13:24:53', NULL, NULL, NULL, 1, 11);
INSERT INTO `tbl_base_app` VALUES ('1376919546057396226', '权限系统', NULL, NULL, 0, 'privilege', 'a5q27p0E12ZjJm8Vg9J*1gs21f9lt0kP7L09v49s~Kk7ufcG4oOr#959lbfhj78c', 'http://localhost:9988', '/index.html', NULL, NULL, '2023-01-16 13:19:59', NULL, NULL, NULL, 1, 33);

-- ----------------------------
-- Table structure for tbl_base_area
-- ----------------------------
DROP TABLE IF EXISTS `tbl_base_area`;
CREATE TABLE `tbl_base_area`  (
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编码',
  `pcode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '父编码',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `del_flag` int(1) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `creator` varchar(96) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `updator` varchar(96) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '区域信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_base_area
-- ----------------------------
INSERT INTO `tbl_base_area` VALUES ('110000', NULL, '北京市', 1, NULL, NULL, '2021-04-28 22:35:32', '0000001');
INSERT INTO `tbl_base_area` VALUES ('110100', '110000', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('110101', '110100', '东城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('110102', '110100', '西城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('110105', '110100', '朝阳区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('110106', '110100', '丰台区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('110107', '110100', '石景山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('110108', '110100', '海淀区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('110109', '110100', '门头沟区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('110111', '110100', '房山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('110112', '110100', '通州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('110113', '110100', '顺义区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('110114', '110100', '昌平区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('110115', '110100', '大兴区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('110116', '110100', '怀柔区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('110117', '110100', '平谷区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('110118', '110100', '密云区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('110119', '110100', '延庆区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('11111', '44444', '3333333334', 0, NULL, NULL, '2021-04-16 15:58:01', '0000001');
INSERT INTO `tbl_base_area` VALUES ('120000', NULL, '天津市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('120100', '120000', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('120101', '120100', '和平区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('120102', '120100', '河东区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('120103', '120100', '河西区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('120104', '120100', '南开区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('120105', '120100', '河北区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('120106', '120100', '红桥区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('120110', '120100', '东丽区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('120111', '120100', '西青区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('120112', '120100', '津南区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('120113', '120100', '北辰区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('120114', '120100', '武清区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('120115', '120100', '宝坻区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('120116', '120100', '滨海新区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('120117', '120100', '宁河区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('120118', '120100', '静海区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('120119', '120100', '蓟州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130000', NULL, '河北省', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130100', '130000', '石家庄市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130101', '130100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130102', '130100', '长安区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130104', '130100', '桥西区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130105', '130100', '新华区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130107', '130100', '井陉矿区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130108', '130100', '裕华区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130109', '130100', '藁城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130110', '130100', '鹿泉区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130111', '130100', '栾城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130121', '130100', '井陉县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130123', '130100', '正定县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130125', '130100', '行唐县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130126', '130100', '灵寿县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130127', '130100', '高邑县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130128', '130100', '深泽县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130129', '130100', '赞皇县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130130', '130100', '无极县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130131', '130100', '平山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130132', '130100', '元氏县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130133', '130100', '赵县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130183', '130100', '晋州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130184', '130100', '新乐市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130200', '130000', '唐山市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130201', '130200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130202', '130200', '路南区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130203', '130200', '路北区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130204', '130200', '古冶区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130205', '130200', '开平区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130207', '130200', '丰南区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130208', '130200', '丰润区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130209', '130200', '曹妃甸区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130223', '130200', '滦县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130224', '130200', '滦南县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130225', '130200', '乐亭县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130227', '130200', '迁西县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130229', '130200', '玉田县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130281', '130200', '遵化市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130283', '130200', '迁安市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130300', '130000', '秦皇岛市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130301', '130300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130302', '130300', '海港区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130303', '130300', '山海关区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130304', '130300', '北戴河区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130306', '130300', '抚宁区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130321', '130300', '青龙满族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130322', '130300', '昌黎县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130324', '130300', '卢龙县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130400', '130000', '邯郸市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130401', '130400', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130402', '130400', '邯山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130403', '130400', '丛台区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130404', '130400', '复兴区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130406', '130400', '峰峰矿区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130421', '130400', '邯郸县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130423', '130400', '临漳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130424', '130400', '成安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130425', '130400', '大名县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130426', '130400', '涉县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130427', '130400', '磁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130428', '130400', '肥乡县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130429', '130400', '永年县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130430', '130400', '邱县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130431', '130400', '鸡泽县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130432', '130400', '广平县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130433', '130400', '馆陶县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130434', '130400', '魏县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130435', '130400', '曲周县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130481', '130400', '武安市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130500', '130000', '邢台市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130501', '130500', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130502', '130500', '桥东区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130503', '130500', '桥西区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130521', '130500', '邢台县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130522', '130500', '临城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130523', '130500', '内丘县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130524', '130500', '柏乡县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130525', '130500', '隆尧县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130526', '130500', '任县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130527', '130500', '南和县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130528', '130500', '宁晋县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130529', '130500', '巨鹿县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130530', '130500', '新河县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130531', '130500', '广宗县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130532', '130500', '平乡县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130533', '130500', '威县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130534', '130500', '清河县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130535', '130500', '临西县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130581', '130500', '南宫市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130582', '130500', '沙河市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130600', '130000', '保定市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130601', '130600', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130602', '130600', '竞秀区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130606', '130600', '莲池区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130607', '130600', '满城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130608', '130600', '清苑区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130609', '130600', '徐水区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130623', '130600', '涞水县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130624', '130600', '阜平县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130626', '130600', '定兴县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130627', '130600', '唐县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130628', '130600', '高阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130629', '130600', '容城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130630', '130600', '涞源县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130631', '130600', '望都县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130632', '130600', '安新县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130633', '130600', '易县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130634', '130600', '曲阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130635', '130600', '蠡县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130636', '130600', '顺平县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130637', '130600', '博野县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130638', '130600', '雄县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130681', '130600', '涿州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130683', '130600', '安国市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130684', '130600', '高碑店市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130700', '130000', '张家口市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130701', '130700', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130702', '130700', '桥东区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130703', '130700', '桥西区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130705', '130700', '宣化区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130706', '130700', '下花园区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130708', '130700', '万全区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130709', '130700', '崇礼区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130722', '130700', '张北县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130723', '130700', '康保县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130724', '130700', '沽源县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130725', '130700', '尚义县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130726', '130700', '蔚县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130727', '130700', '阳原县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130728', '130700', '怀安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130730', '130700', '怀来县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130731', '130700', '涿鹿县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130732', '130700', '赤城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130800', '130000', '承德市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130801', '130800', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130802', '130800', '双桥区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130803', '130800', '双滦区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130804', '130800', '鹰手营子矿区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130821', '130800', '承德县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130822', '130800', '兴隆县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130823', '130800', '平泉县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130824', '130800', '滦平县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130825', '130800', '隆化县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130826', '130800', '丰宁满族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130827', '130800', '宽城满族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130828', '130800', '围场满族蒙古族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130900', '130000', '沧州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130901', '130900', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130902', '130900', '新华区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130903', '130900', '运河区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130921', '130900', '沧县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130922', '130900', '青县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130923', '130900', '东光县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130924', '130900', '海兴县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130925', '130900', '盐山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130926', '130900', '肃宁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130927', '130900', '南皮县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130928', '130900', '吴桥县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130929', '130900', '献县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130930', '130900', '孟村回族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130981', '130900', '泊头市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130982', '130900', '任丘市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130983', '130900', '黄骅市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('130984', '130900', '河间市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('131000', '130000', '廊坊市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('131001', '131000', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('131002', '131000', '安次区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('131003', '131000', '广阳区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('131022', '131000', '固安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('131023', '131000', '永清县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('131024', '131000', '香河县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('131025', '131000', '大城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('131026', '131000', '文安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('131028', '131000', '大厂回族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('131081', '131000', '霸州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('131082', '131000', '三河市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('131100', '130000', '衡水市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('131101', '131100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('131102', '131100', '桃城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('131103', '131100', '冀州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('131121', '131100', '枣强县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('131122', '131100', '武邑县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('131123', '131100', '武强县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('131124', '131100', '饶阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('131125', '131100', '安平县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('131126', '131100', '故城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('131127', '131100', '景县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('131128', '131100', '阜城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('131182', '131100', '深州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('139000', '130000', '省直辖县级行政区划', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('139001', '139000', '定州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('139002', '139000', '辛集市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140000', NULL, '山西省', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140100', '140000', '太原市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140101', '140100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140105', '140100', '小店区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140106', '140100', '迎泽区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140107', '140100', '杏花岭区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140108', '140100', '尖草坪区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140109', '140100', '万柏林区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140110', '140100', '晋源区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140121', '140100', '清徐县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140122', '140100', '阳曲县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140123', '140100', '娄烦县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140181', '140100', '古交市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140200', '140000', '大同市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140201', '140200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140202', '140200', '城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140203', '140200', '矿区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140211', '140200', '南郊区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140212', '140200', '新荣区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140221', '140200', '阳高县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140222', '140200', '天镇县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140223', '140200', '广灵县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140224', '140200', '灵丘县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140225', '140200', '浑源县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140226', '140200', '左云县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140227', '140200', '大同县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140300', '140000', '阳泉市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140301', '140300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140302', '140300', '城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140303', '140300', '矿区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140311', '140300', '郊区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140321', '140300', '平定县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140322', '140300', '盂县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140400', '140000', '长治市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140401', '140400', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140402', '140400', '城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140411', '140400', '郊区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140421', '140400', '长治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140423', '140400', '襄垣县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140424', '140400', '屯留县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140425', '140400', '平顺县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140426', '140400', '黎城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140427', '140400', '壶关县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140428', '140400', '长子县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140429', '140400', '武乡县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140430', '140400', '沁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140431', '140400', '沁源县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140481', '140400', '潞城市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140500', '140000', '晋城市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140501', '140500', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140502', '140500', '城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140521', '140500', '沁水县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140522', '140500', '阳城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140524', '140500', '陵川县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140525', '140500', '泽州县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140581', '140500', '高平市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140600', '140000', '朔州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140601', '140600', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140602', '140600', '朔城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140603', '140600', '平鲁区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140621', '140600', '山阴县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140622', '140600', '应县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140623', '140600', '右玉县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140624', '140600', '怀仁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140700', '140000', '晋中市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140701', '140700', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140702', '140700', '榆次区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140721', '140700', '榆社县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140722', '140700', '左权县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140723', '140700', '和顺县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140724', '140700', '昔阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140725', '140700', '寿阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140726', '140700', '太谷县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140727', '140700', '祁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140728', '140700', '平遥县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140729', '140700', '灵石县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140781', '140700', '介休市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140800', '140000', '运城市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140801', '140800', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140802', '140800', '盐湖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140821', '140800', '临猗县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140822', '140800', '万荣县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140823', '140800', '闻喜县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140824', '140800', '稷山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140825', '140800', '新绛县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140826', '140800', '绛县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140827', '140800', '垣曲县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140828', '140800', '夏县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140829', '140800', '平陆县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140830', '140800', '芮城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140881', '140800', '永济市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140882', '140800', '河津市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140900', '140000', '忻州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140901', '140900', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140902', '140900', '忻府区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140921', '140900', '定襄县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140922', '140900', '五台县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140923', '140900', '代县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140924', '140900', '繁峙县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140925', '140900', '宁武县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140926', '140900', '静乐县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140927', '140900', '神池县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140928', '140900', '五寨县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140929', '140900', '岢岚县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140930', '140900', '河曲县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140931', '140900', '保德县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140932', '140900', '偏关县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('140981', '140900', '原平市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141000', '140000', '临汾市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141001', '141000', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141002', '141000', '尧都区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141021', '141000', '曲沃县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141022', '141000', '翼城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141023', '141000', '襄汾县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141024', '141000', '洪洞县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141025', '141000', '古县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141026', '141000', '安泽县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141027', '141000', '浮山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141028', '141000', '吉县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141029', '141000', '乡宁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141030', '141000', '大宁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141031', '141000', '隰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141032', '141000', '永和县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141033', '141000', '蒲县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141034', '141000', '汾西县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141081', '141000', '侯马市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141082', '141000', '霍州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141100', '140000', '吕梁市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141101', '141100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141102', '141100', '离石区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141121', '141100', '文水县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141122', '141100', '交城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141123', '141100', '兴县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141124', '141100', '临县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141125', '141100', '柳林县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141126', '141100', '石楼县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141127', '141100', '岚县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141128', '141100', '方山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141129', '141100', '中阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141130', '141100', '交口县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141181', '141100', '孝义市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('141182', '141100', '汾阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150000', NULL, '内蒙古自治区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150100', '150000', '呼和浩特市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150101', '150100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150102', '150100', '新城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150103', '150100', '回民区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150104', '150100', '玉泉区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150105', '150100', '赛罕区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150121', '150100', '土默特左旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150122', '150100', '托克托县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150123', '150100', '和林格尔县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150124', '150100', '清水河县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150125', '150100', '武川县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150200', '150000', '包头市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150201', '150200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150202', '150200', '东河区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150203', '150200', '昆都仑区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150204', '150200', '青山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150205', '150200', '石拐区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150206', '150200', '白云鄂博矿区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150207', '150200', '九原区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150221', '150200', '土默特右旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150222', '150200', '固阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150223', '150200', '达尔罕茂明安联合旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150300', '150000', '乌海市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150301', '150300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150302', '150300', '海勃湾区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150303', '150300', '海南区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150304', '150300', '乌达区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150400', '150000', '赤峰市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150401', '150400', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150402', '150400', '红山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150403', '150400', '元宝山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150404', '150400', '松山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150421', '150400', '阿鲁科尔沁旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150422', '150400', '巴林左旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150423', '150400', '巴林右旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150424', '150400', '林西县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150425', '150400', '克什克腾旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150426', '150400', '翁牛特旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150428', '150400', '喀喇沁旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150429', '150400', '宁城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150430', '150400', '敖汉旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150500', '150000', '通辽市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150501', '150500', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150502', '150500', '科尔沁区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150521', '150500', '科尔沁左翼中旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150522', '150500', '科尔沁左翼后旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150523', '150500', '开鲁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150524', '150500', '库伦旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150525', '150500', '奈曼旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150526', '150500', '扎鲁特旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150581', '150500', '霍林郭勒市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150600', '150000', '鄂尔多斯市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150601', '150600', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150602', '150600', '东胜区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150603', '150600', '康巴什区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150621', '150600', '达拉特旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150622', '150600', '准格尔旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150623', '150600', '鄂托克前旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150624', '150600', '鄂托克旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150625', '150600', '杭锦旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150626', '150600', '乌审旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150627', '150600', '伊金霍洛旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150700', '150000', '呼伦贝尔市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150701', '150700', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150702', '150700', '海拉尔区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150703', '150700', '扎赉诺尔区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150721', '150700', '阿荣旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150722', '150700', '莫力达瓦达斡尔族自治旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150723', '150700', '鄂伦春自治旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150724', '150700', '鄂温克族自治旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150725', '150700', '陈巴尔虎旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150726', '150700', '新巴尔虎左旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150727', '150700', '新巴尔虎右旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150781', '150700', '满洲里市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150782', '150700', '牙克石市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150783', '150700', '扎兰屯市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150784', '150700', '额尔古纳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150785', '150700', '根河市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150800', '150000', '巴彦淖尔市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150801', '150800', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150802', '150800', '临河区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150821', '150800', '五原县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150822', '150800', '磴口县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150823', '150800', '乌拉特前旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150824', '150800', '乌拉特中旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150825', '150800', '乌拉特后旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150826', '150800', '杭锦后旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150900', '150000', '乌兰察布市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150901', '150900', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150902', '150900', '集宁区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150921', '150900', '卓资县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150922', '150900', '化德县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150923', '150900', '商都县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150924', '150900', '兴和县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150925', '150900', '凉城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150926', '150900', '察哈尔右翼前旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150927', '150900', '察哈尔右翼中旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150928', '150900', '察哈尔右翼后旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150929', '150900', '四子王旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('150981', '150900', '丰镇市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('152200', '150000', '兴安盟', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('152201', '152200', '乌兰浩特市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('152202', '152200', '阿尔山市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('152221', '152200', '科尔沁右翼前旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('152222', '152200', '科尔沁右翼中旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('152223', '152200', '扎赉特旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('152224', '152200', '突泉县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('152500', '150000', '锡林郭勒盟', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('152501', '152500', '二连浩特市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('152502', '152500', '锡林浩特市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('152522', '152500', '阿巴嘎旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('152523', '152500', '苏尼特左旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('152524', '152500', '苏尼特右旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('152525', '152500', '东乌珠穆沁旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('152526', '152500', '西乌珠穆沁旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('152527', '152500', '太仆寺旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('152528', '152500', '镶黄旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('152529', '152500', '正镶白旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('152530', '152500', '正蓝旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('152531', '152500', '多伦县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('152900', '150000', '阿拉善盟', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('152921', '152900', '阿拉善左旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('152922', '152900', '阿拉善右旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('152923', '152900', '额济纳旗', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210000', NULL, '辽宁省', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210100', '210000', '沈阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210101', '210100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210102', '210100', '和平区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210103', '210100', '沈河区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210104', '210100', '大东区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210105', '210100', '皇姑区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210106', '210100', '铁西区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210111', '210100', '苏家屯区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210112', '210100', '浑南区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210113', '210100', '沈北新区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210114', '210100', '于洪区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210115', '210100', '辽中区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210123', '210100', '康平县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210124', '210100', '法库县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210181', '210100', '新民市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210200', '210000', '大连市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210201', '210200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210202', '210200', '中山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210203', '210200', '西岗区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210204', '210200', '沙河口区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210211', '210200', '甘井子区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210212', '210200', '旅顺口区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210213', '210200', '金州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210214', '210200', '普兰店区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210224', '210200', '长海县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210281', '210200', '瓦房店市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210283', '210200', '庄河市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210300', '210000', '鞍山市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210301', '210300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210302', '210300', '铁东区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210303', '210300', '铁西区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210304', '210300', '立山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210311', '210300', '千山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210321', '210300', '台安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210323', '210300', '岫岩满族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210381', '210300', '海城市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210400', '210000', '抚顺市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210401', '210400', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210402', '210400', '新抚区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210403', '210400', '东洲区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210404', '210400', '望花区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210411', '210400', '顺城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210421', '210400', '抚顺县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210422', '210400', '新宾满族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210423', '210400', '清原满族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210500', '210000', '本溪市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210501', '210500', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210502', '210500', '平山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210503', '210500', '溪湖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210504', '210500', '明山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210505', '210500', '南芬区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210521', '210500', '本溪满族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210522', '210500', '桓仁满族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210600', '210000', '丹东市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210601', '210600', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210602', '210600', '元宝区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210603', '210600', '振兴区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210604', '210600', '振安区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210624', '210600', '宽甸满族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210681', '210600', '东港市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210682', '210600', '凤城市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210700', '210000', '锦州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210701', '210700', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210702', '210700', '古塔区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210703', '210700', '凌河区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210711', '210700', '太和区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210726', '210700', '黑山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210727', '210700', '义县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210781', '210700', '凌海市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210782', '210700', '北镇市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210800', '210000', '营口市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210801', '210800', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210802', '210800', '站前区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210803', '210800', '西市区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210804', '210800', '鲅鱼圈区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210811', '210800', '老边区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210881', '210800', '盖州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210882', '210800', '大石桥市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210900', '210000', '阜新市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210901', '210900', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210902', '210900', '海州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210903', '210900', '新邱区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210904', '210900', '太平区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210905', '210900', '清河门区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210911', '210900', '细河区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210921', '210900', '阜新蒙古族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('210922', '210900', '彰武县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211000', '210000', '辽阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211001', '211000', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211002', '211000', '白塔区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211003', '211000', '文圣区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211004', '211000', '宏伟区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211005', '211000', '弓长岭区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211011', '211000', '太子河区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211021', '211000', '辽阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211081', '211000', '灯塔市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211100', '210000', '盘锦市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211101', '211100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211102', '211100', '双台子区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211103', '211100', '兴隆台区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211104', '211100', '大洼区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211122', '211100', '盘山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211200', '210000', '铁岭市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211201', '211200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211202', '211200', '银州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211204', '211200', '清河区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211221', '211200', '铁岭县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211223', '211200', '西丰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211224', '211200', '昌图县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211281', '211200', '调兵山市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211282', '211200', '开原市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211300', '210000', '朝阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211301', '211300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211302', '211300', '双塔区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211303', '211300', '龙城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211321', '211300', '朝阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211322', '211300', '建平县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211324', '211300', '喀喇沁左翼蒙古族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211381', '211300', '北票市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211382', '211300', '凌源市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211400', '210000', '葫芦岛市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211401', '211400', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211402', '211400', '连山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211403', '211400', '龙港区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211404', '211400', '南票区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211421', '211400', '绥中县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211422', '211400', '建昌县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('211481', '211400', '兴城市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220000', NULL, '吉林省', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220100', '220000', '长春市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220101', '220100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220102', '220100', '南关区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220103', '220100', '宽城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220104', '220100', '朝阳区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220105', '220100', '二道区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220106', '220100', '绿园区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220112', '220100', '双阳区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220113', '220100', '九台区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220122', '220100', '农安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220182', '220100', '榆树市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220183', '220100', '德惠市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220200', '220000', '吉林市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220201', '220200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220202', '220200', '昌邑区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220203', '220200', '龙潭区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220204', '220200', '船营区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220211', '220200', '丰满区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220221', '220200', '永吉县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220281', '220200', '蛟河市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220282', '220200', '桦甸市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220283', '220200', '舒兰市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220284', '220200', '磐石市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220300', '220000', '四平市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220301', '220300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220302', '220300', '铁西区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220303', '220300', '铁东区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220322', '220300', '梨树县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220323', '220300', '伊通满族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220381', '220300', '公主岭市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220382', '220300', '双辽市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220400', '220000', '辽源市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220401', '220400', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220402', '220400', '龙山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220403', '220400', '西安区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220421', '220400', '东丰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220422', '220400', '东辽县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220500', '220000', '通化市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220501', '220500', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220502', '220500', '东昌区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220503', '220500', '二道江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220521', '220500', '通化县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220523', '220500', '辉南县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220524', '220500', '柳河县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220581', '220500', '梅河口市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220582', '220500', '集安市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220600', '220000', '白山市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220601', '220600', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220602', '220600', '浑江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220605', '220600', '江源区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220621', '220600', '抚松县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220622', '220600', '靖宇县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220623', '220600', '长白朝鲜族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220681', '220600', '临江市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220700', '220000', '松原市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220701', '220700', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220702', '220700', '宁江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220721', '220700', '前郭尔罗斯蒙古族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220722', '220700', '长岭县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220723', '220700', '乾安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220781', '220700', '扶余市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220800', '220000', '白城市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220801', '220800', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220802', '220800', '洮北区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220821', '220800', '镇赉县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220822', '220800', '通榆县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220881', '220800', '洮南市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('220882', '220800', '大安市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('22222', '22222', '22222', 1, NULL, NULL, '2021-04-16 15:52:52', '0000001');
INSERT INTO `tbl_base_area` VALUES ('222400', '220000', '延边朝鲜族自治州', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('222401', '222400', '延吉市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('222402', '222400', '图们市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('222403', '222400', '敦化市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('222404', '222400', '珲春市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('222405', '222400', '龙井市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('222406', '222400', '和龙市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('222424', '222400', '汪清县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('222426', '222400', '安图县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230000', NULL, '黑龙江省', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230100', '230000', '哈尔滨市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230101', '230100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230102', '230100', '道里区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230103', '230100', '南岗区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230104', '230100', '道外区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230108', '230100', '平房区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230109', '230100', '松北区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230110', '230100', '香坊区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230111', '230100', '呼兰区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230112', '230100', '阿城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230113', '230100', '双城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230123', '230100', '依兰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230124', '230100', '方正县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230125', '230100', '宾县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230126', '230100', '巴彦县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230127', '230100', '木兰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230128', '230100', '通河县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230129', '230100', '延寿县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230183', '230100', '尚志市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230184', '230100', '五常市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230200', '230000', '齐齐哈尔市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230201', '230200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230202', '230200', '龙沙区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230203', '230200', '建华区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230204', '230200', '铁锋区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230205', '230200', '昂昂溪区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230206', '230200', '富拉尔基区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230207', '230200', '碾子山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230208', '230200', '梅里斯达斡尔族区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230221', '230200', '龙江县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230223', '230200', '依安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230224', '230200', '泰来县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230225', '230200', '甘南县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230227', '230200', '富裕县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230229', '230200', '克山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230230', '230200', '克东县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230231', '230200', '拜泉县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230281', '230200', '讷河市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230300', '230000', '鸡西市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230301', '230300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230302', '230300', '鸡冠区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230303', '230300', '恒山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230304', '230300', '滴道区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230305', '230300', '梨树区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230306', '230300', '城子河区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230307', '230300', '麻山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230321', '230300', '鸡东县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230381', '230300', '虎林市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230382', '230300', '密山市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230400', '230000', '鹤岗市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230401', '230400', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230402', '230400', '向阳区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230403', '230400', '工农区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230404', '230400', '南山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230405', '230400', '兴安区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230406', '230400', '东山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230407', '230400', '兴山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230421', '230400', '萝北县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230422', '230400', '绥滨县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230500', '230000', '双鸭山市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230501', '230500', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230502', '230500', '尖山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230503', '230500', '岭东区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230505', '230500', '四方台区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230506', '230500', '宝山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230521', '230500', '集贤县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230522', '230500', '友谊县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230523', '230500', '宝清县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230524', '230500', '饶河县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230600', '230000', '大庆市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230601', '230600', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230602', '230600', '萨尔图区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230603', '230600', '龙凤区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230604', '230600', '让胡路区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230605', '230600', '红岗区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230606', '230600', '大同区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230621', '230600', '肇州县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230622', '230600', '肇源县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230623', '230600', '林甸县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230624', '230600', '杜尔伯特蒙古族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230700', '230000', '伊春市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230701', '230700', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230702', '230700', '伊春区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230703', '230700', '南岔区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230704', '230700', '友好区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230705', '230700', '西林区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230706', '230700', '翠峦区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230707', '230700', '新青区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230708', '230700', '美溪区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230709', '230700', '金山屯区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230710', '230700', '五营区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230711', '230700', '乌马河区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230712', '230700', '汤旺河区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230713', '230700', '带岭区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230714', '230700', '乌伊岭区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230715', '230700', '红星区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230716', '230700', '上甘岭区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230722', '230700', '嘉荫县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230781', '230700', '铁力市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230800', '230000', '佳木斯市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230801', '230800', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230803', '230800', '向阳区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230804', '230800', '前进区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230805', '230800', '东风区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230811', '230800', '郊区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230822', '230800', '桦南县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230826', '230800', '桦川县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230828', '230800', '汤原县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230881', '230800', '同江市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230882', '230800', '富锦市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230883', '230800', '抚远市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230900', '230000', '七台河市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230901', '230900', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230902', '230900', '新兴区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230903', '230900', '桃山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230904', '230900', '茄子河区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('230921', '230900', '勃利县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231000', '230000', '牡丹江市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231001', '231000', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231002', '231000', '东安区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231003', '231000', '阳明区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231004', '231000', '爱民区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231005', '231000', '西安区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231025', '231000', '林口县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231081', '231000', '绥芬河市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231083', '231000', '海林市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231084', '231000', '宁安市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231085', '231000', '穆棱市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231086', '231000', '东宁市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231100', '230000', '黑河市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231101', '231100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231102', '231100', '爱辉区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231121', '231100', '嫩江县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231123', '231100', '逊克县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231124', '231100', '孙吴县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231181', '231100', '北安市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231182', '231100', '五大连池市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231200', '230000', '绥化市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231201', '231200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231202', '231200', '北林区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231221', '231200', '望奎县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231222', '231200', '兰西县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231223', '231200', '青冈县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231224', '231200', '庆安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231225', '231200', '明水县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231226', '231200', '绥棱县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231281', '231200', '安达市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231282', '231200', '肇东市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('231283', '231200', '海伦市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('232700', '230000', '大兴安岭地区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('232721', '232700', '呼玛县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('232722', '232700', '塔河县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('232723', '232700', '漠河县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('310000', NULL, '上海市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('310100', '310000', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('310101', '310100', '黄浦区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('310104', '310100', '徐汇区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('310105', '310100', '长宁区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('310106', '310100', '静安区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('310107', '310100', '普陀区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('310109', '310100', '虹口区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('310110', '310100', '杨浦区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('310112', '310100', '闵行区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('310113', '310100', '宝山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('310114', '310100', '嘉定区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('310115', '310100', '浦东新区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('310116', '310100', '金山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('310117', '310100', '松江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('310118', '310100', '青浦区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('310120', '310100', '奉贤区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('310151', '310100', '崇明区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320000', NULL, '江苏省', 1, NULL, NULL, '2023-02-02 09:45:53', '10101');
INSERT INTO `tbl_base_area` VALUES ('320100', '320000', '南京市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320101', '320100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320102', '320100', '玄武区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320104', '320100', '秦淮区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320105', '320100', '建邺区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320106', '320100', '鼓楼区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320111', '320100', '浦口区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320113', '320100', '栖霞区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320114', '320100', '雨花台区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320115', '320100', '江宁区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320116', '320100', '六合区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320117', '320100', '溧水区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320118', '320100', '高淳区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320200', '320000', '无锡市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320201', '320200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320205', '320200', '锡山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320206', '320200', '惠山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320211', '320200', '滨湖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320213', '320200', '梁溪区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320214', '320200', '新吴区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320281', '320200', '江阴市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320282', '320200', '宜兴市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320300', '320000', '徐州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320301', '320300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320302', '320300', '鼓楼区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320303', '320300', '云龙区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320305', '320300', '贾汪区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320311', '320300', '泉山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320312', '320300', '铜山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320321', '320300', '丰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320322', '320300', '沛县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320324', '320300', '睢宁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320381', '320300', '新沂市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320382', '320300', '邳州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320400', '320000', '常州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320401', '320400', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320402', '320400', '天宁区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320404', '320400', '钟楼区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320411', '320400', '新北区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320412', '320400', '武进区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320413', '320400', '金坛区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320481', '320400', '溧阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320500', '320000', '苏州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320501', '320500', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320505', '320500', '虎丘区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320506', '320500', '吴中区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320507', '320500', '相城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320508', '320500', '姑苏区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320509', '320500', '吴江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320581', '320500', '常熟市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320582', '320500', '张家港市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320583', '320500', '昆山市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320585', '320500', '太仓市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320600', '320000', '南通市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320601', '320600', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320602', '320600', '崇川区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320611', '320600', '港闸区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320612', '320600', '通州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320621', '320600', '海安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320623', '320600', '如东县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320681', '320600', '启东市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320682', '320600', '如皋市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320684', '320600', '海门市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320700', '320000', '连云港市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320701', '320700', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320703', '320700', '连云区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320706', '320700', '海州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320707', '320700', '赣榆区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320722', '320700', '东海县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320723', '320700', '灌云县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320724', '320700', '灌南县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320800', '320000', '淮安市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320801', '320800', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320803', '320800', '淮安区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320804', '320800', '淮阴区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320812', '320800', '清江浦区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320813', '320800', '洪泽区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320826', '320800', '涟水县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320830', '320800', '盱眙县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320831', '320800', '金湖县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320900', '320000', '盐城市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320901', '320900', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320902', '320900', '亭湖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320903', '320900', '盐都区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320904', '320900', '大丰区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320921', '320900', '响水县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320922', '320900', '滨海县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320923', '320900', '阜宁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320924', '320900', '射阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320925', '320900', '建湖县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('320981', '320900', '东台市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321000', '320000', '扬州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321001', '321000', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321002', '321000', '广陵区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321003', '321000', '邗江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321012', '321000', '江都区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321023', '321000', '宝应县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321081', '321000', '仪征市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321084', '321000', '高邮市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321100', '320000', '镇江市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321101', '321100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321102', '321100', '京口区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321111', '321100', '润州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321112', '321100', '丹徒区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321181', '321100', '丹阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321182', '321100', '扬中市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321183', '321100', '句容市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321200', '320000', '泰州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321201', '321200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321202', '321200', '海陵区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321203', '321200', '高港区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321204', '321200', '姜堰区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321281', '321200', '兴化市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321282', '321200', '靖江市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321283', '321200', '泰兴市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321300', '320000', '宿迁市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321301', '321300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321302', '321300', '宿城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321311', '321300', '宿豫区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321322', '321300', '沭阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321323', '321300', '泗阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('321324', '321300', '泗洪县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330000', NULL, '浙江省', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330100', '330000', '杭州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330101', '330100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330102', '330100', '上城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330103', '330100', '下城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330104', '330100', '江干区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330105', '330100', '拱墅区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330106', '330100', '西湖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330108', '330100', '滨江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330109', '330100', '萧山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330110', '330100', '余杭区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330111', '330100', '富阳区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330122', '330100', '桐庐县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330127', '330100', '淳安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330182', '330100', '建德市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330185', '330100', '临安市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330200', '330000', '宁波市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330201', '330200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330203', '330200', '海曙区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330204', '330200', '江东区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330205', '330200', '江北区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330206', '330200', '北仑区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330211', '330200', '镇海区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330212', '330200', '鄞州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330225', '330200', '象山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330226', '330200', '宁海县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330281', '330200', '余姚市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330282', '330200', '慈溪市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330283', '330200', '奉化市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330300', '330000', '温州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330301', '330300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330302', '330300', '鹿城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330303', '330300', '龙湾区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330304', '330300', '瓯海区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330305', '330300', '洞头区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330324', '330300', '永嘉县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330326', '330300', '平阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330327', '330300', '苍南县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330328', '330300', '文成县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330329', '330300', '泰顺县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330381', '330300', '瑞安市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330382', '330300', '乐清市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330400', '330000', '嘉兴市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330401', '330400', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330402', '330400', '南湖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330411', '330400', '秀洲区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330421', '330400', '嘉善县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330424', '330400', '海盐县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330481', '330400', '海宁市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330482', '330400', '平湖市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330483', '330400', '桐乡市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330500', '330000', '湖州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330501', '330500', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330502', '330500', '吴兴区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330503', '330500', '南浔区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330521', '330500', '德清县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330522', '330500', '长兴县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330523', '330500', '安吉县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330600', '330000', '绍兴市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330601', '330600', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330602', '330600', '越城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330603', '330600', '柯桥区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330604', '330600', '上虞区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330624', '330600', '新昌县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330681', '330600', '诸暨市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330683', '330600', '嵊州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330700', '330000', '金华市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330701', '330700', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330702', '330700', '婺城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330703', '330700', '金东区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330723', '330700', '武义县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330726', '330700', '浦江县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330727', '330700', '磐安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330781', '330700', '兰溪市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330782', '330700', '义乌市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330783', '330700', '东阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330784', '330700', '永康市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330800', '330000', '衢州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330801', '330800', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330802', '330800', '柯城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330803', '330800', '衢江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330822', '330800', '常山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330824', '330800', '开化县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330825', '330800', '龙游县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330881', '330800', '江山市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330900', '330000', '舟山市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330901', '330900', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330902', '330900', '定海区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330903', '330900', '普陀区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330921', '330900', '岱山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('330922', '330900', '嵊泗县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('331000', '330000', '台州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('331001', '331000', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('331002', '331000', '椒江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('331003', '331000', '黄岩区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('331004', '331000', '路桥区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('331021', '331000', '玉环县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('331022', '331000', '三门县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('331023', '331000', '天台县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('331024', '331000', '仙居县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('331081', '331000', '温岭市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('331082', '331000', '临海市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('331100', '330000', '丽水市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('331101', '331100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('331102', '331100', '莲都区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('331121', '331100', '青田县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('331122', '331100', '缙云县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('331123', '331100', '遂昌县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('331124', '331100', '松阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('331125', '331100', '云和县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('331126', '331100', '庆元县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('331127', '331100', '景宁畲族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('331181', '331100', '龙泉市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340000', NULL, '安徽省', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340100', '340000', '合肥市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340101', '340100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340102', '340100', '瑶海区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340103', '340100', '庐阳区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340104', '340100', '蜀山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340111', '340100', '包河区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340121', '340100', '长丰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340122', '340100', '肥东县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340123', '340100', '肥西县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340124', '340100', '庐江县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340181', '340100', '巢湖市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340200', '340000', '芜湖市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340201', '340200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340202', '340200', '镜湖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340203', '340200', '弋江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340207', '340200', '鸠江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340208', '340200', '三山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340221', '340200', '芜湖县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340222', '340200', '繁昌县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340223', '340200', '南陵县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340225', '340200', '无为县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340300', '340000', '蚌埠市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340301', '340300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340302', '340300', '龙子湖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340303', '340300', '蚌山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340304', '340300', '禹会区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340311', '340300', '淮上区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340321', '340300', '怀远县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340322', '340300', '五河县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340323', '340300', '固镇县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340400', '340000', '淮南市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340401', '340400', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340402', '340400', '大通区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340403', '340400', '田家庵区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340404', '340400', '谢家集区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340405', '340400', '八公山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340406', '340400', '潘集区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340421', '340400', '凤台县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340422', '340400', '寿县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340500', '340000', '马鞍山市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340501', '340500', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340503', '340500', '花山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340504', '340500', '雨山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340506', '340500', '博望区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340521', '340500', '当涂县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340522', '340500', '含山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340523', '340500', '和县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340600', '340000', '淮北市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340601', '340600', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340602', '340600', '杜集区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340603', '340600', '相山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340604', '340600', '烈山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340621', '340600', '濉溪县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340700', '340000', '铜陵市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340701', '340700', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340705', '340700', '铜官区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340706', '340700', '义安区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340711', '340700', '郊区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340722', '340700', '枞阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340800', '340000', '安庆市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340801', '340800', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340802', '340800', '迎江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340803', '340800', '大观区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340811', '340800', '宜秀区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340822', '340800', '怀宁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340824', '340800', '潜山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340825', '340800', '太湖县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340826', '340800', '宿松县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340827', '340800', '望江县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340828', '340800', '岳西县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('340881', '340800', '桐城市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341000', '340000', '黄山市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341001', '341000', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341002', '341000', '屯溪区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341003', '341000', '黄山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341004', '341000', '徽州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341021', '341000', '歙县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341022', '341000', '休宁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341023', '341000', '黟县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341024', '341000', '祁门县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341100', '340000', '滁州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341101', '341100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341102', '341100', '琅琊区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341103', '341100', '南谯区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341122', '341100', '来安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341124', '341100', '全椒县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341125', '341100', '定远县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341126', '341100', '凤阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341181', '341100', '天长市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341182', '341100', '明光市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341200', '340000', '阜阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341201', '341200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341202', '341200', '颍州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341203', '341200', '颍东区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341204', '341200', '颍泉区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341221', '341200', '临泉县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341222', '341200', '太和县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341225', '341200', '阜南县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341226', '341200', '颍上县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341282', '341200', '界首市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341300', '340000', '宿州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341301', '341300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341302', '341300', '埇桥区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341321', '341300', '砀山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341322', '341300', '萧县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341323', '341300', '灵璧县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341324', '341300', '泗县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341500', '340000', '六安市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341501', '341500', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341502', '341500', '金安区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341503', '341500', '裕安区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341504', '341500', '叶集区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341522', '341500', '霍邱县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341523', '341500', '舒城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341524', '341500', '金寨县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341525', '341500', '霍山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341600', '340000', '亳州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341601', '341600', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341602', '341600', '谯城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341621', '341600', '涡阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341622', '341600', '蒙城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341623', '341600', '利辛县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341700', '340000', '池州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341701', '341700', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341702', '341700', '贵池区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341721', '341700', '东至县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341722', '341700', '石台县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341723', '341700', '青阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341800', '340000', '宣城市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341801', '341800', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341802', '341800', '宣州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341821', '341800', '郎溪县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341822', '341800', '广德县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341823', '341800', '泾县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341824', '341800', '绩溪县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341825', '341800', '旌德县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('341881', '341800', '宁国市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350000', NULL, '福建省', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350100', '350000', '福州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350101', '350100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350102', '350100', '鼓楼区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350103', '350100', '台江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350104', '350100', '仓山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350105', '350100', '马尾区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350111', '350100', '晋安区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350121', '350100', '闽侯县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350122', '350100', '连江县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350123', '350100', '罗源县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350124', '350100', '闽清县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350125', '350100', '永泰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350128', '350100', '平潭县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350181', '350100', '福清市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350182', '350100', '长乐市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350200', '350000', '厦门市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350201', '350200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350203', '350200', '思明区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350205', '350200', '海沧区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350206', '350200', '湖里区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350211', '350200', '集美区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350212', '350200', '同安区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350213', '350200', '翔安区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350300', '350000', '莆田市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350301', '350300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350302', '350300', '城厢区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350303', '350300', '涵江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350304', '350300', '荔城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350305', '350300', '秀屿区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350322', '350300', '仙游县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350400', '350000', '三明市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350401', '350400', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350402', '350400', '梅列区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350403', '350400', '三元区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350421', '350400', '明溪县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350423', '350400', '清流县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350424', '350400', '宁化县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350425', '350400', '大田县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350426', '350400', '尤溪县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350427', '350400', '沙县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350428', '350400', '将乐县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350429', '350400', '泰宁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350430', '350400', '建宁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350481', '350400', '永安市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350500', '350000', '泉州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350501', '350500', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350502', '350500', '鲤城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350503', '350500', '丰泽区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350504', '350500', '洛江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350505', '350500', '泉港区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350521', '350500', '惠安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350524', '350500', '安溪县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350525', '350500', '永春县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350526', '350500', '德化县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350527', '350500', '金门县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350581', '350500', '石狮市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350582', '350500', '晋江市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350583', '350500', '南安市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350600', '350000', '漳州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350601', '350600', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350602', '350600', '芗城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350603', '350600', '龙文区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350622', '350600', '云霄县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350623', '350600', '漳浦县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350624', '350600', '诏安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350625', '350600', '长泰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350626', '350600', '东山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350627', '350600', '南靖县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350628', '350600', '平和县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350629', '350600', '华安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350681', '350600', '龙海市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350700', '350000', '南平市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350701', '350700', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350702', '350700', '延平区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350703', '350700', '建阳区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350721', '350700', '顺昌县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350722', '350700', '浦城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350723', '350700', '光泽县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350724', '350700', '松溪县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350725', '350700', '政和县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350781', '350700', '邵武市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350782', '350700', '武夷山市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350783', '350700', '建瓯市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350800', '350000', '龙岩市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350801', '350800', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350802', '350800', '新罗区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350803', '350800', '永定区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350821', '350800', '长汀县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350823', '350800', '上杭县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350824', '350800', '武平县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350825', '350800', '连城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350881', '350800', '漳平市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350900', '350000', '宁德市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350901', '350900', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350902', '350900', '蕉城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350921', '350900', '霞浦县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350922', '350900', '古田县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350923', '350900', '屏南县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350924', '350900', '寿宁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350925', '350900', '周宁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350926', '350900', '柘荣县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350981', '350900', '福安市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('350982', '350900', '福鼎市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360000', NULL, '江西省', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360100', '360000', '南昌市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360101', '360100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360102', '360100', '东湖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360103', '360100', '西湖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360104', '360100', '青云谱区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360105', '360100', '湾里区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360111', '360100', '青山湖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360112', '360100', '新建区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360121', '360100', '南昌县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360123', '360100', '安义县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360124', '360100', '进贤县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360200', '360000', '景德镇市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360201', '360200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360202', '360200', '昌江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360203', '360200', '珠山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360222', '360200', '浮梁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360281', '360200', '乐平市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360300', '360000', '萍乡市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360301', '360300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360302', '360300', '安源区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360313', '360300', '湘东区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360321', '360300', '莲花县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360322', '360300', '上栗县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360323', '360300', '芦溪县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360400', '360000', '九江市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360401', '360400', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360402', '360400', '濂溪区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360403', '360400', '浔阳区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360421', '360400', '九江县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360423', '360400', '武宁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360424', '360400', '修水县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360425', '360400', '永修县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360426', '360400', '德安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360428', '360400', '都昌县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360429', '360400', '湖口县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360430', '360400', '彭泽县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360481', '360400', '瑞昌市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360482', '360400', '共青城市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360483', '360400', '庐山市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360500', '360000', '新余市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360501', '360500', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360502', '360500', '渝水区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360521', '360500', '分宜县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360600', '360000', '鹰潭市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360601', '360600', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360602', '360600', '月湖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360622', '360600', '余江县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360681', '360600', '贵溪市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360700', '360000', '赣州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360701', '360700', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360702', '360700', '章贡区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360703', '360700', '南康区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360721', '360700', '赣县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360722', '360700', '信丰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360723', '360700', '大余县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360724', '360700', '上犹县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360725', '360700', '崇义县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360726', '360700', '安远县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360727', '360700', '龙南县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360728', '360700', '定南县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360729', '360700', '全南县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360730', '360700', '宁都县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360731', '360700', '于都县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360732', '360700', '兴国县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360733', '360700', '会昌县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360734', '360700', '寻乌县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360735', '360700', '石城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360781', '360700', '瑞金市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360800', '360000', '吉安市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360801', '360800', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360802', '360800', '吉州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360803', '360800', '青原区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360821', '360800', '吉安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360822', '360800', '吉水县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360823', '360800', '峡江县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360824', '360800', '新干县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360825', '360800', '永丰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360826', '360800', '泰和县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360827', '360800', '遂川县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360828', '360800', '万安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360829', '360800', '安福县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360830', '360800', '永新县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360881', '360800', '井冈山市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360900', '360000', '宜春市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360901', '360900', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360902', '360900', '袁州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360921', '360900', '奉新县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360922', '360900', '万载县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360923', '360900', '上高县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360924', '360900', '宜丰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360925', '360900', '靖安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360926', '360900', '铜鼓县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360981', '360900', '丰城市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360982', '360900', '樟树市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('360983', '360900', '高安市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('361000', '360000', '抚州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('361001', '361000', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('361002', '361000', '临川区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('361021', '361000', '南城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('361022', '361000', '黎川县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('361023', '361000', '南丰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('361024', '361000', '崇仁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('361025', '361000', '乐安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('361026', '361000', '宜黄县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('361027', '361000', '金溪县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('361028', '361000', '资溪县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('361029', '361000', '东乡县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('361030', '361000', '广昌县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('361100', '360000', '上饶市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('361101', '361100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('361102', '361100', '信州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('361103', '361100', '广丰区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('361121', '361100', '上饶县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('361123', '361100', '玉山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('361124', '361100', '铅山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('361125', '361100', '横峰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('361126', '361100', '弋阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('361127', '361100', '余干县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('361128', '361100', '鄱阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('361129', '361100', '万年县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('361130', '361100', '婺源县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('361181', '361100', '德兴市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370000', NULL, '山东省', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370100', '370000', '济南市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370101', '370100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370102', '370100', '历下区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370103', '370100', '市中区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370104', '370100', '槐荫区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370105', '370100', '天桥区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370112', '370100', '历城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370113', '370100', '长清区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370124', '370100', '平阴县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370125', '370100', '济阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370126', '370100', '商河县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370181', '370100', '章丘市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370200', '370000', '青岛市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370201', '370200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370202', '370200', '市南区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370203', '370200', '市北区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370211', '370200', '黄岛区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370212', '370200', '崂山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370213', '370200', '李沧区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370214', '370200', '城阳区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370281', '370200', '胶州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370282', '370200', '即墨市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370283', '370200', '平度市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370285', '370200', '莱西市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370300', '370000', '淄博市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370301', '370300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370302', '370300', '淄川区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370303', '370300', '张店区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370304', '370300', '博山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370305', '370300', '临淄区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370306', '370300', '周村区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370321', '370300', '桓台县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370322', '370300', '高青县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370323', '370300', '沂源县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370400', '370000', '枣庄市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370401', '370400', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370402', '370400', '市中区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370403', '370400', '薛城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370404', '370400', '峄城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370405', '370400', '台儿庄区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370406', '370400', '山亭区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370481', '370400', '滕州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370500', '370000', '东营市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370501', '370500', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370502', '370500', '东营区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370503', '370500', '河口区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370505', '370500', '垦利区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370522', '370500', '利津县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370523', '370500', '广饶县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370600', '370000', '烟台市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370601', '370600', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370602', '370600', '芝罘区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370611', '370600', '福山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370612', '370600', '牟平区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370613', '370600', '莱山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370634', '370600', '长岛县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370681', '370600', '龙口市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370682', '370600', '莱阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370683', '370600', '莱州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370684', '370600', '蓬莱市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370685', '370600', '招远市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370686', '370600', '栖霞市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370687', '370600', '海阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370700', '370000', '潍坊市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370701', '370700', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370702', '370700', '潍城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370703', '370700', '寒亭区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370704', '370700', '坊子区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370705', '370700', '奎文区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370724', '370700', '临朐县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370725', '370700', '昌乐县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370781', '370700', '青州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370782', '370700', '诸城市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370783', '370700', '寿光市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370784', '370700', '安丘市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370785', '370700', '高密市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370786', '370700', '昌邑市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370800', '370000', '济宁市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370801', '370800', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370811', '370800', '任城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370812', '370800', '兖州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370826', '370800', '微山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370827', '370800', '鱼台县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370828', '370800', '金乡县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370829', '370800', '嘉祥县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370830', '370800', '汶上县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370831', '370800', '泗水县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370832', '370800', '梁山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370881', '370800', '曲阜市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370883', '370800', '邹城市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370900', '370000', '泰安市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370901', '370900', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370902', '370900', '泰山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370911', '370900', '岱岳区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370921', '370900', '宁阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370923', '370900', '东平县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370982', '370900', '新泰市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('370983', '370900', '肥城市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371000', '370000', '威海市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371001', '371000', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371002', '371000', '环翠区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371003', '371000', '文登区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371082', '371000', '荣成市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371083', '371000', '乳山市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371100', '370000', '日照市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371101', '371100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371102', '371100', '东港区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371103', '371100', '岚山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371121', '371100', '五莲县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371122', '371100', '莒县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371200', '370000', '莱芜市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371201', '371200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371202', '371200', '莱城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371203', '371200', '钢城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371300', '370000', '临沂市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371301', '371300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371302', '371300', '兰山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371311', '371300', '罗庄区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371312', '371300', '河东区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371321', '371300', '沂南县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371322', '371300', '郯城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371323', '371300', '沂水县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371324', '371300', '兰陵县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371325', '371300', '费县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371326', '371300', '平邑县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371327', '371300', '莒南县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371328', '371300', '蒙阴县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371329', '371300', '临沭县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371400', '370000', '德州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371401', '371400', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371402', '371400', '德城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371403', '371400', '陵城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371422', '371400', '宁津县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371423', '371400', '庆云县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371424', '371400', '临邑县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371425', '371400', '齐河县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371426', '371400', '平原县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371427', '371400', '夏津县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371428', '371400', '武城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371481', '371400', '乐陵市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371482', '371400', '禹城市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371500', '370000', '聊城市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371501', '371500', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371502', '371500', '东昌府区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371521', '371500', '阳谷县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371522', '371500', '莘县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371523', '371500', '茌平县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371524', '371500', '东阿县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371525', '371500', '冠县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371526', '371500', '高唐县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371581', '371500', '临清市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371600', '370000', '滨州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371601', '371600', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371602', '371600', '滨城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371603', '371600', '沾化区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371621', '371600', '惠民县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371622', '371600', '阳信县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371623', '371600', '无棣县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371625', '371600', '博兴县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371626', '371600', '邹平县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371700', '370000', '菏泽市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371701', '371700', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371702', '371700', '牡丹区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371703', '371700', '定陶区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371721', '371700', '曹县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371722', '371700', '单县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371723', '371700', '成武县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371724', '371700', '巨野县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371725', '371700', '郓城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371726', '371700', '鄄城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('371728', '371700', '东明县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410000', NULL, '河南省', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410100', '410000', '郑州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410101', '410100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410102', '410100', '中原区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410103', '410100', '二七区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410104', '410100', '管城回族区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410105', '410100', '金水区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410106', '410100', '上街区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410108', '410100', '惠济区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410122', '410100', '中牟县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410181', '410100', '巩义市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410182', '410100', '荥阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410183', '410100', '新密市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410184', '410100', '新郑市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410185', '410100', '登封市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410200', '410000', '开封市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410201', '410200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410202', '410200', '龙亭区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410203', '410200', '顺河回族区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410204', '410200', '鼓楼区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410205', '410200', '禹王台区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410211', '410200', '金明区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410212', '410200', '祥符区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410221', '410200', '杞县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410222', '410200', '通许县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410223', '410200', '尉氏县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410225', '410200', '兰考县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410300', '410000', '洛阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410301', '410300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410302', '410300', '老城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410303', '410300', '西工区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410304', '410300', '瀍河回族区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410305', '410300', '涧西区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410306', '410300', '吉利区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410311', '410300', '洛龙区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410322', '410300', '孟津县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410323', '410300', '新安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410324', '410300', '栾川县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410325', '410300', '嵩县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410326', '410300', '汝阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410327', '410300', '宜阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410328', '410300', '洛宁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410329', '410300', '伊川县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410381', '410300', '偃师市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410400', '410000', '平顶山市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410401', '410400', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410402', '410400', '新华区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410403', '410400', '卫东区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410404', '410400', '石龙区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410411', '410400', '湛河区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410421', '410400', '宝丰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410422', '410400', '叶县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410423', '410400', '鲁山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410425', '410400', '郏县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410481', '410400', '舞钢市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410482', '410400', '汝州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410500', '410000', '安阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410501', '410500', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410502', '410500', '文峰区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410503', '410500', '北关区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410505', '410500', '殷都区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410506', '410500', '龙安区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410522', '410500', '安阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410523', '410500', '汤阴县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410526', '410500', '滑县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410527', '410500', '内黄县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410581', '410500', '林州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410600', '410000', '鹤壁市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410601', '410600', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410602', '410600', '鹤山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410603', '410600', '山城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410611', '410600', '淇滨区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410621', '410600', '浚县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410622', '410600', '淇县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410700', '410000', '新乡市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410701', '410700', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410702', '410700', '红旗区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410703', '410700', '卫滨区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410704', '410700', '凤泉区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410711', '410700', '牧野区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410721', '410700', '新乡县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410724', '410700', '获嘉县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410725', '410700', '原阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410726', '410700', '延津县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410727', '410700', '封丘县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410728', '410700', '长垣县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410781', '410700', '卫辉市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410782', '410700', '辉县市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410800', '410000', '焦作市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410801', '410800', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410802', '410800', '解放区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410803', '410800', '中站区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410804', '410800', '马村区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410811', '410800', '山阳区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410821', '410800', '修武县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410822', '410800', '博爱县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410823', '410800', '武陟县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410825', '410800', '温县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410882', '410800', '沁阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410883', '410800', '孟州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410900', '410000', '濮阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410901', '410900', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410902', '410900', '华龙区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410922', '410900', '清丰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410923', '410900', '南乐县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410926', '410900', '范县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410927', '410900', '台前县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('410928', '410900', '濮阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411000', '410000', '许昌市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411001', '411000', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411002', '411000', '魏都区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411023', '411000', '许昌县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411024', '411000', '鄢陵县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411025', '411000', '襄城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411081', '411000', '禹州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411082', '411000', '长葛市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411100', '410000', '漯河市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411101', '411100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411102', '411100', '源汇区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411103', '411100', '郾城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411104', '411100', '召陵区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411121', '411100', '舞阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411122', '411100', '临颍县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411200', '410000', '三门峡市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411201', '411200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411202', '411200', '湖滨区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411203', '411200', '陕州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411221', '411200', '渑池县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411224', '411200', '卢氏县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411281', '411200', '义马市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411282', '411200', '灵宝市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411300', '410000', '南阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411301', '411300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411302', '411300', '宛城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411303', '411300', '卧龙区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411321', '411300', '南召县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411322', '411300', '方城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411323', '411300', '西峡县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411324', '411300', '镇平县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411325', '411300', '内乡县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411326', '411300', '淅川县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411327', '411300', '社旗县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411328', '411300', '唐河县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411329', '411300', '新野县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411330', '411300', '桐柏县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411381', '411300', '邓州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411400', '410000', '商丘市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411401', '411400', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411402', '411400', '梁园区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411403', '411400', '睢阳区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411421', '411400', '民权县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411422', '411400', '睢县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411423', '411400', '宁陵县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411424', '411400', '柘城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411425', '411400', '虞城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411426', '411400', '夏邑县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411481', '411400', '永城市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411500', '410000', '信阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411501', '411500', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411502', '411500', '浉河区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411503', '411500', '平桥区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411521', '411500', '罗山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411522', '411500', '光山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411523', '411500', '新县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411524', '411500', '商城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411525', '411500', '固始县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411526', '411500', '潢川县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411527', '411500', '淮滨县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411528', '411500', '息县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411600', '410000', '周口市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411601', '411600', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411602', '411600', '川汇区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411621', '411600', '扶沟县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411622', '411600', '西华县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411623', '411600', '商水县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411624', '411600', '沈丘县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411625', '411600', '郸城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411626', '411600', '淮阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411627', '411600', '太康县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411628', '411600', '鹿邑县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411681', '411600', '项城市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411700', '410000', '驻马店市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411701', '411700', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411702', '411700', '驿城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411721', '411700', '西平县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411722', '411700', '上蔡县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411723', '411700', '平舆县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411724', '411700', '正阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411725', '411700', '确山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411726', '411700', '泌阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411727', '411700', '汝南县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411728', '411700', '遂平县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('411729', '411700', '新蔡县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('419000', '410000', '省直辖县级行政区划', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('419001', '419000', '济源市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420000', NULL, '湖北省', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420100', '420000', '武汉市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420101', '420100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420102', '420100', '江岸区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420103', '420100', '江汉区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420104', '420100', '硚口区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420105', '420100', '汉阳区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420106', '420100', '武昌区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420107', '420100', '青山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420111', '420100', '洪山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420112', '420100', '东西湖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420113', '420100', '汉南区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420114', '420100', '蔡甸区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420115', '420100', '江夏区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420116', '420100', '黄陂区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420117', '420100', '新洲区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420200', '420000', '黄石市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420201', '420200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420202', '420200', '黄石港区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420203', '420200', '西塞山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420204', '420200', '下陆区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420205', '420200', '铁山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420222', '420200', '阳新县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420281', '420200', '大冶市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420300', '420000', '十堰市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420301', '420300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420302', '420300', '茅箭区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420303', '420300', '张湾区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420304', '420300', '郧阳区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420322', '420300', '郧西县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420323', '420300', '竹山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420324', '420300', '竹溪县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420325', '420300', '房县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420381', '420300', '丹江口市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420500', '420000', '宜昌市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420501', '420500', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420502', '420500', '西陵区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420503', '420500', '伍家岗区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420504', '420500', '点军区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420505', '420500', '猇亭区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420506', '420500', '夷陵区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420525', '420500', '远安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420526', '420500', '兴山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420527', '420500', '秭归县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420528', '420500', '长阳土家族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420529', '420500', '五峰土家族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420581', '420500', '宜都市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420582', '420500', '当阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420583', '420500', '枝江市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420600', '420000', '襄阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420601', '420600', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420602', '420600', '襄城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420606', '420600', '樊城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420607', '420600', '襄州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420624', '420600', '南漳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420625', '420600', '谷城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420626', '420600', '保康县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420682', '420600', '老河口市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420683', '420600', '枣阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420684', '420600', '宜城市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420700', '420000', '鄂州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420701', '420700', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420702', '420700', '梁子湖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420703', '420700', '华容区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420704', '420700', '鄂城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420800', '420000', '荆门市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420801', '420800', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420802', '420800', '东宝区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420804', '420800', '掇刀区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420821', '420800', '京山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420822', '420800', '沙洋县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420881', '420800', '钟祥市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420900', '420000', '孝感市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420901', '420900', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420902', '420900', '孝南区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420921', '420900', '孝昌县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420922', '420900', '大悟县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420923', '420900', '云梦县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420981', '420900', '应城市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420982', '420900', '安陆市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('420984', '420900', '汉川市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421000', '420000', '荆州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421001', '421000', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421002', '421000', '沙市区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421003', '421000', '荆州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421022', '421000', '公安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421023', '421000', '监利县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421024', '421000', '江陵县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421081', '421000', '石首市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421083', '421000', '洪湖市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421087', '421000', '松滋市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421100', '420000', '黄冈市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421101', '421100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421102', '421100', '黄州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421121', '421100', '团风县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421122', '421100', '红安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421123', '421100', '罗田县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421124', '421100', '英山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421125', '421100', '浠水县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421126', '421100', '蕲春县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421127', '421100', '黄梅县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421181', '421100', '麻城市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421182', '421100', '武穴市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421200', '420000', '咸宁市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421201', '421200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421202', '421200', '咸安区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421221', '421200', '嘉鱼县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421222', '421200', '通城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421223', '421200', '崇阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421224', '421200', '通山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421281', '421200', '赤壁市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421300', '420000', '随州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421301', '421300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421303', '421300', '曾都区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421321', '421300', '随县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('421381', '421300', '广水市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('422800', '420000', '恩施土家族苗族自治州', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('422801', '422800', '恩施市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('422802', '422800', '利川市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('422822', '422800', '建始县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('422823', '422800', '巴东县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('422825', '422800', '宣恩县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('422826', '422800', '咸丰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('422827', '422800', '来凤县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('422828', '422800', '鹤峰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('429000', '420000', '省直辖县级行政区划', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('429004', '429000', '仙桃市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('429005', '429000', '潜江市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('429006', '429000', '天门市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('429021', '429000', '神农架林区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430000', NULL, '湖南省', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430100', '430000', '长沙市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430101', '430100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430102', '430100', '芙蓉区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430103', '430100', '天心区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430104', '430100', '岳麓区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430105', '430100', '开福区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430111', '430100', '雨花区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430112', '430100', '望城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430121', '430100', '长沙县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430124', '430100', '宁乡县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430181', '430100', '浏阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430200', '430000', '株洲市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430201', '430200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430202', '430200', '荷塘区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430203', '430200', '芦淞区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430204', '430200', '石峰区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430211', '430200', '天元区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430221', '430200', '株洲县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430223', '430200', '攸县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430224', '430200', '茶陵县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430225', '430200', '炎陵县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430281', '430200', '醴陵市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430300', '430000', '湘潭市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430301', '430300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430302', '430300', '雨湖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430304', '430300', '岳塘区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430321', '430300', '湘潭县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430381', '430300', '湘乡市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430382', '430300', '韶山市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430400', '430000', '衡阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430401', '430400', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430405', '430400', '珠晖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430406', '430400', '雁峰区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430407', '430400', '石鼓区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430408', '430400', '蒸湘区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430412', '430400', '南岳区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430421', '430400', '衡阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430422', '430400', '衡南县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430423', '430400', '衡山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430424', '430400', '衡东县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430426', '430400', '祁东县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430481', '430400', '耒阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430482', '430400', '常宁市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430500', '430000', '邵阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430501', '430500', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430502', '430500', '双清区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430503', '430500', '大祥区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430511', '430500', '北塔区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430521', '430500', '邵东县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430522', '430500', '新邵县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430523', '430500', '邵阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430524', '430500', '隆回县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430525', '430500', '洞口县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430527', '430500', '绥宁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430528', '430500', '新宁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430529', '430500', '城步苗族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430581', '430500', '武冈市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430600', '430000', '岳阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430601', '430600', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430602', '430600', '岳阳楼区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430603', '430600', '云溪区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430611', '430600', '君山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430621', '430600', '岳阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430623', '430600', '华容县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430624', '430600', '湘阴县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430626', '430600', '平江县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430681', '430600', '汨罗市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430682', '430600', '临湘市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430700', '430000', '常德市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430701', '430700', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430702', '430700', '武陵区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430703', '430700', '鼎城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430721', '430700', '安乡县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430722', '430700', '汉寿县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430723', '430700', '澧县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430724', '430700', '临澧县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430725', '430700', '桃源县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430726', '430700', '石门县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430781', '430700', '津市市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430800', '430000', '张家界市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430801', '430800', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430802', '430800', '永定区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430811', '430800', '武陵源区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430821', '430800', '慈利县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430822', '430800', '桑植县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430900', '430000', '益阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430901', '430900', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430902', '430900', '资阳区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430903', '430900', '赫山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430921', '430900', '南县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430922', '430900', '桃江县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430923', '430900', '安化县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('430981', '430900', '沅江市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431000', '430000', '郴州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431001', '431000', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431002', '431000', '北湖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431003', '431000', '苏仙区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431021', '431000', '桂阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431022', '431000', '宜章县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431023', '431000', '永兴县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431024', '431000', '嘉禾县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431025', '431000', '临武县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431026', '431000', '汝城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431027', '431000', '桂东县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431028', '431000', '安仁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431081', '431000', '资兴市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431100', '430000', '永州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431101', '431100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431102', '431100', '零陵区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431103', '431100', '冷水滩区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431121', '431100', '祁阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431122', '431100', '东安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431123', '431100', '双牌县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431124', '431100', '道县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431125', '431100', '江永县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431126', '431100', '宁远县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431127', '431100', '蓝山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431128', '431100', '新田县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431129', '431100', '江华瑶族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431200', '430000', '怀化市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431201', '431200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431202', '431200', '鹤城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431221', '431200', '中方县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431222', '431200', '沅陵县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431223', '431200', '辰溪县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431224', '431200', '溆浦县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431225', '431200', '会同县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431226', '431200', '麻阳苗族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431227', '431200', '新晃侗族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431228', '431200', '芷江侗族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431229', '431200', '靖州苗族侗族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431230', '431200', '通道侗族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431281', '431200', '洪江市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431300', '430000', '娄底市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431301', '431300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431302', '431300', '娄星区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431321', '431300', '双峰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431322', '431300', '新化县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431381', '431300', '冷水江市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('431382', '431300', '涟源市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('433100', '430000', '湘西土家族苗族自治州', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('433101', '433100', '吉首市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('433122', '433100', '泸溪县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('433123', '433100', '凤凰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('433124', '433100', '花垣县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('433125', '433100', '保靖县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('433126', '433100', '古丈县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('433127', '433100', '永顺县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('433130', '433100', '龙山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440000', NULL, '广东省', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440100', '440000', '广州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440101', '440100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440103', '440100', '荔湾区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440104', '440100', '越秀区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440105', '440100', '海珠区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440106', '440100', '天河区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440111', '440100', '白云区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440112', '440100', '黄埔区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440113', '440100', '番禺区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440114', '440100', '花都区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440115', '440100', '南沙区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440117', '440100', '从化区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440118', '440100', '增城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440200', '440000', '韶关市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440201', '440200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440203', '440200', '武江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440204', '440200', '浈江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440205', '440200', '曲江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440222', '440200', '始兴县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440224', '440200', '仁化县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440229', '440200', '翁源县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440232', '440200', '乳源瑶族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440233', '440200', '新丰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440281', '440200', '乐昌市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440282', '440200', '南雄市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440300', '440000', '深圳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440301', '440300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440303', '440300', '罗湖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440304', '440300', '福田区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440305', '440300', '南山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440306', '440300', '宝安区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440307', '440300', '龙岗区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440308', '440300', '盐田区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440400', '440000', '珠海市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440401', '440400', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440402', '440400', '香洲区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440403', '440400', '斗门区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440404', '440400', '金湾区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440500', '440000', '汕头市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440501', '440500', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440507', '440500', '龙湖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440511', '440500', '金平区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440512', '440500', '濠江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440513', '440500', '潮阳区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440514', '440500', '潮南区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440515', '440500', '澄海区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440523', '440500', '南澳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440600', '440000', '佛山市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440601', '440600', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440604', '440600', '禅城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440605', '440600', '南海区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440606', '440600', '顺德区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440607', '440600', '三水区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440608', '440600', '高明区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440700', '440000', '江门市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440701', '440700', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440703', '440700', '蓬江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440704', '440700', '江海区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440705', '440700', '新会区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440781', '440700', '台山市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440783', '440700', '开平市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440784', '440700', '鹤山市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440785', '440700', '恩平市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440800', '440000', '湛江市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440801', '440800', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440802', '440800', '赤坎区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440803', '440800', '霞山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440804', '440800', '坡头区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440811', '440800', '麻章区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440823', '440800', '遂溪县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440825', '440800', '徐闻县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440881', '440800', '廉江市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440882', '440800', '雷州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440883', '440800', '吴川市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440900', '440000', '茂名市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440901', '440900', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440902', '440900', '茂南区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440904', '440900', '电白区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440981', '440900', '高州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440982', '440900', '化州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('440983', '440900', '信宜市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441200', '440000', '肇庆市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441201', '441200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441202', '441200', '端州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441203', '441200', '鼎湖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441204', '441200', '高要区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441223', '441200', '广宁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441224', '441200', '怀集县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441225', '441200', '封开县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441226', '441200', '德庆县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441284', '441200', '四会市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441300', '440000', '惠州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441301', '441300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441302', '441300', '惠城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441303', '441300', '惠阳区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441322', '441300', '博罗县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441323', '441300', '惠东县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441324', '441300', '龙门县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441400', '440000', '梅州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441401', '441400', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441402', '441400', '梅江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441403', '441400', '梅县区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441422', '441400', '大埔县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441423', '441400', '丰顺县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441424', '441400', '五华县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441426', '441400', '平远县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441427', '441400', '蕉岭县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441481', '441400', '兴宁市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441500', '440000', '汕尾市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441501', '441500', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441502', '441500', '城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441521', '441500', '海丰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441523', '441500', '陆河县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441581', '441500', '陆丰市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441600', '440000', '河源市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441601', '441600', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441602', '441600', '源城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441621', '441600', '紫金县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441622', '441600', '龙川县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441623', '441600', '连平县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441624', '441600', '和平县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441625', '441600', '东源县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441700', '440000', '阳江市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441701', '441700', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441702', '441700', '江城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441704', '441700', '阳东区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441721', '441700', '阳西县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441781', '441700', '阳春市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441800', '440000', '清远市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441801', '441800', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441802', '441800', '清城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441803', '441800', '清新区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441821', '441800', '佛冈县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441823', '441800', '阳山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441825', '441800', '连山壮族瑶族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441826', '441800', '连南瑶族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441881', '441800', '英德市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441882', '441800', '连州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('441900', '440000', '东莞市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('442000', '440000', '中山市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('44444', 'ddddd', '44444', 1, NULL, NULL, '2021-04-16 15:53:08', '0000001');
INSERT INTO `tbl_base_area` VALUES ('445100', '440000', '潮州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('445101', '445100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('445102', '445100', '湘桥区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('445103', '445100', '潮安区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('445122', '445100', '饶平县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('445200', '440000', '揭阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('445201', '445200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('445202', '445200', '榕城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('445203', '445200', '揭东区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('445222', '445200', '揭西县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('445224', '445200', '惠来县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('445281', '445200', '普宁市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('445300', '440000', '云浮市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('445301', '445300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('445302', '445300', '云城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('445303', '445300', '云安区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('445321', '445300', '新兴县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('445322', '445300', '郁南县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('445381', '445300', '罗定市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450000', NULL, '广西壮族自治区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450100', '450000', '南宁市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450101', '450100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450102', '450100', '兴宁区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450103', '450100', '青秀区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450105', '450100', '江南区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450107', '450100', '西乡塘区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450108', '450100', '良庆区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450109', '450100', '邕宁区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450110', '450100', '武鸣区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450123', '450100', '隆安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450124', '450100', '马山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450125', '450100', '上林县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450126', '450100', '宾阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450127', '450100', '横县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450200', '450000', '柳州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450201', '450200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450202', '450200', '城中区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450203', '450200', '鱼峰区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450204', '450200', '柳南区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450205', '450200', '柳北区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450206', '450200', '柳江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450222', '450200', '柳城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450223', '450200', '鹿寨县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450224', '450200', '融安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450225', '450200', '融水苗族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450226', '450200', '三江侗族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450300', '450000', '桂林市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450301', '450300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450302', '450300', '秀峰区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450303', '450300', '叠彩区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450304', '450300', '象山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450305', '450300', '七星区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450311', '450300', '雁山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450312', '450300', '临桂区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450321', '450300', '阳朔县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450323', '450300', '灵川县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450324', '450300', '全州县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450325', '450300', '兴安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450326', '450300', '永福县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450327', '450300', '灌阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450328', '450300', '龙胜各族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450329', '450300', '资源县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450330', '450300', '平乐县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450331', '450300', '荔浦县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450332', '450300', '恭城瑶族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450400', '450000', '梧州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450401', '450400', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450403', '450400', '万秀区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450405', '450400', '长洲区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450406', '450400', '龙圩区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450421', '450400', '苍梧县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450422', '450400', '藤县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450423', '450400', '蒙山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450481', '450400', '岑溪市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450500', '450000', '北海市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450501', '450500', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450502', '450500', '海城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450503', '450500', '银海区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450512', '450500', '铁山港区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450521', '450500', '合浦县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450600', '450000', '防城港市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450601', '450600', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450602', '450600', '港口区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450603', '450600', '防城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450621', '450600', '上思县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450681', '450600', '东兴市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450700', '450000', '钦州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450701', '450700', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450702', '450700', '钦南区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450703', '450700', '钦北区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450721', '450700', '灵山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450722', '450700', '浦北县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450800', '450000', '贵港市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450801', '450800', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450802', '450800', '港北区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450803', '450800', '港南区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450804', '450800', '覃塘区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450821', '450800', '平南县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450881', '450800', '桂平市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450900', '450000', '玉林市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450901', '450900', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450902', '450900', '玉州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450903', '450900', '福绵区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450921', '450900', '容县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450922', '450900', '陆川县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450923', '450900', '博白县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450924', '450900', '兴业县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('450981', '450900', '北流市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451000', '450000', '百色市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451001', '451000', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451002', '451000', '右江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451021', '451000', '田阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451022', '451000', '田东县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451023', '451000', '平果县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451024', '451000', '德保县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451026', '451000', '那坡县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451027', '451000', '凌云县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451028', '451000', '乐业县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451029', '451000', '田林县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451030', '451000', '西林县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451031', '451000', '隆林各族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451081', '451000', '靖西市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451100', '450000', '贺州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451101', '451100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451102', '451100', '八步区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451103', '451100', '平桂区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451121', '451100', '昭平县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451122', '451100', '钟山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451123', '451100', '富川瑶族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451200', '450000', '河池市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451201', '451200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451202', '451200', '金城江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451221', '451200', '南丹县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451222', '451200', '天峨县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451223', '451200', '凤山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451224', '451200', '东兰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451225', '451200', '罗城仫佬族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451226', '451200', '环江毛南族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451227', '451200', '巴马瑶族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451228', '451200', '都安瑶族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451229', '451200', '大化瑶族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451281', '451200', '宜州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451300', '450000', '来宾市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451301', '451300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451302', '451300', '兴宾区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451321', '451300', '忻城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451322', '451300', '象州县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451323', '451300', '武宣县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451324', '451300', '金秀瑶族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451381', '451300', '合山市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451400', '450000', '崇左市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451401', '451400', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451402', '451400', '江州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451421', '451400', '扶绥县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451422', '451400', '宁明县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451423', '451400', '龙州县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451424', '451400', '大新县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451425', '451400', '天等县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('451481', '451400', '凭祥市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('460000', NULL, '海南省', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('460100', '460000', '海口市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('460101', '460100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('460105', '460100', '秀英区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('460106', '460100', '龙华区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('460107', '460100', '琼山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('460108', '460100', '美兰区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('460200', '460000', '三亚市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('460201', '460200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('460202', '460200', '海棠区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('460203', '460200', '吉阳区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('460204', '460200', '天涯区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('460205', '460200', '崖州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('460300', '460000', '三沙市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('460400', '460000', '儋州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('469000', '460000', '省直辖县级行政区划', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('469001', '469000', '五指山市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('469002', '469000', '琼海市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('469005', '469000', '文昌市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('469006', '469000', '万宁市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('469007', '469000', '东方市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('469021', '469000', '定安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('469022', '469000', '屯昌县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('469023', '469000', '澄迈县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('469024', '469000', '临高县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('469025', '469000', '白沙黎族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('469026', '469000', '昌江黎族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('469027', '469000', '乐东黎族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('469028', '469000', '陵水黎族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('469029', '469000', '保亭黎族苗族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('469030', '469000', '琼中黎族苗族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500000', NULL, '重庆市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500100', '500000', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500101', '500100', '万州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500102', '500100', '涪陵区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500103', '500100', '渝中区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500104', '500100', '大渡口区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500105', '500100', '江北区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500106', '500100', '沙坪坝区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500107', '500100', '九龙坡区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500108', '500100', '南岸区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500109', '500100', '北碚区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500110', '500100', '綦江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500111', '500100', '大足区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500112', '500100', '渝北区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500113', '500100', '巴南区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500114', '500100', '黔江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500115', '500100', '长寿区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500116', '500100', '江津区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500117', '500100', '合川区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500118', '500100', '永川区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500119', '500100', '南川区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500120', '500100', '璧山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500151', '500100', '铜梁区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500152', '500100', '潼南区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500153', '500100', '荣昌区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500154', '500100', '开州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500200', '500000', '县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500228', '500200', '梁平县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500229', '500200', '城口县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500230', '500200', '丰都县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500231', '500200', '垫江县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500232', '500200', '武隆县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500233', '500200', '忠县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500235', '500200', '云阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500236', '500200', '奉节县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500237', '500200', '巫山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500238', '500200', '巫溪县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500240', '500200', '石柱土家族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500241', '500200', '秀山土家族苗族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500242', '500200', '酉阳土家族苗族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('500243', '500200', '彭水苗族土家族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510000', NULL, '四川省', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510100', '510000', '成都市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510101', '510100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510104', '510100', '锦江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510105', '510100', '青羊区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510106', '510100', '金牛区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510107', '510100', '武侯区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510108', '510100', '成华区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510112', '510100', '龙泉驿区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510113', '510100', '青白江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510114', '510100', '新都区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510115', '510100', '温江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510116', '510100', '双流区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510121', '510100', '金堂县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510124', '510100', '郫县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510129', '510100', '大邑县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510131', '510100', '蒲江县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510132', '510100', '新津县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510181', '510100', '都江堰市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510182', '510100', '彭州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510183', '510100', '邛崃市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510184', '510100', '崇州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510185', '510100', '简阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510300', '510000', '自贡市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510301', '510300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510302', '510300', '自流井区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510303', '510300', '贡井区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510304', '510300', '大安区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510311', '510300', '沿滩区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510321', '510300', '荣县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510322', '510300', '富顺县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510400', '510000', '攀枝花市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510401', '510400', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510402', '510400', '东区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510403', '510400', '西区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510411', '510400', '仁和区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510421', '510400', '米易县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510422', '510400', '盐边县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510500', '510000', '泸州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510501', '510500', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510502', '510500', '江阳区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510503', '510500', '纳溪区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510504', '510500', '龙马潭区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510521', '510500', '泸县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510522', '510500', '合江县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510524', '510500', '叙永县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510525', '510500', '古蔺县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510600', '510000', '德阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510601', '510600', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510603', '510600', '旌阳区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510623', '510600', '中江县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510626', '510600', '罗江县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510681', '510600', '广汉市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510682', '510600', '什邡市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510683', '510600', '绵竹市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510700', '510000', '绵阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510701', '510700', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510703', '510700', '涪城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510704', '510700', '游仙区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510705', '510700', '安州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510722', '510700', '三台县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510723', '510700', '盐亭县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510725', '510700', '梓潼县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510726', '510700', '北川羌族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510727', '510700', '平武县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510781', '510700', '江油市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510800', '510000', '广元市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510801', '510800', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510802', '510800', '利州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510811', '510800', '昭化区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510812', '510800', '朝天区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510821', '510800', '旺苍县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510822', '510800', '青川县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510823', '510800', '剑阁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510824', '510800', '苍溪县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510900', '510000', '遂宁市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510901', '510900', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510903', '510900', '船山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510904', '510900', '安居区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510921', '510900', '蓬溪县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510922', '510900', '射洪县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('510923', '510900', '大英县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511000', '510000', '内江市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511001', '511000', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511002', '511000', '市中区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511011', '511000', '东兴区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511024', '511000', '威远县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511025', '511000', '资中县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511028', '511000', '隆昌县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511100', '510000', '乐山市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511101', '511100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511102', '511100', '市中区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511111', '511100', '沙湾区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511112', '511100', '五通桥区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511113', '511100', '金口河区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511123', '511100', '犍为县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511124', '511100', '井研县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511126', '511100', '夹江县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511129', '511100', '沐川县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511132', '511100', '峨边彝族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511133', '511100', '马边彝族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511181', '511100', '峨眉山市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511300', '510000', '南充市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511301', '511300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511302', '511300', '顺庆区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511303', '511300', '高坪区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511304', '511300', '嘉陵区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511321', '511300', '南部县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511322', '511300', '营山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511323', '511300', '蓬安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511324', '511300', '仪陇县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511325', '511300', '西充县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511381', '511300', '阆中市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511400', '510000', '眉山市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511401', '511400', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511402', '511400', '东坡区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511403', '511400', '彭山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511421', '511400', '仁寿县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511423', '511400', '洪雅县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511424', '511400', '丹棱县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511425', '511400', '青神县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511500', '510000', '宜宾市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511501', '511500', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511502', '511500', '翠屏区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511503', '511500', '南溪区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511521', '511500', '宜宾县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511523', '511500', '江安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511524', '511500', '长宁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511525', '511500', '高县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511526', '511500', '珙县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511527', '511500', '筠连县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511528', '511500', '兴文县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511529', '511500', '屏山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511600', '510000', '广安市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511601', '511600', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511602', '511600', '广安区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511603', '511600', '前锋区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511621', '511600', '岳池县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511622', '511600', '武胜县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511623', '511600', '邻水县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511681', '511600', '华蓥市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511700', '510000', '达州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511701', '511700', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511702', '511700', '通川区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511703', '511700', '达川区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511722', '511700', '宣汉县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511723', '511700', '开江县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511724', '511700', '大竹县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511725', '511700', '渠县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511781', '511700', '万源市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511800', '510000', '雅安市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511801', '511800', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511802', '511800', '雨城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511803', '511800', '名山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511822', '511800', '荥经县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511823', '511800', '汉源县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511824', '511800', '石棉县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511825', '511800', '天全县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511826', '511800', '芦山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511827', '511800', '宝兴县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511900', '510000', '巴中市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511901', '511900', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511902', '511900', '巴州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511903', '511900', '恩阳区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511921', '511900', '通江县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511922', '511900', '南江县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('511923', '511900', '平昌县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('512000', '510000', '资阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('512001', '512000', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('512002', '512000', '雁江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('512021', '512000', '安岳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('512022', '512000', '乐至县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513200', '510000', '阿坝藏族羌族自治州', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513201', '513200', '马尔康市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513221', '513200', '汶川县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513222', '513200', '理县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513223', '513200', '茂县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513224', '513200', '松潘县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513225', '513200', '九寨沟县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513226', '513200', '金川县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513227', '513200', '小金县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513228', '513200', '黑水县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513230', '513200', '壤塘县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513231', '513200', '阿坝县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513232', '513200', '若尔盖县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513233', '513200', '红原县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513300', '510000', '甘孜藏族自治州', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513301', '513300', '康定市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513322', '513300', '泸定县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513323', '513300', '丹巴县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513324', '513300', '九龙县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513325', '513300', '雅江县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513326', '513300', '道孚县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513327', '513300', '炉霍县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513328', '513300', '甘孜县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513329', '513300', '新龙县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513330', '513300', '德格县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513331', '513300', '白玉县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513332', '513300', '石渠县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513333', '513300', '色达县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513334', '513300', '理塘县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513335', '513300', '巴塘县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513336', '513300', '乡城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513337', '513300', '稻城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513338', '513300', '得荣县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513400', '510000', '凉山彝族自治州', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513401', '513400', '西昌市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513422', '513400', '木里藏族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513423', '513400', '盐源县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513424', '513400', '德昌县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513425', '513400', '会理县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513426', '513400', '会东县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513427', '513400', '宁南县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513428', '513400', '普格县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513429', '513400', '布拖县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513430', '513400', '金阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513431', '513400', '昭觉县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513432', '513400', '喜德县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513433', '513400', '冕宁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513434', '513400', '越西县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513435', '513400', '甘洛县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513436', '513400', '美姑县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('513437', '513400', '雷波县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520000', NULL, '贵州省', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520100', '520000', '贵阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520101', '520100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520102', '520100', '南明区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520103', '520100', '云岩区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520111', '520100', '花溪区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520112', '520100', '乌当区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520113', '520100', '白云区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520115', '520100', '观山湖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520121', '520100', '开阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520122', '520100', '息烽县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520123', '520100', '修文县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520181', '520100', '清镇市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520200', '520000', '六盘水市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520201', '520200', '钟山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520203', '520200', '六枝特区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520221', '520200', '水城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520222', '520200', '盘县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520300', '520000', '遵义市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520301', '520300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520302', '520300', '红花岗区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520303', '520300', '汇川区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520304', '520300', '播州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520322', '520300', '桐梓县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520323', '520300', '绥阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520324', '520300', '正安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520325', '520300', '道真仡佬族苗族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520326', '520300', '务川仡佬族苗族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520327', '520300', '凤冈县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520328', '520300', '湄潭县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520329', '520300', '余庆县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520330', '520300', '习水县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520381', '520300', '赤水市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520382', '520300', '仁怀市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520400', '520000', '安顺市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520401', '520400', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520402', '520400', '西秀区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520403', '520400', '平坝区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520422', '520400', '普定县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520423', '520400', '镇宁布依族苗族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520424', '520400', '关岭布依族苗族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520425', '520400', '紫云苗族布依族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520500', '520000', '毕节市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520501', '520500', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520502', '520500', '七星关区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520521', '520500', '大方县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520522', '520500', '黔西县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520523', '520500', '金沙县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520524', '520500', '织金县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520525', '520500', '纳雍县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520526', '520500', '威宁彝族回族苗族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520527', '520500', '赫章县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520600', '520000', '铜仁市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520601', '520600', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520602', '520600', '碧江区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520603', '520600', '万山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520621', '520600', '江口县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520622', '520600', '玉屏侗族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520623', '520600', '石阡县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520624', '520600', '思南县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520625', '520600', '印江土家族苗族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520626', '520600', '德江县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520627', '520600', '沿河土家族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('520628', '520600', '松桃苗族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522300', '520000', '黔西南布依族苗族自治州', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522301', '522300', '兴义市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522322', '522300', '兴仁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522323', '522300', '普安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522324', '522300', '晴隆县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522325', '522300', '贞丰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522326', '522300', '望谟县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522327', '522300', '册亨县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522328', '522300', '安龙县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522600', '520000', '黔东南苗族侗族自治州', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522601', '522600', '凯里市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522622', '522600', '黄平县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522623', '522600', '施秉县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522624', '522600', '三穗县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522625', '522600', '镇远县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522626', '522600', '岑巩县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522627', '522600', '天柱县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522628', '522600', '锦屏县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522629', '522600', '剑河县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522630', '522600', '台江县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522631', '522600', '黎平县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522632', '522600', '榕江县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522633', '522600', '从江县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522634', '522600', '雷山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522635', '522600', '麻江县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522636', '522600', '丹寨县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522700', '520000', '黔南布依族苗族自治州', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522701', '522700', '都匀市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522702', '522700', '福泉市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522722', '522700', '荔波县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522723', '522700', '贵定县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522725', '522700', '瓮安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522726', '522700', '独山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522727', '522700', '平塘县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522728', '522700', '罗甸县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522729', '522700', '长顺县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522730', '522700', '龙里县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522731', '522700', '惠水县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('522732', '522700', '三都水族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530000', NULL, '云南省', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530100', '530000', '昆明市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530101', '530100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530102', '530100', '五华区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530103', '530100', '盘龙区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530111', '530100', '官渡区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530112', '530100', '西山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530113', '530100', '东川区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530114', '530100', '呈贡区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530122', '530100', '晋宁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530124', '530100', '富民县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530125', '530100', '宜良县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530126', '530100', '石林彝族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530127', '530100', '嵩明县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530128', '530100', '禄劝彝族苗族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530129', '530100', '寻甸回族彝族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530181', '530100', '安宁市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530300', '530000', '曲靖市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530301', '530300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530302', '530300', '麒麟区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530303', '530300', '沾益区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530321', '530300', '马龙县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530322', '530300', '陆良县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530323', '530300', '师宗县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530324', '530300', '罗平县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530325', '530300', '富源县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530326', '530300', '会泽县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530381', '530300', '宣威市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530400', '530000', '玉溪市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530401', '530400', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530402', '530400', '红塔区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530403', '530400', '江川区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530422', '530400', '澄江县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530423', '530400', '通海县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530424', '530400', '华宁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530425', '530400', '易门县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530426', '530400', '峨山彝族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530427', '530400', '新平彝族傣族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530428', '530400', '元江哈尼族彝族傣族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530500', '530000', '保山市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530501', '530500', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530502', '530500', '隆阳区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530521', '530500', '施甸县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530523', '530500', '龙陵县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530524', '530500', '昌宁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530581', '530500', '腾冲市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530600', '530000', '昭通市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530601', '530600', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530602', '530600', '昭阳区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530621', '530600', '鲁甸县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530622', '530600', '巧家县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530623', '530600', '盐津县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530624', '530600', '大关县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530625', '530600', '永善县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530626', '530600', '绥江县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530627', '530600', '镇雄县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530628', '530600', '彝良县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530629', '530600', '威信县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530630', '530600', '水富县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530700', '530000', '丽江市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530701', '530700', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530702', '530700', '古城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530721', '530700', '玉龙纳西族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530722', '530700', '永胜县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530723', '530700', '华坪县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530724', '530700', '宁蒗彝族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530800', '530000', '普洱市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530801', '530800', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530802', '530800', '思茅区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530821', '530800', '宁洱哈尼族彝族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530822', '530800', '墨江哈尼族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530823', '530800', '景东彝族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530824', '530800', '景谷傣族彝族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530825', '530800', '镇沅彝族哈尼族拉祜族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530826', '530800', '江城哈尼族彝族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530827', '530800', '孟连傣族拉祜族佤族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530828', '530800', '澜沧拉祜族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530829', '530800', '西盟佤族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530900', '530000', '临沧市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530901', '530900', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530902', '530900', '临翔区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530921', '530900', '凤庆县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530922', '530900', '云县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530923', '530900', '永德县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530924', '530900', '镇康县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530925', '530900', '双江拉祜族佤族布朗族傣族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530926', '530900', '耿马傣族佤族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('530927', '530900', '沧源佤族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532300', '530000', '楚雄彝族自治州', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532301', '532300', '楚雄市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532322', '532300', '双柏县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532323', '532300', '牟定县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532324', '532300', '南华县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532325', '532300', '姚安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532326', '532300', '大姚县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532327', '532300', '永仁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532328', '532300', '元谋县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532329', '532300', '武定县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532331', '532300', '禄丰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532500', '530000', '红河哈尼族彝族自治州', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532501', '532500', '个旧市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532502', '532500', '开远市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532503', '532500', '蒙自市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532504', '532500', '弥勒市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532523', '532500', '屏边苗族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532524', '532500', '建水县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532525', '532500', '石屏县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532527', '532500', '泸西县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532528', '532500', '元阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532529', '532500', '红河县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532530', '532500', '金平苗族瑶族傣族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532531', '532500', '绿春县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532532', '532500', '河口瑶族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532600', '530000', '文山壮族苗族自治州', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532601', '532600', '文山市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532622', '532600', '砚山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532623', '532600', '西畴县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532624', '532600', '麻栗坡县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532625', '532600', '马关县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532626', '532600', '丘北县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532627', '532600', '广南县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532628', '532600', '富宁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532800', '530000', '西双版纳傣族自治州', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532801', '532800', '景洪市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532822', '532800', '勐海县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532823', '532800', '勐腊县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532900', '530000', '大理白族自治州', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532901', '532900', '大理市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532922', '532900', '漾濞彝族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532923', '532900', '祥云县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532924', '532900', '宾川县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532925', '532900', '弥渡县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532926', '532900', '南涧彝族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532927', '532900', '巍山彝族回族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532928', '532900', '永平县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532929', '532900', '云龙县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532930', '532900', '洱源县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532931', '532900', '剑川县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('532932', '532900', '鹤庆县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('533100', '530000', '德宏傣族景颇族自治州', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('533102', '533100', '瑞丽市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('533103', '533100', '芒市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('533122', '533100', '梁河县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('533123', '533100', '盈江县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('533124', '533100', '陇川县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('533300', '530000', '怒江傈僳族自治州', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('533301', '533300', '泸水市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('533323', '533300', '福贡县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('533324', '533300', '贡山独龙族怒族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('533325', '533300', '兰坪白族普米族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('533400', '530000', '迪庆藏族自治州', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('533401', '533400', '香格里拉市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('533422', '533400', '德钦县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('533423', '533400', '维西傈僳族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540000', NULL, '西藏自治区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540100', '540000', '拉萨市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540101', '540100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540102', '540100', '城关区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540103', '540100', '堆龙德庆区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540121', '540100', '林周县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540122', '540100', '当雄县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540123', '540100', '尼木县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540124', '540100', '曲水县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540126', '540100', '达孜县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540127', '540100', '墨竹工卡县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540200', '540000', '日喀则市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540202', '540200', '桑珠孜区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540221', '540200', '南木林县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540222', '540200', '江孜县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540223', '540200', '定日县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540224', '540200', '萨迦县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540225', '540200', '拉孜县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540226', '540200', '昂仁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540227', '540200', '谢通门县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540228', '540200', '白朗县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540229', '540200', '仁布县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540230', '540200', '康马县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540231', '540200', '定结县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540232', '540200', '仲巴县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540233', '540200', '亚东县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540234', '540200', '吉隆县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540235', '540200', '聂拉木县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540236', '540200', '萨嘎县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540237', '540200', '岗巴县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540300', '540000', '昌都市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540302', '540300', '卡若区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540321', '540300', '江达县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540322', '540300', '贡觉县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540323', '540300', '类乌齐县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540324', '540300', '丁青县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540325', '540300', '察雅县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540326', '540300', '八宿县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540327', '540300', '左贡县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540328', '540300', '芒康县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540329', '540300', '洛隆县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540330', '540300', '边坝县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540400', '540000', '林芝市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540402', '540400', '巴宜区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540421', '540400', '工布江达县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540422', '540400', '米林县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540423', '540400', '墨脱县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540424', '540400', '波密县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540425', '540400', '察隅县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540426', '540400', '朗县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540500', '540000', '山南市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540501', '540500', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540502', '540500', '乃东区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540521', '540500', '扎囊县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540522', '540500', '贡嘎县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540523', '540500', '桑日县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540524', '540500', '琼结县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540525', '540500', '曲松县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540526', '540500', '措美县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540527', '540500', '洛扎县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540528', '540500', '加查县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540529', '540500', '隆子县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540530', '540500', '错那县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('540531', '540500', '浪卡子县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('542400', '540000', '那曲地区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('542421', '542400', '那曲县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('542422', '542400', '嘉黎县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('542423', '542400', '比如县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('542424', '542400', '聂荣县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('542425', '542400', '安多县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('542426', '542400', '申扎县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('542427', '542400', '索县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('542428', '542400', '班戈县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('542429', '542400', '巴青县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('542430', '542400', '尼玛县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('542431', '542400', '双湖县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('542500', '540000', '阿里地区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('542521', '542500', '普兰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('542522', '542500', '札达县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('542523', '542500', '噶尔县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('542524', '542500', '日土县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('542525', '542500', '革吉县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('542526', '542500', '改则县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('542527', '542500', '措勤县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610000', NULL, '陕西省', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610100', '610000', '西安市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610101', '610100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610102', '610100', '新城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610103', '610100', '碑林区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610104', '610100', '莲湖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610111', '610100', '灞桥区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610112', '610100', '未央区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610113', '610100', '雁塔区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610114', '610100', '阎良区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610115', '610100', '临潼区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610116', '610100', '长安区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610117', '610100', '高陵区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610122', '610100', '蓝田县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610124', '610100', '周至县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610125', '610100', '户县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610200', '610000', '铜川市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610201', '610200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610202', '610200', '王益区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610203', '610200', '印台区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610204', '610200', '耀州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610222', '610200', '宜君县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610300', '610000', '宝鸡市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610301', '610300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610302', '610300', '渭滨区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610303', '610300', '金台区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610304', '610300', '陈仓区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610322', '610300', '凤翔县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610323', '610300', '岐山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610324', '610300', '扶风县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610326', '610300', '眉县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610327', '610300', '陇县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610328', '610300', '千阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610329', '610300', '麟游县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610330', '610300', '凤县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610331', '610300', '太白县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610400', '610000', '咸阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610401', '610400', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610402', '610400', '秦都区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610403', '610400', '杨陵区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610404', '610400', '渭城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610422', '610400', '三原县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610423', '610400', '泾阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610424', '610400', '乾县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610425', '610400', '礼泉县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610426', '610400', '永寿县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610427', '610400', '彬县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610428', '610400', '长武县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610429', '610400', '旬邑县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610430', '610400', '淳化县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610431', '610400', '武功县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610481', '610400', '兴平市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610500', '610000', '渭南市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610501', '610500', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610502', '610500', '临渭区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610503', '610500', '华州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610522', '610500', '潼关县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610523', '610500', '大荔县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610524', '610500', '合阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610525', '610500', '澄城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610526', '610500', '蒲城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610527', '610500', '白水县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610528', '610500', '富平县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610581', '610500', '韩城市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610582', '610500', '华阴市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610600', '610000', '延安市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610601', '610600', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610602', '610600', '宝塔区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610603', '610600', '安塞区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610621', '610600', '延长县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610622', '610600', '延川县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610623', '610600', '子长县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610625', '610600', '志丹县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610626', '610600', '吴起县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610627', '610600', '甘泉县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610628', '610600', '富县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610629', '610600', '洛川县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610630', '610600', '宜川县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610631', '610600', '黄龙县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610632', '610600', '黄陵县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610700', '610000', '汉中市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610701', '610700', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610702', '610700', '汉台区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610721', '610700', '南郑县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610722', '610700', '城固县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610723', '610700', '洋县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610724', '610700', '西乡县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610725', '610700', '勉县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610726', '610700', '宁强县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610727', '610700', '略阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610728', '610700', '镇巴县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610729', '610700', '留坝县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610730', '610700', '佛坪县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610800', '610000', '榆林市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610801', '610800', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610802', '610800', '榆阳区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610803', '610800', '横山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610821', '610800', '神木县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610822', '610800', '府谷县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610824', '610800', '靖边县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610825', '610800', '定边县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610826', '610800', '绥德县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610827', '610800', '米脂县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610828', '610800', '佳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610829', '610800', '吴堡县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610830', '610800', '清涧县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610831', '610800', '子洲县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610900', '610000', '安康市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610901', '610900', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610902', '610900', '汉滨区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610921', '610900', '汉阴县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610922', '610900', '石泉县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610923', '610900', '宁陕县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610924', '610900', '紫阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610925', '610900', '岚皋县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610926', '610900', '平利县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610927', '610900', '镇坪县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610928', '610900', '旬阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('610929', '610900', '白河县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('611000', '610000', '商洛市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('611001', '611000', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('611002', '611000', '商州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('611021', '611000', '洛南县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('611022', '611000', '丹凤县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('611023', '611000', '商南县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('611024', '611000', '山阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('611025', '611000', '镇安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('611026', '611000', '柞水县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620000', NULL, '甘肃省', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620100', '620000', '兰州市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620101', '620100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620102', '620100', '城关区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620103', '620100', '七里河区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620104', '620100', '西固区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620105', '620100', '安宁区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620111', '620100', '红古区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620121', '620100', '永登县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620122', '620100', '皋兰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620123', '620100', '榆中县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620200', '620000', '嘉峪关市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620201', '620200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620300', '620000', '金昌市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620301', '620300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620302', '620300', '金川区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620321', '620300', '永昌县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620400', '620000', '白银市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620401', '620400', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620402', '620400', '白银区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620403', '620400', '平川区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620421', '620400', '靖远县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620422', '620400', '会宁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620423', '620400', '景泰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620500', '620000', '天水市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620501', '620500', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620502', '620500', '秦州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620503', '620500', '麦积区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620521', '620500', '清水县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620522', '620500', '秦安县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620523', '620500', '甘谷县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620524', '620500', '武山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620525', '620500', '张家川回族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620600', '620000', '武威市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620601', '620600', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620602', '620600', '凉州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620621', '620600', '民勤县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620622', '620600', '古浪县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620623', '620600', '天祝藏族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620700', '620000', '张掖市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620701', '620700', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620702', '620700', '甘州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620721', '620700', '肃南裕固族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620722', '620700', '民乐县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620723', '620700', '临泽县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620724', '620700', '高台县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620725', '620700', '山丹县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620800', '620000', '平凉市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620801', '620800', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620802', '620800', '崆峒区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620821', '620800', '泾川县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620822', '620800', '灵台县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620823', '620800', '崇信县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620824', '620800', '华亭县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620825', '620800', '庄浪县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620826', '620800', '静宁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620900', '620000', '酒泉市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620901', '620900', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620902', '620900', '肃州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620921', '620900', '金塔县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620922', '620900', '瓜州县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620923', '620900', '肃北蒙古族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620924', '620900', '阿克塞哈萨克族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620981', '620900', '玉门市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('620982', '620900', '敦煌市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('621000', '620000', '庆阳市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('621001', '621000', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('621002', '621000', '西峰区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('621021', '621000', '庆城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('621022', '621000', '环县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('621023', '621000', '华池县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('621024', '621000', '合水县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('621025', '621000', '正宁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('621026', '621000', '宁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('621027', '621000', '镇原县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('621100', '620000', '定西市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('621101', '621100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('621102', '621100', '安定区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('621121', '621100', '通渭县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('621122', '621100', '陇西县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('621123', '621100', '渭源县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('621124', '621100', '临洮县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('621125', '621100', '漳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('621126', '621100', '岷县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('621200', '620000', '陇南市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('621201', '621200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('621202', '621200', '武都区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('621221', '621200', '成县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('621222', '621200', '文县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('621223', '621200', '宕昌县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('621224', '621200', '康县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('621225', '621200', '西和县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('621226', '621200', '礼县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('621227', '621200', '徽县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('621228', '621200', '两当县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('622900', '620000', '临夏回族自治州', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('622901', '622900', '临夏市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('622921', '622900', '临夏县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('622922', '622900', '康乐县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('622923', '622900', '永靖县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('622924', '622900', '广河县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('622925', '622900', '和政县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('622926', '622900', '东乡族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('622927', '622900', '积石山保安族东乡族撒拉族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('623000', '620000', '甘南藏族自治州', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('623001', '623000', '合作市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('623021', '623000', '临潭县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('623022', '623000', '卓尼县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('623023', '623000', '舟曲县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('623024', '623000', '迭部县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('623025', '623000', '玛曲县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('623026', '623000', '碌曲县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('623027', '623000', '夏河县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('630000', NULL, '青海省', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('630100', '630000', '西宁市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('630101', '630100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('630102', '630100', '城东区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('630103', '630100', '城中区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('630104', '630100', '城西区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('630105', '630100', '城北区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('630121', '630100', '大通回族土族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('630122', '630100', '湟中县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('630123', '630100', '湟源县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('630200', '630000', '海东市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('630202', '630200', '乐都区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('630203', '630200', '平安区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('630222', '630200', '民和回族土族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('630223', '630200', '互助土族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('630224', '630200', '化隆回族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('630225', '630200', '循化撒拉族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632200', '630000', '海北藏族自治州', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632221', '632200', '门源回族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632222', '632200', '祁连县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632223', '632200', '海晏县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632224', '632200', '刚察县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632300', '630000', '黄南藏族自治州', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632321', '632300', '同仁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632322', '632300', '尖扎县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632323', '632300', '泽库县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632324', '632300', '河南蒙古族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632500', '630000', '海南藏族自治州', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632521', '632500', '共和县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632522', '632500', '同德县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632523', '632500', '贵德县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632524', '632500', '兴海县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632525', '632500', '贵南县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632600', '630000', '果洛藏族自治州', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632621', '632600', '玛沁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632622', '632600', '班玛县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632623', '632600', '甘德县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632624', '632600', '达日县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632625', '632600', '久治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632626', '632600', '玛多县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632700', '630000', '玉树藏族自治州', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632701', '632700', '玉树市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632722', '632700', '杂多县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632723', '632700', '称多县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632724', '632700', '治多县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632725', '632700', '囊谦县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632726', '632700', '曲麻莱县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632800', '630000', '海西蒙古族藏族自治州', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632801', '632800', '格尔木市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632802', '632800', '德令哈市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632821', '632800', '乌兰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632822', '632800', '都兰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('632823', '632800', '天峻县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640000', NULL, '宁夏回族自治区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640100', '640000', '银川市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640101', '640100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640104', '640100', '兴庆区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640105', '640100', '西夏区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640106', '640100', '金凤区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640121', '640100', '永宁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640122', '640100', '贺兰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640181', '640100', '灵武市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640200', '640000', '石嘴山市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640201', '640200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640202', '640200', '大武口区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640205', '640200', '惠农区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640221', '640200', '平罗县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640300', '640000', '吴忠市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640301', '640300', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640302', '640300', '利通区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640303', '640300', '红寺堡区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640323', '640300', '盐池县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640324', '640300', '同心县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640381', '640300', '青铜峡市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640400', '640000', '固原市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640401', '640400', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640402', '640400', '原州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640422', '640400', '西吉县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640423', '640400', '隆德县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640424', '640400', '泾源县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640425', '640400', '彭阳县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640500', '640000', '中卫市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640501', '640500', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640502', '640500', '沙坡头区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640521', '640500', '中宁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('640522', '640500', '海原县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('650000', NULL, '新疆维吾尔自治区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('650100', '650000', '乌鲁木齐市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('650101', '650100', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('650102', '650100', '天山区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('650103', '650100', '沙依巴克区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('650104', '650100', '新市区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('650105', '650100', '水磨沟区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('650106', '650100', '头屯河区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('650107', '650100', '达坂城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('650109', '650100', '米东区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('650121', '650100', '乌鲁木齐县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('650200', '650000', '克拉玛依市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('650201', '650200', '市辖区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('650202', '650200', '独山子区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('650203', '650200', '克拉玛依区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('650204', '650200', '白碱滩区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('650205', '650200', '乌尔禾区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('650400', '650000', '吐鲁番市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('650402', '650400', '高昌区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('650421', '650400', '鄯善县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('650422', '650400', '托克逊县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('650500', '650000', '哈密市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('650502', '650500', '伊州区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('650521', '650500', '巴里坤哈萨克自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('650522', '650500', '伊吾县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652300', '650000', '昌吉回族自治州', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652301', '652300', '昌吉市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652302', '652300', '阜康市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652323', '652300', '呼图壁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652324', '652300', '玛纳斯县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652325', '652300', '奇台县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652327', '652300', '吉木萨尔县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652328', '652300', '木垒哈萨克自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652700', '650000', '博尔塔拉蒙古自治州', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652701', '652700', '博乐市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652702', '652700', '阿拉山口市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652722', '652700', '精河县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652723', '652700', '温泉县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652800', '650000', '巴音郭楞蒙古自治州', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652801', '652800', '库尔勒市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652822', '652800', '轮台县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652823', '652800', '尉犁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652824', '652800', '若羌县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652825', '652800', '且末县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652826', '652800', '焉耆回族自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652827', '652800', '和静县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652828', '652800', '和硕县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652829', '652800', '博湖县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652900', '650000', '阿克苏地区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652901', '652900', '阿克苏市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652922', '652900', '温宿县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652923', '652900', '库车县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652924', '652900', '沙雅县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652925', '652900', '新和县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652926', '652900', '拜城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652927', '652900', '乌什县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652928', '652900', '阿瓦提县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('652929', '652900', '柯坪县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('653000', '650000', '克孜勒苏柯尔克孜自治州', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('653001', '653000', '阿图什市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('653022', '653000', '阿克陶县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('653023', '653000', '阿合奇县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('653024', '653000', '乌恰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('653100', '650000', '喀什地区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('653101', '653100', '喀什市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('653121', '653100', '疏附县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('653122', '653100', '疏勒县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('653123', '653100', '英吉沙县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('653124', '653100', '泽普县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('653125', '653100', '莎车县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('653126', '653100', '叶城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('653127', '653100', '麦盖提县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('653128', '653100', '岳普湖县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('653129', '653100', '伽师县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('653130', '653100', '巴楚县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('653131', '653100', '塔什库尔干塔吉克自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('653200', '650000', '和田地区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('653201', '653200', '和田市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('653221', '653200', '和田县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('653222', '653200', '墨玉县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('653223', '653200', '皮山县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('653224', '653200', '洛浦县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('653225', '653200', '策勒县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('653226', '653200', '于田县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('653227', '653200', '民丰县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('654000', '650000', '伊犁哈萨克自治州', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('654002', '654000', '伊宁市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('654003', '654000', '奎屯市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('654004', '654000', '霍尔果斯市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('654021', '654000', '伊宁县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('654022', '654000', '察布查尔锡伯自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('654023', '654000', '霍城县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('654024', '654000', '巩留县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('654025', '654000', '新源县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('654026', '654000', '昭苏县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('654027', '654000', '特克斯县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('654028', '654000', '尼勒克县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('654200', '650000', '塔城地区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('654201', '654200', '塔城市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('654202', '654200', '乌苏市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('654221', '654200', '额敏县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('654223', '654200', '沙湾县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('654224', '654200', '托里县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('654225', '654200', '裕民县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('654226', '654200', '和布克赛尔蒙古自治县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('654300', '650000', '阿勒泰地区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('654301', '654300', '阿勒泰市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('654321', '654300', '布尔津县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('654322', '654300', '富蕴县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('654323', '654300', '福海县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('654324', '654300', '哈巴河县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('654325', '654300', '青河县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('654326', '654300', '吉木乃县', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('659000', '650000', '自治区直辖县级行政区划', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('659001', '659000', '石河子市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('659002', '659000', '阿拉尔市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('659003', '659000', '图木舒克市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('659004', '659000', '五家渠市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('659006', '659000', '铁门关市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('710000', NULL, '台湾省', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('710100', '710000', '台湾', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('777', '3333333', '777', 1, NULL, NULL, '2021-04-16 15:53:17', '0000001');
INSERT INTO `tbl_base_area` VALUES ('777aaaaa', '3333333', '777', 0, NULL, NULL, '2021-04-16 15:55:57', '0000001');
INSERT INTO `tbl_base_area` VALUES ('810000', NULL, '香港特别行政区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('810100', '810000', '香港岛', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('810101', '810100', '中西区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('810102', '810100', '东区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('810103', '810100', '南区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('810104', '810100', '湾仔区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('810200', '810000', '九龙西', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('810201', '810200', '九龙城区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('810202', '810200', '深水埗区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('810203', '810200', '油尖旺区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('810300', '810000', '新界东', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('810301', '810300', '北区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('810302', '810300', '西贡区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('810303', '810300', '沙田区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('810304', '810300', '大埔区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('810400', '810000', '新界西', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('810401', '810400', '离岛区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('810402', '810400', '葵青区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('810403', '810400', '荃湾区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('810404', '810400', '屯门区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('810405', '810400', '元朗区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('810500', '810000', '香港机场', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('810501', '810500', '香港机场', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('820000', NULL, '澳门特别行政区', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('820100', '820000', '澳门', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_base_area` VALUES ('88888', '777', '8888', 0, NULL, NULL, '2021-04-16 15:53:25', '0000001');
INSERT INTO `tbl_base_area` VALUES ('cccccccc', '120000', 'CCCCC', 1, NULL, NULL, '2021-04-28 22:24:34', '0000001');
INSERT INTO `tbl_base_area` VALUES ('EEEEEE', 'cccccccc', 'EEEEE', 1, NULL, NULL, '2021-04-28 22:26:14', '0000001');
INSERT INTO `tbl_base_area` VALUES ('eeeeeeee', 'cccccccc', 'cccccaaaaaaaaaaa', 1, NULL, NULL, '2021-04-28 22:43:43', '0000001');
INSERT INTO `tbl_base_area` VALUES ('EEEEEEeeee', 'cccccccc', 'EEEEE', 1, NULL, NULL, '2021-04-28 22:27:40', '0000001');
INSERT INTO `tbl_base_area` VALUES ('rrrrrrrr', 'cccccccc', 'rrrrrrrr', 1, NULL, NULL, '2021-04-28 22:42:08', '0000001');
INSERT INTO `tbl_base_area` VALUES ('wwwwww', 'cccccccc', 'EEEEE', 1, NULL, NULL, '2021-04-28 22:27:13', '0000001');

-- ----------------------------
-- Table structure for tbl_base_category
-- ----------------------------
DROP TABLE IF EXISTS `tbl_base_category`;
CREATE TABLE `tbl_base_category`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `short_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `note` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `order_no` int(4) NULL DEFAULT NULL,
  `company_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `front_show` int(11) NULL DEFAULT NULL COMMENT '前台显示（1：显示，0：不显示）',
  `del_flag` int(1) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `creator` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `updator` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code_index`(`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_base_category
-- ----------------------------
INSERT INTO `tbl_base_category` VALUES ('40288af472b78daf0172b78dafd10000', '8a8a94aa5e758e5d015e75927af40005', '财务管理', '100001', 'yykj', NULL, 1, 'ding328e73cb3574de1c35c2f4657eb6', 0, 1, '2020-06-15 18:36:56', 'admin', '2021-05-17 20:17:11', '0000001');
INSERT INTO `tbl_base_category` VALUES ('8a8a94aa5e145290015e145290220000', '8a948c78589a8f4101589a92c5b10001', 'IT服务', '107', 'IT', NULL, 7, 'ding328e73cb3574de1c35c2f4657eb6', NULL, 1, '2017-08-24 20:58:28', 'admin', '2020-06-19 17:12:40', 'admin');
INSERT INTO `tbl_base_category` VALUES ('8a8a94aa5e758e5d015e75927af40005', '', '中石化集团', 'a222', 'MGJ', 'aaaaaaaaaaaaa', 333, '3', 1, 1, '2017-09-12 18:11:27', 'admin', '2023-01-16 14:50:46', '10101');
INSERT INTO `tbl_base_category` VALUES ('8a8a94aa5e758e5d015e7593c2360007', '8a8a94aa5e758e5d015e75927af40005', '人事管理', '88', 'HR', NULL, 2, 'ding328e73cb3574de1c35c2f4657eb6', NULL, 1, '2017-09-12 18:12:51', 'admin', '2020-06-19 17:15:12', 'admin');
INSERT INTO `tbl_base_category` VALUES ('8a8a94aa5e758e5d015e759426310008', '8a8a94aa5e758e5d015e75927af40005', '合同管理', '66', 'HT', NULL, 3, 'ding328e73cb3574de1c35c2f4657eb6', 1, 1, '2017-09-12 18:13:16', 'admin', '2021-04-14 21:10:08', '0000001');
INSERT INTO `tbl_base_category` VALUES ('8a8a94aa5e9e0894015ea1fce8260008', '8a948c78589a8f4101589a92c5b10001', '审计管理', '130', 'SJGL', NULL, 8, 'ding328e73cb3574de1c35c2f4657eb6', NULL, 1, '2017-09-21 09:10:59', 'admin', '2020-06-19 17:12:45', 'admin');
INSERT INTO `tbl_base_category` VALUES ('8a8a94aa5f7067f5015f714ecbad0003', '8a948c78589a8f4101589a92c5b10001', 'PMS流程', '111', 'PMS', NULL, 9, 'ding328e73cb3574de1c35c2f4657eb6', NULL, 1, '2017-10-31 15:21:50', 'admin', '2020-06-19 17:12:51', 'admin');
INSERT INTO `tbl_base_category` VALUES ('8a8a94aa5fec0ffb016000ec21c6003d', '8a948c78589a8f4101589a92c5b10001', 'SRM流程', '112', 'SRM', NULL, 10, 'ding328e73cb3574de1c35c2f4657eb6', NULL, 1, '2017-11-28 12:39:23', 'admin', '2020-06-19 17:12:57', 'admin');
INSERT INTO `tbl_base_category` VALUES ('8a8a94aa5fec0ffb0160242d3ef601d3', '', '盖章流程', '10201', 'GZLC', NULL, 21, '0001K310000000008TK6', NULL, 0, '2017-12-05 08:57:13', 'admin', '2017-12-05 08:58:10', 'admin');
INSERT INTO `tbl_base_category` VALUES ('8a8a94aa6033dbab016043fcf4e40012', '8a948c78589a8f4101589a9322790002', '盖章审批', '1021', 'GZSP', NULL, 21, '0001K310000000008TK6', NULL, 0, '2017-12-11 13:12:19', 'admin', '2017-12-11 13:14:23', 'admin');
INSERT INTO `tbl_base_category` VALUES ('8a8a94aa6077a97d01607859e3a00002', '8a948c78589a8f4101589a92c5b10001', '工管流程', '113', 'GG', NULL, 13, 'ding328e73cb3574de1c35c2f4657eb6', NULL, 1, '2017-12-21 17:14:05', 'admin', '2020-06-19 17:13:02', 'admin');
INSERT INTO `tbl_base_category` VALUES ('8a8a94aa60c0561b0160d3e3b9b10028', '8a948c78589a8f4101589a92c5b10001', '发文管理', '115', 'FWGL', NULL, 14, 'ding328e73cb3574de1c35c2f4657eb6', 1, 1, '2018-01-08 11:50:04', 'admin', '2020-11-03 18:53:46', 'admin');
INSERT INTO `tbl_base_category` VALUES ('8a8a94aa60c0561b0160d987c87200a7', '8a948c78589a8f4101589a92c5b10001', '工地流程', 'CSHR', 'GDKQ', NULL, 15, '0001K310000000008TK6', 1, 1, '2018-01-09 14:07:22', 'admin', '2023-01-16 14:47:57', '10101');
INSERT INTO `tbl_base_category` VALUES ('8a8a94aa61749142016182abdf860017', '', '资产管理', '555', 'ZCGL', NULL, 555, '0001K31000000000B9RH', NULL, 0, '2018-02-11 10:22:37', 'admin', '2018-02-11 10:23:32', 'admin');
INSERT INTO `tbl_base_category` VALUES ('8a8a94ab67eddb240167ee13a9b70003', '8a948c78589a8f4101589a92c5b10001', '法务管理', '8321', 'FaWuGL', NULL, NULL, 'ding328e73cb3574de1c35c2f4657eb6', NULL, 1, '2018-12-27 13:12:05', 'admin', '2020-06-19 17:16:14', 'admin');
INSERT INTO `tbl_base_category` VALUES ('8a8a94ab68127434016812897b3c0015', '8a948c78589a8f4101589a92c5b10001', '管理改进', '8567', 'GLGJ', NULL, NULL, 'ding328e73cb3574de1c35c2f4657eb6', NULL, 1, '2019-01-03 15:07:06', 'admin', '2020-06-19 17:11:59', 'admin');
INSERT INTO `tbl_base_category` VALUES ('8a8a94ab6878c5d4016878c64ebf0001', '8a948c78589a8f4101589a92c5b10001', '合同管理', '321', 'htgl', NULL, NULL, 'ding328e73cb3574de1c35c2f4657eb6', NULL, 1, '2019-01-23 11:34:49', '00009179', '2020-06-19 17:12:05', 'admin');
INSERT INTO `tbl_base_category` VALUES ('8a948c78589a8f4101589a92c5b10001', '', '通用类型', 'B101', 'TY', NULL, 1, '7401a5e908536545298a7701dbd5c769', 1, 1, '2016-11-25 16:21:00', 'admin', '2023-01-16 14:47:41', '10101');
INSERT INTO `tbl_base_category` VALUES ('8a948c78589a8f4101589a9322790002', '8a948c78589a8f4101589a92c5b10001', '行政审批', '102', 'XZ', NULL, 2, 'ding328e73cb3574de1c35c2f4657eb6', NULL, 1, '2016-11-25 16:21:24', 'admin', '2020-06-19 17:12:10', 'admin');
INSERT INTO `tbl_base_category` VALUES ('8a948c78589a8f4101589a93659f0003', '8a948c78589a8f4101589a92c5b10001', '工作管理', '103', 'GZ', NULL, 3, 'ding328e73cb3574de1c35c2f4657eb6', NULL, 1, '2016-11-25 16:21:41', 'admin', '2020-06-19 17:12:17', 'admin');
INSERT INTO `tbl_base_category` VALUES ('8a948c78589a8f4101589a93b9b50004', '8a948c78589a8f4101589a92c5b10001', '行政管理', '104', 'XZGL', NULL, 4, 'ding328e73cb3574de1c35c2f4657eb6', NULL, 1, '2016-11-25 16:22:02', 'admin', '2020-06-19 17:12:25', 'admin');
INSERT INTO `tbl_base_category` VALUES ('8a948c78589a8f4101589a945d5d0005', '8a948c78589a8f4101589a92c5b10001', '人事审批', '105', 'RS', NULL, 5, 'ding328e73cb3574de1c35c2f4657eb6', NULL, 1, '2016-11-25 16:22:44', 'admin', '2020-06-19 17:12:31', 'admin');
INSERT INTO `tbl_base_category` VALUES ('8a948c78589a8f4101589a949a130006', '8a948c78589a8f4101589a92c5b10001', '财务审批', '106', 'CW', NULL, 6, 'ding328e73cb3574de1c35c2f4657eb6', NULL, 1, '2016-11-25 16:23:00', 'admin', '2020-06-19 17:12:36', 'admin');

-- ----------------------------
-- Table structure for tbl_base_dic_item
-- ----------------------------
DROP TABLE IF EXISTS `tbl_base_dic_item`;
CREATE TABLE `tbl_base_dic_item`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '编码',
  `cname` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '中文',
  `ename` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '英文',
  `main_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '主表id',
  `order_no` int(11) NULL DEFAULT NULL COMMENT '排序号',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `updator` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `del_flag` int(11) NULL DEFAULT 1 COMMENT '删除标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_base_dic_item
-- ----------------------------
INSERT INTO `tbl_base_dic_item` VALUES ('5fa0fe19e235fb0f39752c8f832a21e7', 'asdfasdf', 'basdf', NULL, '2be2ebdf6d19d53e92e7b34e633d4bc6', 23423, '2023-01-16 15:03:55', '10101', NULL, NULL, 1);
INSERT INTO `tbl_base_dic_item` VALUES ('6a703d4ccdca8629cb31f13ebf7564e0', 'ccc', 'bbb', NULL, '588d15687543268f32d132477638b1bb', 222, '2023-01-16 15:03:04', '10101', NULL, NULL, 1);

-- ----------------------------
-- Table structure for tbl_base_dic_type
-- ----------------------------
DROP TABLE IF EXISTS `tbl_base_dic_type`;
CREATE TABLE `tbl_base_dic_type`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `pid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '父节点id',
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '简称 code',
  `order_no` int(16) NULL DEFAULT NULL COMMENT '排序',
  `del_flag` int(11) NULL DEFAULT NULL COMMENT '删除标识',
  `create_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `creator` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updator` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_base_dic_type
-- ----------------------------
INSERT INTO `tbl_base_dic_type` VALUES ('3030d0781b8ab3e5bfec9b00c669ab1e', 'ccc', 'eb3f3d756facefa04dfcd180bc99e509', 'ddd', 4443, 1, '2023-01-16 14:53:46', '10101', NULL, NULL);
INSERT INTO `tbl_base_dic_type` VALUES ('d83941746bd16a349f6bcf2064248234', 'aaa', NULL, 'aaaa', 123, 1, '2023-01-16 12:23:09', '10101', NULL, NULL);
INSERT INTO `tbl_base_dic_type` VALUES ('eb3f3d756facefa04dfcd180bc99e509', 'testa', 'd83941746bd16a349f6bcf2064248234', 'testb', 123, 1, '2023-01-16 14:53:34', '10101', NULL, NULL);

-- ----------------------------
-- Table structure for tbl_base_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `tbl_base_dictionary`;
CREATE TABLE `tbl_base_dictionary`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `dic_type_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据字典id',
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '编码',
  `ename` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '英文名称',
  `cname` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '中文名称',
  `remark` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `updator` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `del_flag` int(11) NULL DEFAULT 1 COMMENT '删除标识',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code_index`(`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_base_dictionary
-- ----------------------------
INSERT INTO `tbl_base_dictionary` VALUES ('2be2ebdf6d19d53e92e7b34e633d4bc6', 'd83941746bd16a349f6bcf2064248234', 'www', NULL, 'ccd', 'www', '2023-01-16 15:03:47', '10101', NULL, NULL, 1);
INSERT INTO `tbl_base_dictionary` VALUES ('588d15687543268f32d132477638b1bb', '3030d0781b8ab3e5bfec9b00c669ab1e', 'ddbbb', NULL, 'ccc', 'aaa', '2023-01-16 14:58:30', '10101', '2023-01-16 15:03:00', '10101', 1);

-- ----------------------------
-- Table structure for tbl_base_system_config
-- ----------------------------
DROP TABLE IF EXISTS `tbl_base_system_config`;
CREATE TABLE `tbl_base_system_config`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `config_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '配置名称',
  `config_sn` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '配置标示',
  `config_key` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '配置key',
  `config_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '配置key的value值',
  `remark` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `creator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人',
  `del_flag` int(11) NULL DEFAULT 1 COMMENT '删除标识0：删除1：存在',
  `config_order` int(11) NULL DEFAULT NULL COMMENT '排序号',
  `image` longblob NULL COMMENT '图片',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `config_key_unique`(`config_key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_base_system_config
-- ----------------------------
INSERT INTO `tbl_base_system_config` VALUES ('056e0e12e489b37831713f840483c4a1', 'LOGO', 'logo', 'logo', 'log', 'aaaaaa', '2022-06-17 17:23:47', NULL, NULL, NULL, 1, 1, NULL);
INSERT INTO `tbl_base_system_config` VALUES ('ec9079b6a8e937948954755320fb683b', 'systemName', 'systemName', 'systemName', 'systemName', 'systemName', '2022-06-17 17:24:12', NULL, NULL, NULL, 1, 0, NULL);
INSERT INTO `tbl_base_system_config` VALUES ('f7e046c629f3b3759b49a78d5039c0fe', 'favicon', 'favicon', 'favicon', 'favicon', 'favicon', '2022-06-17 17:23:59', NULL, NULL, NULL, 1, 0, NULL);

-- ----------------------------
-- Table structure for tbl_flow_auth_modelpoint
-- ----------------------------
DROP TABLE IF EXISTS `tbl_flow_auth_modelpoint`;
CREATE TABLE `tbl_flow_auth_modelpoint`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '表id',
  `model_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模板id',
  `model_sn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模板标识',
  `model_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模板名称',
  `point_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '功能点id',
  `point_sn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '功能点标识',
  `point_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '功能点名称',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `creator` varchar(96) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `updator` varchar(96) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `del_flag` int(1) NULL DEFAULT NULL COMMENT '删除标志（1未删除，0删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '模板功能点授权' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_flow_auth_modelpoint
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_flow_auth_point
-- ----------------------------
DROP TABLE IF EXISTS `tbl_flow_auth_point`;
CREATE TABLE `tbl_flow_auth_point`  (
  `id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '表id',
  `name` varchar(96) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '功能点名',
  `sn` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标识',
  `if_default` int(2) NULL DEFAULT NULL COMMENT '是否默认',
  `order_no` int(2) NULL DEFAULT NULL,
  `remark` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `creator` varchar(96) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `updator` varchar(96) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `del_flag` int(1) NULL DEFAULT NULL COMMENT '删除标志（1未删除，0删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '功能点管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_flow_auth_point
-- ----------------------------
INSERT INTO `tbl_flow_auth_point` VALUES ('0be55b738a9a43aeb8123bc3834bfc05', '后加签', 'after_addsign', 0, 6, '加签之后不需要审批直接流下去', '2018-11-12 13:37:56', 'admin', '2020-06-04 16:00:14', 'admin', 1);
INSERT INTO `tbl_flow_auth_point` VALUES ('40288128727e172301727e1723400000', '委派', 'delegate', 0, 10, '委派给别人，处理完之后又回到我这里', '2020-06-04 14:49:05', 'admin', '2020-06-04 14:49:05', 'admin', 1);
INSERT INTO `tbl_flow_auth_point` VALUES ('40288a45725e28f901725e28f9ae0000', '加签', 'before_addsign', 1, 6, '前加签审批完成之后又流到加签这里了', '2020-05-29 10:00:43', 'admin', '2020-06-04 16:00:04', 'admin', 1);
INSERT INTO `tbl_flow_auth_point` VALUES ('40288a45725e28f901725e2c0fbd0001', '暂存', 'claim', 1, 2, '', '2020-05-29 10:04:05', 'admin', '2020-05-29 10:04:05', 'admin', 1);
INSERT INTO `tbl_flow_auth_point` VALUES ('40288a45725e28f901725e2cc1640002', '协同', 'coordination', 0, 4, '', '2020-05-29 10:04:51', 'admin', '2020-06-04 15:42:06', 'admin', 1);
INSERT INTO `tbl_flow_auth_point` VALUES ('40288a45725e28f901725e2d6c000003', '评审', 'review', 0, 5, '', '2020-05-29 10:05:35', 'admin', '2020-06-04 15:42:02', 'admin', 1);
INSERT INTO `tbl_flow_auth_point` VALUES ('54074597ca944e9a8b7665c0f5e55c5f', '转办', 'turn_do', 1, 3, '', '2018-11-12 13:38:47', 'admin', '2018-11-16 13:16:35', 'admin', 1);
INSERT INTO `tbl_flow_auth_point` VALUES ('aa927a0955144e30bf68241d1cab6059', '审批', 'approve', 1, 1, '', '2018-11-12 13:36:58', 'admin', '2018-11-16 13:23:11', 'admin', 1);
INSERT INTO `tbl_flow_auth_point` VALUES ('b2d352161b49452aa84fb58c0acfb756', '转阅', 'turn_read', 1, 9, '', '2018-11-12 13:38:26', 'admin', '2018-11-16 13:16:49', 'admin', 1);
INSERT INTO `tbl_flow_auth_point` VALUES ('ddd4c6a8be5b4ae7ae305b9619a60ebf', '驳回', 'reject', 1, 7, '', '2018-11-12 13:37:28', 'admin', '2018-11-16 13:23:06', 'admin', 1);
INSERT INTO `tbl_flow_auth_point` VALUES ('e37e3fb69069445aac5e03d0be490176', '撤回', 'revoke', 1, 8, 'test', '2018-11-16 13:16:27', 'admin', '2019-02-18 17:08:46', 'admin', 1);

-- ----------------------------
-- Table structure for tbl_flow_comment_info
-- ----------------------------
DROP TABLE IF EXISTS `tbl_flow_comment_info`;
CREATE TABLE `tbl_flow_comment_info`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '类型',
  `personal_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工工号',
  `time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '审批时间',
  `task_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务id',
  `activity_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `activity_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `process_instance_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流程实例id',
  `action` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '动作',
  `message` varchar(800) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审批意见',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `process_instance_id_index`(`process_instance_id`) USING BTREE,
  INDEX `personal_code_index`(`personal_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_flow_comment_info
-- ----------------------------
INSERT INTO `tbl_flow_comment_info` VALUES ('86faea541e17743d9f0c792096b91bc7', 'TJ', '10005', '2021-09-28 11:45:35', NULL, 'startEvent1', NULL, '89560661200e11ecbaee00e04d680167', NULL, '提交');

-- ----------------------------
-- Table structure for tbl_flow_extend_hisprocinst
-- ----------------------------
DROP TABLE IF EXISTS `tbl_flow_extend_hisprocinst`;
CREATE TABLE `tbl_flow_extend_hisprocinst`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `process_instance_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '流程实例id',
  `process_definition_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `model_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `business_key` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业务单据id',
  `process_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '流程状态',
  `process_name` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '流程表单名称',
  `current_user_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '流程发起人',
  `creator` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `tenant_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '租户id(系统标识)',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `update_time` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updator` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `del_flag` int(1) NULL DEFAULT 1 COMMENT '删除标识0表示删除1表示存在',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `process_instance_id_index`(`process_instance_id`) USING BTREE,
  INDEX `creator_index`(`creator`) USING BTREE,
  INDEX `model_key_index`(`model_key`) USING BTREE,
  INDEX `process_definition_id_index`(`process_definition_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_flow_extend_hisprocinst
-- ----------------------------
INSERT INTO `tbl_flow_extend_hisprocinst` VALUES ('0e45a618c601e1c4460981df4e06d670', '89560661200e11ecbaee00e04d680167', 'leave:1:66580c30200e11ecbaee00e04d680167', 'leave', '0caa8ba279f0cbe1277e90ce5caa066f', 'SPZ', '请假流程-调休 2021-09-28 11:45:34', '10005', '10005', 'flow', '2021-09-28 11:45:35', '2021-09-28 11:45:35', NULL, 1);

-- ----------------------------
-- Table structure for tbl_flow_extend_procinst
-- ----------------------------
DROP TABLE IF EXISTS `tbl_flow_extend_procinst`;
CREATE TABLE `tbl_flow_extend_procinst`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `model_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `process_instance_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '流程实例id',
  `process_definition_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `business_key` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业务单据id',
  `process_name` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '流程表单名称',
  `process_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '流程状态',
  `current_user_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '流程发起人',
  `creator` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `tenant_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '租户id(系统标识)',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updator` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `del_flag` int(1) NULL DEFAULT 1 COMMENT '删除标识0表示删除1表示存在',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `process_instance_id_index`(`process_instance_id`) USING BTREE,
  INDEX `creator_index`(`creator`) USING BTREE,
  INDEX `model_key_index`(`model_key`) USING BTREE,
  INDEX `process_definition_id_index`(`process_definition_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_flow_extend_procinst
-- ----------------------------
INSERT INTO `tbl_flow_extend_procinst` VALUES ('0e45a618c601e1c4460981df4e06d670', 'leave', '89560661200e11ecbaee00e04d680167', 'leave:1:66580c30200e11ecbaee00e04d680167', '0caa8ba279f0cbe1277e90ce5caa066f', '请假流程-调休 2021-09-28 11:45:34', 'SPZ', '10005', '10005', 'flow', '2021-09-28 11:45:35', '2021-09-28 11:45:35', NULL, 1);

-- ----------------------------
-- Table structure for tbl_flow_listener
-- ----------------------------
DROP TABLE IF EXISTS `tbl_flow_listener`;
CREATE TABLE `tbl_flow_listener`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `listener_type` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `value` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updator` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `order_no` int(11) NULL DEFAULT NULL COMMENT '排序号',
  `del_flag` int(1) NULL DEFAULT 1 COMMENT '删除标识0：删除1：存在',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_flow_listener
-- ----------------------------
INSERT INTO `tbl_flow_listener` VALUES ('1418011167482535937', '测试任务监听器', 'taskListener', 'delegateExpression', '${taskListenerTest}', '测试任务监听器', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_flow_listener` VALUES ('1418011500015345666', '自动跳过执行监听', 'executionListener', 'delegateExpression', '${skipTaskListener}', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_flow_listener` VALUES ('1622607211309641729', 'test', 'taskListener', 'class', 'test', 'test', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_flow_listener` VALUES ('1622607230905430017', 'ccc', 'taskListener', 'class', 'cccc', 'cccc', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_flow_listener` VALUES ('1622607247380656129', 'bbb', 'taskListener', 'class', 'bb', 'bbbbb', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_flow_listener` VALUES ('1622607267291017218', 'eeee', 'taskListener', 'class', 'eee', 'eee', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_flow_listener` VALUES ('1622607284613492738', 'fff', 'taskListener', 'class', 'ff', 'fffff', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_flow_listener` VALUES ('1622607381933928450', 'bbbbbb', 'taskListener', 'class', 'ccc', 'cccc', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_flow_listener` VALUES ('1622773749090168834', 'aaa', 'taskListener', 'expression', 'bbb', 'ccccc', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_flow_listener` VALUES ('1622774769987899393', 'ww22222', 'taskListener', 'class', '2222', '22222', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_flow_listener` VALUES ('1622783862148521985', 'asdf', 'taskListener', 'class', '33333333333333', 'fasdfasdfaaaaaaaaaaaaaaa', '2023-02-07 10:26:55', '10101', '2023-02-07 10:32:25', '10101', NULL, 1);
INSERT INTO `tbl_flow_listener` VALUES ('1622783890153889793', 'eeeeeeee', 'taskListener', 'class', 'eeewwwwwwwwwwww3333333333333', 'eeeee', '2023-02-07 10:27:01', '10101', '2023-02-07 10:32:19', '10101', NULL, 1);
INSERT INTO `tbl_flow_listener` VALUES ('1622785270960726017', '5555', 'taskListener', 'class', '555', '555555', '2023-02-07 10:32:13', '10101', '2023-02-07 10:32:13', '10101', NULL, 1);

-- ----------------------------
-- Table structure for tbl_flow_listener_param
-- ----------------------------
DROP TABLE IF EXISTS `tbl_flow_listener_param`;
CREATE TABLE `tbl_flow_listener_param`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `listener_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_flow_listener_param
-- ----------------------------
INSERT INTO `tbl_flow_listener_param` VALUES ('1614901152113561602', '1418011167482535937', 'aaaccwwwww', 'expression', 'bbbb');
INSERT INTO `tbl_flow_listener_param` VALUES ('1621378395471904769', '1418011500015345666', 'aaaccwwwww', 'string', 'aaaa');
INSERT INTO `tbl_flow_listener_param` VALUES ('1622607320470597633', '1418011167482535937', 'xx', 'string', 'xxxx');
INSERT INTO `tbl_flow_listener_param` VALUES ('1622607342931095554', '1418011167482535937', 'eeee', 'string', 'eeee');

-- ----------------------------
-- Table structure for tbl_flow_model_info
-- ----------------------------
DROP TABLE IF EXISTS `tbl_flow_model_info`;
CREATE TABLE `tbl_flow_model_info`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `model_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模型id',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `model_key` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模型key',
  `model_type` int(2) NULL DEFAULT 0 COMMENT '模型key',
  `model_icon` longblob NULL,
  `form_type` int(11) NULL DEFAULT NULL COMMENT '模型类型: 0 自定义流程 1是业务流程',
  `app_sn` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '系统标识',
  `category_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类id',
  `status` int(11) NULL DEFAULT NULL COMMENT '流程图Model状态',
  `own_dept_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所属部们id',
  `own_dept_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所属部门名称',
  `flow_owner_no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '流程拥有者ID',
  `flow_owner_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '流程拥有者名称',
  `process_docking_no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '流程对接人工号',
  `process_docking_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '流程对接人名称',
  `apply_companies` json NULL COMMENT '适用公司(多个公司，以逗号隔开)',
  `superuser` json NULL COMMENT '授权管理人员',
  `show_status` int(11) NULL DEFAULT NULL COMMENT '流程中心是否显示 1 是 0 否',
  `auth_point_list` json NULL COMMENT '授权功能',
  `applied_range` int(11) NULL DEFAULT NULL COMMENT ' 适用范围 @see ModelAppliedRangeEnum',
  `business_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业务表单的URL',
  `function_range` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '功能范围(1 允许转办 2允许加签 3允许转阅 4允许打印 5相近节点同一人员自动跳过 可以多选 )',
  `skip_set` int(4) NULL DEFAULT NULL COMMENT '跳过设置',
  `extend_status` int(4) NULL DEFAULT NULL COMMENT '拓展信息 状态',
  `order_no` int(4) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updator` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `del_flag` int(11) NULL DEFAULT NULL COMMENT '删除标识',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `model_id_index`(`model_id`) USING BTREE,
  INDEX `model_key_index`(`model_key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_flow_model_info
-- ----------------------------
INSERT INTO `tbl_flow_model_info` VALUES ('7da7b391be25c246c23744c681ef2f37', '899e8ef7957711ed97de766c80182d43', 'aaa', 'bb', 0, NULL, NULL, 'flow', '66', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '2023-01-16 16:26:56', '10101', '2023-02-02 09:43:31', '10101', 1);
INSERT INTO `tbl_flow_model_info` VALUES ('e4f3ff64f53d1f7580faec85fc82252f', '7a76271c200d11ecbaee00e04d680167', '请假', 'leave', 0, NULL, NULL, 'flow', '222', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '2021-09-28 11:38:00', '10101', '2021-09-28 11:44:23', '10101', 1);

-- ----------------------------
-- Table structure for tbl_front_account
-- ----------------------------
DROP TABLE IF EXISTS `tbl_front_account`;
CREATE TABLE `tbl_front_account`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int(1) NULL DEFAULT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `updator` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `del_flag` int(11) NULL DEFAULT 1 COMMENT '删除标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_front_account
-- ----------------------------
INSERT INTO `tbl_front_account` VALUES ('1', '10000', '10000', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '易烊千玺', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('10', '10009', '10009', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '王俊凯', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('100', '10099', '10099', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '白敬亭', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('11', '10010', '10010', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '迪丽热巴', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('12', '10011', '10011', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '朱一龙', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('13', '10012', '10012', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '杨紫', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('14', '10013', '10013', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '宋茜', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('15', '10014', '10014', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '鹿晗', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('16', '10015', '10015', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '杨颖', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('17', '10016', '10016', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '华晨宇', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('18', '10017', '10017', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '刘昊然', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('19', '10018', '10018', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '李现', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('2', '10001', '10001', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '徐峥', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('20', '10019', '10019', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '李佳琦', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('21', '10020', '10020', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '刘涛', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('22', '10021', '10021', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '饺子（杨宇）', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('23', '10022', '10022', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '吴京', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('24', '10023', '10023', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '胡歌', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('25', '10024', '10024', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '孙俪', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('26', '10025', '10025', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '王凯', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('27', '10026', '10026', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '张伟丽', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('28', '10027', '10027', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '沈腾', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('29', '10028', '10028', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '刘诗诗', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('3', '10002', '10002', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '周冬雨', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('30', '10029', '10029', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '刘亦菲', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('31', '10030', '10030', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '蔡徐坤', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('32', '10031', '10031', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '张若昀', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('33', '10032', '10032', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '王源', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('34', '10033', '10033', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '邓伦', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('35', '10034', '10034', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '井柏然', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('36', '10035', '10035', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '黄景瑜', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('37', '10036', '10036', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '黄子韬', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('38', '10037', '10037', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '薇娅', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('39', '10038', '10038', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '李宇春', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('4', '10003', '10003', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '周杰伦', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('40', '10039', '10039', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '陈伟霆', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('41', '10040', '10040', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '王嘉尔', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('42', '10041', '10041', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '周深', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('43', '10042', '10042', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '李易峰', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('44', '10043', '10043', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '杨洋', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('45', '10044', '10044', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '宋威龙', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('46', '10045', '10045', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '周震南', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('47', '10046', '10046', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '吴磊', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('48', '10047', '10047', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '黄轩', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('49', '10048', '10048', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '张一山', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('5', '10004', '10004', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '张艺兴', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('50', '10049', '10049', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '罗晋', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('51', '10050', '10050', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '唐嫣', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('52', '10051', '10051', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '黄渤', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('53', '10052', '10052', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '何炅', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('54', '10053', '10053', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '古天乐', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('55', '10054', '10054', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '佟丽娅', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('56', '10055', '10055', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '魏大勋', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('57', '10056', '10056', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '武磊', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('58', '10057', '10057', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '甄子丹', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('59', '10058', '10058', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '李荣浩', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('6', '10005', '10005', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '杨幂', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('60', '10059', '10059', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '马思纯', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('61', '10060', '10060', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '雷佳音', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('62', '10061', '10061', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '肖央', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('63', '10062', '10062', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '靳东', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('64', '10063', '10063', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '潘粤明', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('65', '10064', '10064', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '周迅', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('66', '10065', '10065', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '刘雯', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('67', '10066', '10066', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '彭昱畅', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('68', '10067', '10067', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '白宇', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('69', '10068', '10068', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '许光汉', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('7', '10006', '10006', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '赵丽颖', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('70', '10069', '10069', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '倪妮', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('71', '10070', '10070', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '关晓彤', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('72', '10071', '10071', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '李沁', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('73', '10072', '10072', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '欧阳娜娜', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('74', '10073', '10073', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '春夏', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('75', '10074', '10074', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '谢娜', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('76', '10075', '10075', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '黄晓明', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('77', '10076', '10076', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '张嘉译', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('78', '10077', '10077', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '章子怡', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('79', '10078', '10078', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '毛不易', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('7bf212c96225f2fc50b21c0b05538dc2', '10101', '10101', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '测试账号', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('8', '10007', '10007', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '吴亦凡', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('80', '10079', '10079', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '杨超越', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('81', '10080', '10080', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '张子枫', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('82', '10081', '10081', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '郑爽', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('83', '10082', '10082', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '陈飞宇', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('84', '10083', '10083', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '鞠婧祎', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('85', '10084', '10084', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '张杰', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('86', '10085', '10085', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '钟楚曦', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('87', '10086', '10086', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '秦昊', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('88', '10087', '10087', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '郎朗', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('89', '10088', '10088', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '李晨', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('9', '10008', '10008', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '王一博', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('90', '10089', '10089', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '刘德华', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('91', '10090', '10090', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '成龙', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('92', '10091', '10091', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '景甜', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('93', '10092', '10092', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '贾玲', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('94', '10093', '10093', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '彭于晏', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('95', '10094', '10094', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '郭富城', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('96', '10095', '10095', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '王宝强', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('97', '10096', '10096', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '邓超', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('98', '10097', '10097', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '万茜', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('99', '10098', '10098', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '郭麒麟', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_front_account` VALUES ('9c52ed37ee014a5ccd56ad8fc7810978', '10100', '10100', '21218cca77804d2ba1922c33e0151105', NULL, NULL, NULL, '刘文军', NULL, NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for tbl_hr_leave
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hr_leave`;
CREATE TABLE `tbl_hr_leave`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `process_instance_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `applyer_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `title` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `days` float NULL DEFAULT NULL,
  `start_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `end_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `company_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `company_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updator` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `del_flag` int(11) NULL DEFAULT NULL COMMENT '删除标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_hr_leave
-- ----------------------------
INSERT INTO `tbl_hr_leave` VALUES ('46ff95be46228cf6d462547e23c62411', '7b8b8c47bd6d11eb9d06185e0f154c43', '10000', NULL, '1', 3, '2021-05-25 23:25:00', '2021-05-27 23:25:00', NULL, NULL, NULL, NULL, 'sd', '2021-05-25 23:25:50', NULL, NULL, NULL, 1);
INSERT INTO `tbl_hr_leave` VALUES ('76772ab550870fb24206d11ae6924d35', '1a8ab3d7bde511eb92ff185e0f154c43', '10003', NULL, '2', 7, '2021-05-26 13:41:00', '2021-05-31 13:41:00', NULL, NULL, NULL, NULL, '请假', '2021-05-26 13:42:07', NULL, NULL, NULL, 1);
INSERT INTO `tbl_hr_leave` VALUES ('a9b0ae81f1c8536307ebfd0c7845521b', '501c9aa6bdc911eb8053185e0f154c43', '10000', NULL, '1', 6, '2021-05-26 10:22:00', '2021-05-27 10:22:00', NULL, NULL, NULL, NULL, '5656', '2021-05-26 10:23:11', NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for tbl_org_company
-- ----------------------------
DROP TABLE IF EXISTS `tbl_org_company`;
CREATE TABLE `tbl_org_company`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '主键',
  `type_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '公司类型ID',
  `pid` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '上级公司id',
  `cname` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '公司中文名称',
  `short_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '公司简称',
  `ename` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '公司英文名称',
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '公司code',
  `order_no` int(11) NULL DEFAULT NULL,
  `descr` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '描述',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '状态 1启用 0禁用',
  `creator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `del_flag` int(11) NOT NULL DEFAULT 1 COMMENT '1：存在  0： 删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code_index`(`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_org_company
-- ----------------------------
INSERT INTO `tbl_org_company` VALUES ('1', NULL, NULL, '中国石化', '中国石化', NULL, '1000', 1, NULL, 1, NULL, NULL, '10100', '2023-02-03 13:21:01', 1);
INSERT INTO `tbl_org_company` VALUES ('2', NULL, '1', '北京市石化', '北京市石化', NULL, '100001', 2, NULL, 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_company` VALUES ('3', NULL, '1', '天津市石化', '天津市石化', NULL, '100002', 3, NULL, 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_company` VALUES ('4', NULL, '1', '河北省石化', '河北省石化', NULL, '100003', 4, NULL, 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_company` VALUES ('8e97e49a804ea59d48fe6bcfcf967995', NULL, '1', 'cccbbbbb', 'ddd', NULL, 'eee', 222, 'ssss', 0, '10101', '2023-01-16 16:52:11', '10101', '2023-01-16 16:52:28', 1);
INSERT INTO `tbl_org_company` VALUES ('a9dc37e16f97a407eec18d3fcd397d6b', NULL, '1', '湖南省长沙市中国石化集团有限公司', '湖南省长沙市中国石化集团有限公司', NULL, 'hnszgsh', 123, '湖南省长沙市中国石化集团有限公司', 1, '10100', '2021-06-28 11:22:18', NULL, NULL, 1);
INSERT INTO `tbl_org_company` VALUES ('ba57f148c62ba5e214864bbc1684c2a5', NULL, '2', 'abc', 'abc', NULL, '33', 222, '222', 1, '10101', '2023-01-16 16:52:46', NULL, NULL, 1);

-- ----------------------------
-- Table structure for tbl_org_company_role
-- ----------------------------
DROP TABLE IF EXISTS `tbl_org_company_role`;
CREATE TABLE `tbl_org_company_role`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户id',
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '角色id',
  `end_date` date NULL DEFAULT NULL COMMENT '截止日期',
  `valid_month` int(11) NULL DEFAULT NULL COMMENT '有效期',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `creator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人',
  `del_flag` int(11) NULL DEFAULT 1 COMMENT '删除标识0：删除1：存在',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_org_company_role
-- ----------------------------
INSERT INTO `tbl_org_company_role` VALUES ('5541446d728ba9a49b078523923b6eb3', '31f2a0b44a5bde305a7c5006f8091512', 'c5f851e67220416fe3cd75886f4c4433', NULL, NULL, '2021-04-12 21:32:03', '0000001', '2021-04-12 21:32:03', '0000001', 1);
INSERT INTO `tbl_org_company_role` VALUES ('5552cdc3522b2eb8c61c5f06056b77c8', '1', '76e535988ac51127116edde2d88b187e', NULL, NULL, '2021-04-12 21:49:23', '0000001', '2021-04-12 21:49:23', '0000001', 1);
INSERT INTO `tbl_org_company_role` VALUES ('6007a6f41c07bd26255feebe1cf36eec', '31f2a0b44a5bde305a7c5006f8091512', 'dfda714f8c2003919a1c34c3cd88ef31', NULL, NULL, '2021-04-12 21:44:44', '0000001', '2021-04-12 21:44:44', '0000001', 1);
INSERT INTO `tbl_org_company_role` VALUES ('e52968685c67f2d8eadbebfb9f7f76f0', '1', 'c5f851e67220416fe3cd75886f4c4433', NULL, NULL, '2021-04-12 21:47:44', '0000001', '2021-04-12 21:47:44', '0000001', 1);

-- ----------------------------
-- Table structure for tbl_org_company_type
-- ----------------------------
DROP TABLE IF EXISTS `tbl_org_company_type`;
CREATE TABLE `tbl_org_company_type`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `descr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `order_no` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `creator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人',
  `del_flag` int(11) NULL DEFAULT 1 COMMENT '删除标识0：删除 1：存在',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_org_company_type
-- ----------------------------
INSERT INTO `tbl_org_company_type` VALUES ('1', 'one', '01', '一级', '一级', NULL, '2021-09-25 10:49:22', NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_company_type` VALUES ('2', 'two', '02', '二级', NULL, NULL, '2021-09-25 10:49:39', NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_company_type` VALUES ('3', 'three', '03', '三级', NULL, NULL, '2021-09-25 10:49:53', NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_company_type` VALUES ('4', 'four', '04', '四级', NULL, NULL, '2021-09-25 10:50:26', NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_company_type` VALUES ('5', 'five', '05', '五级', NULL, NULL, '2021-09-25 10:50:50', NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for tbl_org_department
-- ----------------------------
DROP TABLE IF EXISTS `tbl_org_department`;
CREATE TABLE `tbl_org_department`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '公司id',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '名称',
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '编号',
  `note` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  `pid` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '父id',
  `leader_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '部门领导工号',
  `superior_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '分管领导工号',
  `order_no` int(11) NULL DEFAULT NULL COMMENT '排序号',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `creator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人',
  `del_flag` int(11) NULL DEFAULT 1 COMMENT '删除标识0表示删除1表示存在',
  `leader` int(11) NULL DEFAULT 0 COMMENT '是否是leader1:是 0：不是',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code_index`(`code`) USING BTREE,
  INDEX `company_id_index`(`company_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_org_department
-- ----------------------------
INSERT INTO `tbl_org_department` VALUES ('20', '1', '人资部', '100001', NULL, NULL, NULL, NULL, 1, '2023-02-03 13:21:05', NULL, '2023-02-03 13:21:05', '10100', 1, 0);
INSERT INTO `tbl_org_department` VALUES ('21', '1', '技术部', '100002', NULL, NULL, NULL, NULL, 2, '2021-05-24 22:55:20', NULL, NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('22', '1', '产品部', '100003', NULL, NULL, NULL, NULL, 3, '2021-05-24 22:55:20', NULL, NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('23', '1', '销售部', '100004', NULL, NULL, NULL, NULL, 4, '2021-05-24 22:55:20', NULL, NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('24', '1', '财务部', '100005', NULL, NULL, NULL, NULL, 5, '2021-05-24 22:55:20', NULL, NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('25', '1', '运营部', '100006', NULL, NULL, NULL, NULL, 6, '2021-05-24 22:55:20', NULL, NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('25a434590d24e2a356308e3732b741f7', 'ba57f148c62ba5e214864bbc1684c2a5', 'aaa', 'aaa', 'ccc', NULL, '', NULL, 555, '2023-01-16 16:55:56', '10101', NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('26', '1', '市场部', '100007', NULL, NULL, NULL, NULL, 7, '2021-05-24 22:55:20', NULL, NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('27', '1', '领导班子', '100008', NULL, NULL, NULL, NULL, 8, '2021-05-24 22:55:20', NULL, NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('28', '2', '人资部', '10000101', NULL, NULL, NULL, NULL, 1, '2021-05-24 22:55:20', NULL, NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('29', '2', '技术部', '10000102', NULL, NULL, NULL, NULL, 2, '2021-05-24 22:55:20', NULL, NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('2bc7dea2f432b2108a84e3c679046c99', '1', 'aaa', 'bbb', '234234', NULL, '10006', NULL, 23, '2023-01-16 16:55:36', '10101', NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('30', '2', '产品部', '10000103', NULL, NULL, NULL, NULL, 3, '2021-05-24 22:55:20', NULL, NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('31', '2', '销售部', '10000104', NULL, NULL, NULL, NULL, 4, '2021-05-24 22:55:21', NULL, NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('32', '2', '财务部', '10000105', NULL, NULL, NULL, NULL, 5, '2021-05-24 22:55:21', NULL, NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('33', '2', '运营部', '10000106', NULL, NULL, NULL, NULL, 6, '2021-05-24 22:55:21', NULL, NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('34', '2', '市场部', '10000107', NULL, NULL, NULL, NULL, 7, '2021-05-24 22:55:21', NULL, NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('35', '2', '领导班子', '10000108', NULL, NULL, NULL, NULL, 8, '2021-05-24 22:55:21', NULL, NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('36', '3', '人资部', '10000201', NULL, NULL, NULL, NULL, 1, '2021-05-24 22:55:21', NULL, NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('37', '3', '技术部', '10000202', NULL, NULL, NULL, NULL, 2, '2021-05-24 22:55:21', NULL, NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('38', '3', '产品部', '10000203', NULL, NULL, NULL, NULL, 3, '2021-05-24 22:55:21', NULL, NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('39', '3', '销售部', '10000204', NULL, NULL, NULL, NULL, 4, '2021-05-24 22:55:21', NULL, NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('40', '3', '财务部', '10000205', NULL, NULL, NULL, NULL, 5, '2021-05-24 22:55:21', NULL, NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('41', '3', '运营部', '10000206', NULL, NULL, NULL, NULL, 6, '2021-05-24 22:55:21', NULL, NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('42', '3', '市场部', '10000207', NULL, NULL, NULL, NULL, 7, '2021-05-24 22:55:22', NULL, NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('43', '3', '领导班子', '10000208', NULL, NULL, NULL, NULL, 8, '2021-05-24 22:55:22', NULL, NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('44', '4', '人资部', '10000301', NULL, NULL, NULL, NULL, 1, '2021-05-24 22:55:22', NULL, NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('45', '4', '技术部', '10000302', NULL, NULL, NULL, NULL, 2, '2021-05-24 22:55:22', NULL, NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('46', '4', '产品部', '10000303', NULL, NULL, NULL, NULL, 3, '2021-05-24 22:55:22', NULL, NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('47', '4', '销售部', '10000304', NULL, NULL, NULL, NULL, 4, '2021-05-24 22:55:22', NULL, NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('48', '4', '财务部', '10000305', NULL, NULL, NULL, NULL, 5, '2021-05-24 22:55:22', NULL, NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('49', '4', '运营部', '10000306', NULL, NULL, NULL, NULL, 6, '2021-05-24 22:55:22', NULL, NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('50', '4', '市场部', '10000307', NULL, NULL, NULL, NULL, 7, '2021-05-24 22:55:22', NULL, NULL, NULL, 1, 0);
INSERT INTO `tbl_org_department` VALUES ('51', '4', '领导班子', '10000308', NULL, NULL, NULL, NULL, 8, '2021-05-24 22:55:22', NULL, NULL, NULL, 1, 0);

-- ----------------------------
-- Table structure for tbl_org_job_grade
-- ----------------------------
DROP TABLE IF EXISTS `tbl_org_job_grade`;
CREATE TABLE `tbl_org_job_grade`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ID',
  `code` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编码',
  `type_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型ID',
  `type_code` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类别编码',
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `order_no` int(11) NULL DEFAULT NULL COMMENT '排序号',
  `creator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `del_flag` int(11) NOT NULL DEFAULT 1 COMMENT '1：存在  0： 删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type_code_index`(`type_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_org_job_grade
-- ----------------------------
INSERT INTO `tbl_org_job_grade` VALUES ('05207341ef00c3f0a49fe06bc51ca44c', 'M5', 'fe9f0d1728537c8465bbe223e8bcd356', 'M', '副总经理级', 5, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('099a3cdaf0e627cf0a1c096912cd6821', 'H7', '2e8f365895e50228245db19ed8b94f85', 'H', '初级技工', 7, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('11bdb7bcca59deb1b6ce48f9be7ed073', 'P5', 'bd1bdd23b842a7bc40cf76930d00082d', 'P', '总监', 5, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('2f42ec390821a7c6d2aa7a95b2659240', 'H6', '2e8f365895e50228245db19ed8b94f85', 'H', '中级技工', 6, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('30a8685c52a6a9e36a26f77c43b839ea', 'S1', '2e3b8dde1738fb4a0dc5a381a5c4ca4c', 'S', '营销专家', 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('3dd162448dec22424ae02e771a290e71', 'P4', 'bd1bdd23b842a7bc40cf76930d00082d', 'P', '高级总监', 4, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('3eb11db9b582e92c293344511e5c45b5', 'P12', 'bd1bdd23b842a7bc40cf76930d00082d', 'P', '专员', 12, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('3f21349b4f948eadda48d30f95121f7c', 'M1', 'fe9f0d1728537c8465bbe223e8bcd356', 'M', '总裁级', 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('41bad7a8e40b0c62b64455cd1c253da1', 'M2', 'fe9f0d1728537c8465bbe223e8bcd356', 'M', '副总裁级', 2, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('52fd42df77b750bbc7359f7d34d09863', 'P9', 'bd1bdd23b842a7bc40cf76930d00082d', 'P', '经理', 9, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('5346c6c2e0251afe959e850bf1217aff', 'P3', 'bd1bdd23b842a7bc40cf76930d00082d', 'P', '资深总监', 3, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('573b9ece73cf7f051efa185ab4bae228', 'H2', '2e8f365895e50228245db19ed8b94f85', 'H', '高级技师', 2, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('5ad4a29d4434e500be6fc4c5c0733d81', 'S4', '2e3b8dde1738fb4a0dc5a381a5c4ca4c', 'S', '营销副总监', 4, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('610ee95625d87573a776aa1285961bbb', 'P10', 'bd1bdd23b842a7bc40cf76930d00082d', 'P', '副经理', 10, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('76ebdf53b8a907bd3eee7c79789d6e6d', 'S2', '2e3b8dde1738fb4a0dc5a381a5c4ca4c', 'S', '营销高级总监', 2, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('888f4b4bb6f2306ca569d66c6e5e415b', 'S7', '2e3b8dde1738fb4a0dc5a381a5c4ca4c', 'S', '营销副经理', 7, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('9071ec6ce0d4e12c5fc33e9646061c47', 'H1', '2e8f365895e50228245db19ed8b94f85', 'H', '资深技师', 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('92c0cf750ba4f8e18bdb21103f59b6e8', 'P8', 'bd1bdd23b842a7bc40cf76930d00082d', 'P', '高级经理', 8, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('95a6c1e96a35c3d98f662f7a09beefe9', 'H5', '2e8f365895e50228245db19ed8b94f85', 'H', '高级技工', 5, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('9c8fc5e6445ab5ff80e5bc4f91669eff', 'P6', 'bd1bdd23b842a7bc40cf76930d00082d', 'P', '副总监', 6, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('9fed2001aafccc0a378c66439cbdeb31', 'H3', '2e8f365895e50228245db19ed8b94f85', 'H', '中级技师', 3, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('a017b722431a602652b64d1e8021f3e3', 'M6', 'fe9f0d1728537c8465bbe223e8bcd356', 'M', '部长级', 6, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('a7afe7391c5419e3e480c9e1f2eda51b', 'S6', '2e3b8dde1738fb4a0dc5a381a5c4ca4c', 'S', '营销经理', 6, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('b872f9152cc41a815ac3788ec3fdc503', 'S5', '2e3b8dde1738fb4a0dc5a381a5c4ca4c', 'S', '营销高级经理', 5, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('b908b27a1b8adfd855ed75bf2ad3025c', 'M3', 'fe9f0d1728537c8465bbe223e8bcd356', 'M', '助理总裁级', 3, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('b917b69f978bc0696cc8bf7f6267fd2b', 'S8', '2e3b8dde1738fb4a0dc5a381a5c4ca4c', 'S', '营销员', 8, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('c7841eed348eb5a05420ebf383e59518', 'P7', 'bd1bdd23b842a7bc40cf76930d00082d', 'P', '资深经理', 7, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('cc56bbcd8d128a98f2570d39cb40bc36', 'M7', 'fe9f0d1728537c8465bbe223e8bcd356', 'M', '副部长级', 7, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('cfebdaf6c3305530c03c6ae13d1c65f3', 'S3', '2e3b8dde1738fb4a0dc5a381a5c4ca4c', 'S', '营销总监', 3, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('d3d1df9eeaddb5348ef4e6fdda268221', 'P1', 'bd1bdd23b842a7bc40cf76930d00082d', 'P', '资深专家', 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('e11c0b569c73beb01fc3f08db4399e40', 'P11', 'bd1bdd23b842a7bc40cf76930d00082d', 'P', '主管', 11, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('ec854aa9c2f0f966167f57f3bf20b310', 'H4', '2e8f365895e50228245db19ed8b94f85', 'H', '初级技师', 4, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('f10d506555045c798492eaa97e930288', 'H8', '2e8f365895e50228245db19ed8b94f85', 'H', '操作工', 8, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('f3aa9a6955342a16daa2eaf2bad2abd3', 'M4', 'fe9f0d1728537c8465bbe223e8bcd356', 'M', '总经理级', 4, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade` VALUES ('f3c147976a40e4d450c5d03aa2307ea3', 'P2', 'bd1bdd23b842a7bc40cf76930d00082d', 'P', '专家', 2, NULL, NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for tbl_org_job_grade_type
-- ----------------------------
DROP TABLE IF EXISTS `tbl_org_job_grade_type`;
CREATE TABLE `tbl_org_job_grade_type`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ID',
  `code` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '编码',
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `company_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司ID',
  `status` int(11) NULL DEFAULT 1 COMMENT '1启用  0未启用',
  `order_no` int(11) NULL DEFAULT NULL COMMENT '排序号',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `creator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `del_flag` int(11) NOT NULL DEFAULT 1 COMMENT '1：存在  0： 删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `company_id_index`(`company_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '职级分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_org_job_grade_type
-- ----------------------------
INSERT INTO `tbl_org_job_grade_type` VALUES ('2e3b8dde1738fb4a0dc5a381a5c4ca4c', 'S', '销售类', NULL, 1, 3, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade_type` VALUES ('2e8f365895e50228245db19ed8b94f85', 'H', '工勤类', NULL, 1, 4, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade_type` VALUES ('bd1bdd23b842a7bc40cf76930d00082d', 'P', '专业类', NULL, 1, 2, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_job_grade_type` VALUES ('fe9f0d1728537c8465bbe223e8bcd356', 'M', '管理类', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for tbl_org_personal
-- ----------------------------
DROP TABLE IF EXISTS `tbl_org_personal`;
CREATE TABLE `tbl_org_personal`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'ID',
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '工号',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '真实姓名',
  `position_code` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '岗位编码',
  `job_grade_code` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '职级编码',
  `leader_code` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '领导的工号',
  `head_img` longblob NULL COMMENT '人员头像',
  `mobile` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '邮箱',
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '公司id',
  `company_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '公司名称',
  `dept_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '部门id',
  `dept_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '部门名称',
  `status` int(2) NULL DEFAULT 1 COMMENT '状态（1：在职，0：离职）',
  `sex` int(2) NULL DEFAULT 1 COMMENT '性别1：男；2：女',
  `leave_date` date NULL DEFAULT NULL COMMENT '离职时间',
  `address` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '地址',
  `fax` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '传真',
  `dd_userid` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人',
  `del_flag` int(11) NULL DEFAULT 1 COMMENT '删除标识  0标识已删除   1标识未删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code_index`(`code`) USING BTREE,
  INDEX `company_id_index`(`company_id`) USING BTREE,
  INDEX `dept_id_index`(`dept_id`) USING BTREE,
  INDEX `leader_code_index`(`leader_code`) USING BTREE,
  INDEX `position_code_index`(`position_code`) USING BTREE,
  INDEX `job_grade_code_index`(`job_grade_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_org_personal
-- ----------------------------
INSERT INTO `tbl_org_personal` VALUES ('1', '10000', '易烊千玺', 'd282e38bee504965a2d5f033a602edbf', '3f21349b4f948eadda48d30f95121f7c', NULL, NULL, '18689203258', '463805737@qq.com', 'ba57f148c62ba5e214864bbc1684c2a5', 'abc', '25a434590d24e2a356308e3732b741f7', 'aaa', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-03 13:33:15', '10100', 1);
INSERT INTO `tbl_org_personal` VALUES ('10', '10009', '王俊凯', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '20', '人资部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('100', '10099', '白敬亭', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('11', '10010', '迪丽热巴', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '21', '技术部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('12', '10011', '朱一龙', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '21', '技术部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('13', '10012', '杨紫', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '21', '技术部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('14', '10013', '宋茜', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '21', '技术部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('15', '10014', '鹿晗', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '21', '技术部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('152d3ca3f8fdfbbe3414459ac71974fe', 'bbb', 'aaa', '60ca32c9c1cc461ca440ddf43198a63c', 'a017b722431a602652b64d1e8021f3e3', NULL, '', '13800138011', 'ccc@qqq.ddd', '3', '天津市石化', '36', '人资部', 1, 1, NULL, 'aaaaa', NULL, NULL, '2023-01-16 17:43:22', '10101', '2023-01-16 17:43:26', '10101', 1);
INSERT INTO `tbl_org_personal` VALUES ('16', '10015', '杨颖', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '21', '技术部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('17', '10016', '华晨宇', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '21', '技术部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('18', '10017', '刘昊然', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '21', '技术部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('19', '10018', '李现', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '21', '技术部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('2', '10001', '徐峥', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '20', '人资部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('20', '10019', '李佳琦', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '21', '技术部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('21', '10020', '刘涛', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '22', '产品部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('22', '10021', '饺子（杨宇）', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '22', '产品部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('23', '10022', '吴京', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '22', '产品部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('24', '10023', '胡歌', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '22', '产品部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('25', '10024', '孙俪', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '22', '产品部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('26', '10025', '王凯', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '22', '产品部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('27', '10026', '张伟丽', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '22', '产品部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('28', '10027', '沈腾', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '22', '产品部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('29', '10028', '刘诗诗', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '22', '产品部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('3', '10002', '周冬雨', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '20', '人资部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('30', '10029', '刘亦菲', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '22', '产品部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('31', '10030', '蔡徐坤', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '23', '销售部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('32', '10031', '张若昀', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '23', '销售部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('33', '10032', '王源', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '23', '销售部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('34', '10033', '邓伦', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '23', '销售部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('35', '10034', '井柏然', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '23', '销售部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('36', '10035', '黄景瑜', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '23', '销售部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('37', '10036', '黄子韬', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '23', '销售部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('38', '10037', '薇娅', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '23', '销售部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('39', '10038', '李宇春', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '23', '销售部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('4', '10003', '周杰伦', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '20', '人资部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('40', '10039', '陈伟霆', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '23', '销售部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('41', '10040', '王嘉尔', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '24', '财务部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('42', '10041', '周深', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '24', '财务部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('43', '10042', '李易峰', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '24', '财务部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('44', '10043', '杨洋', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '24', '财务部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('45', '10044', '宋威龙', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '24', '财务部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('46', '10045', '周震南', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '24', '财务部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('47', '10046', '吴磊', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '24', '财务部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('48', '10047', '黄轩', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '24', '财务部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('49', '10048', '张一山', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '24', '财务部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('5', '10004', '张艺兴', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '20', '人资部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('50', '10049', '罗晋', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '24', '财务部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('51', '10050', '唐嫣', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '25', '运营部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('52', '10051', '黄渤', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '25', '运营部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('53', '10052', '何炅', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '25', '运营部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('54', '10053', '古天乐', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '25', '运营部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('55', '10054', '佟丽娅', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '25', '运营部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('56', '10055', '魏大勋', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '25', '运营部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('57', '10056', '武磊', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '25', '运营部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('58', '10057', '甄子丹', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '25', '运营部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('59', '10058', '李荣浩', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '25', '运营部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('6', '10005', '杨幂', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '20', '人资部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('60', '10059', '马思纯', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '25', '运营部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('61', '10060', '雷佳音', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '26', '市场部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('62', '10061', '肖央', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '26', '市场部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('63', '10062', '靳东', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '26', '市场部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('64', '10063', '潘粤明', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '26', '市场部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('65', '10064', '周迅', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '26', '市场部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('66', '10065', '刘雯', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '26', '市场部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('67', '10066', '彭昱畅', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '26', '市场部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('68', '10067', '白宇', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '26', '市场部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('69', '10068', '许光汉', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '26', '市场部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('7', '10006', '赵丽颖', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '20', '人资部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('70', '10069', '倪妮', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '26', '市场部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('71', '10070', '关晓彤', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '27', '领导班子', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('72', '10071', '李沁', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '27', '领导班子', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('73', '10072', '欧阳娜娜', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '27', '领导班子', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('74', '10073', '春夏', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '27', '领导班子', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('75', '10074', '谢娜', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '27', '领导班子', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('76', '10075', '黄晓明', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '27', '领导班子', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('77', '10076', '张嘉译', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '27', '领导班子', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('78', '10077', '章子怡', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '27', '领导班子', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('79', '10078', '毛不易', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '27', '领导班子', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('7bf212c96225f2fc50b21c0b05538dc2', '10101', '测试账号', '38bc860adcdb4a388d37e122a9bf0517', 'cc56bbcd8d128a98f2570d39cb40bc36', NULL, '', '18689203258', '463805737@qq.com', '1', '中国石化', '21', '技术部', 1, 1, NULL, NULL, NULL, NULL, '2021-05-25 21:43:47', '0000001', NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('8', '10007', '吴亦凡', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '20', '人资部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('80', '10079', '杨超越', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '27', '领导班子', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('81', '10080', '张子枫', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('82', '10081', '郑爽', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('83', '10082', '陈飞宇', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('84', '10083', '鞠婧祎', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('85', '10084', '张杰', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('86', '10085', '钟楚曦', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('87', '10086', '秦昊', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('88', '10087', '郎朗', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('89', '10088', '李晨', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('9', '10008', '王一博', NULL, NULL, NULL, NULL, NULL, NULL, '1', '中国石化', '20', '人资部', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('90', '10089', '刘德华', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('91', '10090', '成龙', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('92', '10091', '景甜', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('93', '10092', '贾玲', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('94', '10093', '彭于晏', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('95', '10094', '郭富城', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('96', '10095', '王宝强', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('97', '10096', '邓超', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('98', '10097', '万茜', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('99', '10098', '郭麒麟', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_personal` VALUES ('9c52ed37ee014a5ccd56ad8fc7810978', '10100', '刘文军', '1a0eceeb20dd432ca4dec32ab2537221', 'cc56bbcd8d128a98f2570d39cb40bc36', NULL, '', '18689203258', '463805737@qq.com', '1', '中国石化', '21', '技术部', 1, 1, NULL, NULL, NULL, NULL, '2021-05-25 21:41:53', '0000001', NULL, NULL, 1);

-- ----------------------------
-- Table structure for tbl_org_personal_role
-- ----------------------------
DROP TABLE IF EXISTS `tbl_org_personal_role`;
CREATE TABLE `tbl_org_personal_role`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `personal_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户id',
  `personal_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户工号',
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '角色id',
  `end_date` date NULL DEFAULT NULL COMMENT '截止日期',
  `valid_month` int(11) NULL DEFAULT NULL COMMENT '有效期',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `creator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人',
  `del_flag` int(11) NULL DEFAULT 1 COMMENT '删除标识0：删除1：存在',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `personal_id_index`(`personal_id`) USING BTREE,
  INDEX `personal_code_index`(`personal_code`) USING BTREE,
  INDEX `role_id_index`(`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_org_personal_role
-- ----------------------------
INSERT INTO `tbl_org_personal_role` VALUES ('124627c19101dd1e32cb82bfc3f86058', '5', '10004', '1', NULL, 0, '2023-01-16 17:44:29', '10101', '2023-01-16 17:44:29', '10101', 1);
INSERT INTO `tbl_org_personal_role` VALUES ('29121c91f07586ceae999bbade31aabf', '1', '10000', '1', NULL, 0, '2023-01-16 17:44:29', '10101', '2023-01-16 17:44:29', '10101', 1);
INSERT INTO `tbl_org_personal_role` VALUES ('43539d531c3f1221ef208b08225d3d0f', '6', '10005', '1', NULL, 0, '2023-01-16 17:44:29', '10101', '2023-01-16 17:44:29', '10101', 1);
INSERT INTO `tbl_org_personal_role` VALUES ('6fcec0f4d5fdf67d3781a7287e7bdb4c', '3', '10002', '3', NULL, 0, '2021-05-25 21:31:10', '0000001', '2021-05-25 21:31:10', '0000001', 1);
INSERT INTO `tbl_org_personal_role` VALUES ('725218b45aae8bdcfbb50bccfdf93f08', '2', '10001', '1', NULL, 0, '2023-01-16 17:44:29', '10101', '2023-01-16 17:44:29', '10101', 1);
INSERT INTO `tbl_org_personal_role` VALUES ('83047549ad2f88996a868b76580ba12b', '4', '10003', '4', NULL, 0, '2021-05-25 21:31:20', '0000001', '2021-05-25 21:31:20', '0000001', 1);
INSERT INTO `tbl_org_personal_role` VALUES ('a74a07e43906cd00717680fd41978e3d', '2', '10001', '2', NULL, 0, '2021-05-25 21:30:59', '0000001', '2021-05-25 21:30:59', '0000001', 1);
INSERT INTO `tbl_org_personal_role` VALUES ('ba1b8ee4fec2e878803cd78649903dc8', '3', '10002', '1', NULL, 0, '2023-01-16 17:44:29', '10101', '2023-01-16 17:44:29', '10101', 1);
INSERT INTO `tbl_org_personal_role` VALUES ('ee67885bf506f9e78f50edc89287877c', '5', '10004', '5', NULL, 0, '2021-05-25 21:31:26', '0000001', '2021-05-25 21:31:26', '0000001', 1);

-- ----------------------------
-- Table structure for tbl_org_position_info
-- ----------------------------
DROP TABLE IF EXISTS `tbl_org_position_info`;
CREATE TABLE `tbl_org_position_info`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ID',
  `code` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编码',
  `position_seq_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '岗位序列ID',
  `position_seq_code` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '岗位序列编码',
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '岗位名称',
  `order_no` int(11) NULL DEFAULT NULL COMMENT '排序编号',
  `status` int(11) NULL DEFAULT 1 COMMENT '状态1启用；0停用',
  `superior_code` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '上级编码',
  `start_date` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '成立日期',
  `creator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `del_flag` int(11) NOT NULL DEFAULT 1 COMMENT '1：存在  0： 删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_org_position_info
-- ----------------------------
INSERT INTO `tbl_org_position_info` VALUES ('0007781513bf44fb894f9edf2c644c7f', '10000020', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '室内设计专家', 20, 1, NULL, '2021-05-24 21:07:31', 'system', '2021-05-24 21:07:31', 'system', '2021-05-24 21:07:31', 1);
INSERT INTO `tbl_org_position_info` VALUES ('011c1a8ecd4c47288a024af395cceddc', '10000011', '1cc436d26e194f8c887eeb2fdc5f4e6a', '10000009', '供方管理专家', 11, 1, NULL, '2021-05-24 21:14:48', 'system', '2021-05-24 21:14:48', 'system', '2021-05-24 21:14:48', 1);
INSERT INTO `tbl_org_position_info` VALUES ('01864b5e353f44579174de2a0343776c', '10000010', '8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', 'Android开发专家', 10, 1, NULL, '2021-05-24 21:01:27', 'system', '2021-05-24 21:01:27', 'system', '2021-05-24 21:01:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('02fe44b96ce44eb2a936f5f496245c48', '10000007', '914d203cf70e45b5863c7ba603b99c76', '10000004', '人资行政专家', 7, 1, NULL, '2021-05-24 21:09:46', 'system', '2021-05-24 21:09:46', 'system', '2021-05-24 21:09:46', 1);
INSERT INTO `tbl_org_position_info` VALUES ('03057682dbc3462d9e427934b4340c6c', '10000044', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '招商副总监', 44, 1, NULL, '2021-05-24 21:18:29', 'system', '2021-05-24 21:18:29', 'system', '2021-05-24 21:18:29', 1);
INSERT INTO `tbl_org_position_info` VALUES ('033321e5f97e4ccfa1d3f6d142b00f53', '10000030', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '金融保险副总监', 30, 1, NULL, '2021-05-24 21:11:14', 'system', '2021-05-24 21:11:14', 'system', '2021-05-24 21:11:14', 1);
INSERT INTO `tbl_org_position_info` VALUES ('048850a9494a44e7a7e9de7ae2de20ee', '10000025', '914d203cf70e45b5863c7ba603b99c76', '10000004', '员工关系总监', 25, 1, NULL, '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('0505fbd5904449d9a8c375398a13b92a', '10000026', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '市场研究资深总监', 26, 1, NULL, '2021-05-24 21:07:32', 'system', '2021-05-24 21:07:32', 'system', '2021-05-24 21:07:32', 1);
INSERT INTO `tbl_org_position_info` VALUES ('065aced73c644dadbc234e6c89cea5b2', '10000014', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '建筑设计专家', 14, 1, NULL, '2021-05-24 21:07:31', 'system', '2021-05-24 21:07:31', 'system', '2021-05-24 21:07:31', 1);
INSERT INTO `tbl_org_position_info` VALUES ('07fec4b9ab12446e98b05ad823df6b1b', '10000018', '9921ed1abfbf8f29c216975aaa3f81a3', '10000018', '助理校长', 18, 1, NULL, '2021-05-24 20:57:50', 'system', '2021-05-24 20:57:50', 'system', '2021-05-24 20:57:50', 1);
INSERT INTO `tbl_org_position_info` VALUES ('094e7b0a03884d4e8bae4d4c71596f1f', '10000025', '1cc436d26e194f8c887eeb2fdc5f4e6a', '10000009', '招标总监', 25, 1, NULL, '2021-05-24 21:14:50', 'system', '2021-05-24 21:14:50', 'system', '2021-05-24 21:14:50', 1);
INSERT INTO `tbl_org_position_info` VALUES ('0a35f26dd77043de8d9a39e7a41e2e5c', '10000035', '1b62cf798dc0450991a273bcde4e249d', '10000013', '系统维护经理', 35, 1, NULL, '2021-05-24 21:16:49', 'system', '2021-05-24 21:16:49', 'system', '2021-05-24 21:16:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('0a4497bfb5ea4e0b8af2e048619a5f75', '10000013', '1b62cf798dc0450991a273bcde4e249d', '10000013', '运维高级总监', 13, 1, NULL, '2021-05-24 21:16:46', 'system', '2021-05-24 21:16:46', 'system', '2021-05-24 21:16:46', 1);
INSERT INTO `tbl_org_position_info` VALUES ('0a582eedff314451813d1faae0cc7275', '10000033', '914d203cf70e45b5863c7ba603b99c76', '10000004', '组织发展资深经理', 33, 1, NULL, '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('0b10dc42e3d745be8679eb53507dfde9', '10000019', '9921ed1abfbf8f29c216975aaa3f81a3', '10000018', '处长', 19, 1, NULL, '2021-05-24 20:57:50', 'system', '2021-05-24 20:57:50', 'system', '2021-05-24 20:57:50', 1);
INSERT INTO `tbl_org_position_info` VALUES ('0bc3dcd3b3074ebb8297080ce845cb7a', '10000008', '914d203cf70e45b5863c7ba603b99c76', '10000004', '组织发展专家', 8, 1, NULL, '2021-05-24 21:09:46', 'system', '2021-05-24 21:09:46', 'system', '2021-05-24 21:09:46', 1);
INSERT INTO `tbl_org_position_info` VALUES ('0e45684bc68841139b9029a8e6e9659d', '10000025', '1b62cf798dc0450991a273bcde4e249d', '10000013', '运维资深经理', 25, 1, NULL, '2021-05-24 21:16:48', 'system', '2021-05-24 21:16:48', 'system', '2021-05-24 21:16:48', 1);
INSERT INTO `tbl_org_position_info` VALUES ('0ece7c74499343b4b3da1d2f9daac87d', '10000005', '8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', 'UI设计资深专家', 5, 1, NULL, '2021-05-24 21:01:27', 'system', '2021-05-24 21:01:27', 'system', '2021-05-24 21:01:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('109264994d9b48b4a566fb730f771f86', '10000027', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '财务副总监', 27, 1, NULL, '2021-05-24 21:11:14', 'system', '2021-05-24 21:11:14', 'system', '2021-05-24 21:11:14', 1);
INSERT INTO `tbl_org_position_info` VALUES ('109f316eea40415bb8423fbdc2db8107', '10000017', '9921ed1abfbf8f29c216975aaa3f81a3', '10000018', '副校长', 17, 1, NULL, '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('10ba1ddacd4d49119a6b877ebb66a2b1', '10000010', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '核算资深总监', 10, 1, NULL, '2021-05-24 21:11:12', 'system', '2021-05-24 21:11:12', 'system', '2021-05-24 21:11:12', 1);
INSERT INTO `tbl_org_position_info` VALUES ('115cf801ddf94888b17ea0f1d98b7558', '10000015', '9921ed1abfbf8f29c216975aaa3f81a3', '10000018', '副总经理', 15, 1, NULL, '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('15ba874578b2499681c7ca6b108141e6', '10000013', '1cc436d26e194f8c887eeb2fdc5f4e6a', '10000009', '招标资深总监', 13, 1, NULL, '2021-05-24 21:14:48', 'system', '2021-05-24 21:14:48', 'system', '2021-05-24 21:14:48', 1);
INSERT INTO `tbl_org_position_info` VALUES ('15ffff7cd718489fa92595216a70687b', '10000002', '914d203cf70e45b5863c7ba603b99c76', '10000004', '人资行政资深专家', 2, 1, NULL, '2021-05-24 21:09:45', 'system', '2021-05-24 21:09:45', 'system', '2021-05-24 21:09:45', 1);
INSERT INTO `tbl_org_position_info` VALUES ('160de427d42e40e1b365c7d0167cda14', '10000005', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '渠道专家', 5, 1, NULL, '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('169d7bbe8524497ab7db8b634942f722', '10000017', '914d203cf70e45b5863c7ba603b99c76', '10000004', '人资行政高级总监', 17, 1, NULL, '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('18cb29b614c34be5904c8799973193de', '10000033', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '室内设计资深总监', 33, 1, NULL, '2021-05-24 21:07:32', 'system', '2021-05-24 21:07:32', 'system', '2021-05-24 21:07:32', 1);
INSERT INTO `tbl_org_position_info` VALUES ('197b0e12e483497caff5fc645a046305', '10000011', '1b62cf798dc0450991a273bcde4e249d', '10000013', '弱电资深总监', 11, 1, NULL, '2021-05-24 21:16:46', 'system', '2021-05-24 21:16:46', 'system', '2021-05-24 21:16:46', 1);
INSERT INTO `tbl_org_position_info` VALUES ('1a0eceeb20dd432ca4dec32ab2537221', '10000004', '8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', 'Java开发资深专家', 4, 1, NULL, '2021-05-24 21:01:27', 'system', '2021-05-24 21:01:27', 'system', '2021-05-24 21:01:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('1a5afefbdd5c4f1db038b8a7c0b8a802', '10000005', '1b62cf798dc0450991a273bcde4e249d', '10000013', '运维专家', 5, 1, NULL, '2021-05-24 21:16:46', 'system', '2021-05-24 21:16:46', 'system', '2021-05-24 21:16:46', 1);
INSERT INTO `tbl_org_position_info` VALUES ('1e6c545be30f42eb9c2fbda807c00508', '10000028', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '结构设计资深总监', 28, 1, NULL, '2021-05-24 21:07:32', 'system', '2021-05-24 21:07:32', 'system', '2021-05-24 21:07:32', 1);
INSERT INTO `tbl_org_position_info` VALUES ('1e9104a7f48946b0b5f8b28785186095', '10000043', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '费用高级经理', 43, 1, NULL, '2021-05-24 21:11:15', 'system', '2021-05-24 21:11:15', 'system', '2021-05-24 21:11:15', 1);
INSERT INTO `tbl_org_position_info` VALUES ('1f87bd58051e40499744d1ea5abd8977', '10000023', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '资金总监', 23, 1, NULL, '2021-05-24 21:11:13', 'system', '2021-05-24 21:11:13', 'system', '2021-05-24 21:11:13', 1);
INSERT INTO `tbl_org_position_info` VALUES ('21d08595602b4609b55b1d18a2a19243', '10000002', '1b62cf798dc0450991a273bcde4e249d', '10000013', '弱电资深专家', 2, 1, NULL, '2021-05-24 21:16:45', 'system', '2021-05-24 21:16:45', 'system', '2021-05-24 21:16:45', 1);
INSERT INTO `tbl_org_position_info` VALUES ('230d08a960cb4825ac252310260f5d82', '10000019', '1cc436d26e194f8c887eeb2fdc5f4e6a', '10000009', '招标高级总监', 19, 1, NULL, '2021-05-24 21:14:49', 'system', '2021-05-24 21:14:49', 'system', '2021-05-24 21:14:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('24ca65919f8a4080a856df903d643c45', '10000025', '9921ed1abfbf8f29c216975aaa3f81a3', '10000018', '党委书记', 25, 1, NULL, '2021-05-24 20:57:50', 'system', '2021-05-24 20:57:50', 'system', '2021-05-24 20:57:50', 1);
INSERT INTO `tbl_org_position_info` VALUES ('251677e2eebe49a49e9123e7ccc13afd', '10000008', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '园林设计资深专家', 8, 1, NULL, '2021-05-24 21:07:31', 'system', '2021-05-24 21:07:31', 'system', '2021-05-24 21:07:31', 1);
INSERT INTO `tbl_org_position_info` VALUES ('256463abcfee4b0b8bf2871b627b3407', '10000025', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '营销总监', 25, 1, NULL, '2021-05-24 21:18:28', 'system', '2021-05-24 21:18:28', 'system', '2021-05-24 21:18:28', 1);
INSERT INTO `tbl_org_position_info` VALUES ('26e16630e39741f89440e246b0739b3b', '10000034', '1b62cf798dc0450991a273bcde4e249d', '10000013', '弱电经理', 34, 1, NULL, '2021-05-24 21:16:49', 'system', '2021-05-24 21:16:49', 'system', '2021-05-24 21:16:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('2870cf4123954b9e814b51919d3946df', '10000005', '1cc436d26e194f8c887eeb2fdc5f4e6a', '10000009', '供方管理资深专家', 5, 1, NULL, '2021-05-24 21:14:47', 'system', '2021-05-24 21:14:47', 'system', '2021-05-24 21:14:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('2a68e1ffe1084118b15347eed63360cf', '10000001', '1cc436d26e194f8c887eeb2fdc5f4e6a', '10000009', '招标资深专家', 1, 1, NULL, '2021-05-24 21:14:47', 'system', '2021-05-24 21:14:47', 'system', '2021-05-24 21:14:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('2aaf4cc5a05e442bbd802f3b64e27301', '10000003', '1b62cf798dc0450991a273bcde4e249d', '10000013', '信息资深专家', 3, 1, NULL, '2021-05-24 21:16:46', 'system', '2021-05-24 21:16:46', 'system', '2021-05-24 21:16:46', 1);
INSERT INTO `tbl_org_position_info` VALUES ('2ab312deb6874f8da8789113e5b3466f', '10000017', '1cc436d26e194f8c887eeb2fdc5f4e6a', '10000009', '供方管理资深总监', 17, 1, NULL, '2021-05-24 21:14:49', 'system', '2021-05-24 21:14:49', 'system', '2021-05-24 21:14:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('2b5818d143e1492db89a5f3233bfc63e', '10000034', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '费用资深经理', 34, 1, NULL, '2021-05-24 21:11:14', 'system', '2021-05-24 21:11:14', 'system', '2021-05-24 21:11:14', 1);
INSERT INTO `tbl_org_position_info` VALUES ('2d17f96dfcad4417af11df77845e8e1f', '10000042', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '置业副总监', 42, 1, NULL, '2021-05-24 21:18:29', 'system', '2021-05-24 21:18:29', 'system', '2021-05-24 21:18:29', 1);
INSERT INTO `tbl_org_position_info` VALUES ('2d4e84ead42240fdb9c58a9ff321b2e0', '10000011', '9921ed1abfbf8f29c216975aaa3f81a3', '10000018', '总经理', 11, 1, NULL, '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('2da597aef7ed416f9a17466cf36f0715', '10000032', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '园林设计资深总监', 32, 1, NULL, '2021-05-24 21:07:32', 'system', '2021-05-24 21:07:32', 'system', '2021-05-24 21:07:32', 1);
INSERT INTO `tbl_org_position_info` VALUES ('2e2cb654ccef43d5aadf29dab57330e6', '10000002', '8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', 'Android开发资深专家', 2, 1, NULL, '2021-05-24 21:01:27', 'system', '2021-05-24 21:01:27', 'system', '2021-05-24 21:01:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('2e795cac97a943698604498a603fda01', '10000019', '914d203cf70e45b5863c7ba603b99c76', '10000004', '薪酬福利高级总监', 19, 1, NULL, '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('2ef91e9c5a314f39859effb155806e61', '10000016', '8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', '架构专家', 16, 1, NULL, '2021-05-24 21:01:28', 'system', '2021-05-24 21:01:28', 'system', '2021-05-24 21:01:28', 1);
INSERT INTO `tbl_org_position_info` VALUES ('3112e3a41b3d4784bedd857108c8884e', '10000029', '914d203cf70e45b5863c7ba603b99c76', '10000004', '薪酬福利副总监', 29, 1, NULL, '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('33bb05f3cfad409c93f6f58cc5d84c50', '10000013', '9921ed1abfbf8f29c216975aaa3f81a3', '10000018', '副部长', 13, 1, NULL, '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('34f79084215240c396d74898f5e8247b', '10000013', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '金融推广资深总监', 13, 1, NULL, '2021-05-24 21:11:12', 'system', '2021-05-24 21:11:12', 'system', '2021-05-24 21:11:12', 1);
INSERT INTO `tbl_org_position_info` VALUES ('359ed628b20049cab9589f7b3f47948e', '10000012', '9921ed1abfbf8f29c216975aaa3f81a3', '10000018', '校长', 12, 1, NULL, '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('35ffe15d68234a469f3bc156f6b5c4d5', '10000017', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '方案设计专家', 17, 1, NULL, '2021-05-24 21:07:31', 'system', '2021-05-24 21:07:31', 'system', '2021-05-24 21:07:31', 1);
INSERT INTO `tbl_org_position_info` VALUES ('360842b3772b4a8c8e72943ee438b067', '10000012', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '金融保险资深总监', 12, 1, NULL, '2021-05-24 21:11:12', 'system', '2021-05-24 21:11:12', 'system', '2021-05-24 21:11:12', 1);
INSERT INTO `tbl_org_position_info` VALUES ('36362f8d56da4c70ae369c323b1810bb', '10000002', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '物流专家', 2, 1, NULL, '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('38bc860adcdb4a388d37e122a9bf0517', '10000012', '8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', 'Java开发专家', 12, 1, NULL, '2021-05-24 21:01:27', 'system', '2021-05-24 21:01:27', 'system', '2021-05-24 21:01:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('3946804bba844d2f9c460b3b4b89c98a', '10000011', '8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', 'ios开发专家', 11, 1, NULL, '2021-05-24 21:01:27', 'system', '2021-05-24 21:01:27', 'system', '2021-05-24 21:01:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('39d50e4e18484505a25937e50b5d90a8', '10000013', '914d203cf70e45b5863c7ba603b99c76', '10000004', '组织发展资深总监', 13, 1, NULL, '2021-05-24 21:09:46', 'system', '2021-05-24 21:09:46', 'system', '2021-05-24 21:09:46', 1);
INSERT INTO `tbl_org_position_info` VALUES ('3a4042b3ff4e4e02abbfe42c1bf3093c', '10000003', '8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', 'ios开发资深专家', 3, 1, NULL, '2021-05-24 21:01:27', 'system', '2021-05-24 21:01:27', 'system', '2021-05-24 21:01:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('3a55c9428d6443819a8a4346485fd3e5', '10000027', '8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', 'Java开发总监', 27, 1, NULL, '2021-05-24 21:01:29', 'system', '2021-05-24 21:01:29', 'system', '2021-05-24 21:01:29', 1);
INSERT INTO `tbl_org_position_info` VALUES ('3bfb401c0e5c48bc9079fbe8015285c3', '10000019', '8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', '架构师', 19, 1, NULL, '2021-05-24 21:01:28', 'system', '2021-05-24 21:01:28', 'system', '2021-05-24 21:01:28', 1);
INSERT INTO `tbl_org_position_info` VALUES ('3ccf7256332a41fdbac4c932f0a3e81d', '10000036', '1b62cf798dc0450991a273bcde4e249d', '10000013', '信息经理', 36, 1, NULL, '2021-05-24 21:16:49', 'system', '2021-05-24 21:16:49', 'system', '2021-05-24 21:16:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('3de9343301734a98b9209808c6601ef6', '10000029', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '渠道总监', 29, 1, NULL, '2021-05-24 21:18:28', 'system', '2021-05-24 21:18:28', 'system', '2021-05-24 21:18:28', 1);
INSERT INTO `tbl_org_position_info` VALUES ('3e1604d71e0c49418bb64cbbd9968d81', '10000042', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '核算高级经理', 42, 1, NULL, '2021-05-24 21:11:15', 'system', '2021-05-24 21:11:15', 'system', '2021-05-24 21:11:15', 1);
INSERT INTO `tbl_org_position_info` VALUES ('3e944c7ca986406b892a955295dfd2ac', '10000024', '9921ed1abfbf8f29c216975aaa3f81a3', '10000018', '项目副经理', 24, 1, NULL, '2021-05-24 20:57:50', 'system', '2021-05-24 20:57:50', 'system', '2021-05-24 20:57:50', 1);
INSERT INTO `tbl_org_position_info` VALUES ('3f9d5d98f74a4cd2b9f2bb53f9d1e666', '10000007', '1cc436d26e194f8c887eeb2fdc5f4e6a', '10000009', '招标专家', 7, 1, NULL, '2021-05-24 21:14:48', 'system', '2021-05-24 21:14:48', 'system', '2021-05-24 21:14:48', 1);
INSERT INTO `tbl_org_position_info` VALUES ('3feab2216c8f4a45ada30c26d69da6ae', '10000015', '1b62cf798dc0450991a273bcde4e249d', '10000013', '信息高级总监', 15, 1, NULL, '2021-05-24 21:16:46', 'system', '2021-05-24 21:16:46', 'system', '2021-05-24 21:16:46', 1);
INSERT INTO `tbl_org_position_info` VALUES ('4022b8127c4941c59f351d4cd191597c', '10000035', '914d203cf70e45b5863c7ba603b99c76', '10000004', '员工关系资深经理', 35, 1, NULL, '2021-05-24 21:09:48', 'system', '2021-05-24 21:09:48', 'system', '2021-05-24 21:09:48', 1);
INSERT INTO `tbl_org_position_info` VALUES ('41df4111340c4baabd850f6f8912b46e', '10000003', '1cc436d26e194f8c887eeb2fdc5f4e6a', '10000009', '合约管理资深专家', 3, 1, NULL, '2021-05-24 21:14:47', 'system', '2021-05-24 21:14:47', 'system', '2021-05-24 21:14:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('428395b3884f414fb5b778eaeb15273a', '10000001', '1b62cf798dc0450991a273bcde4e249d', '10000013', '运维资深专家', 1, 1, NULL, '2021-05-24 21:16:45', 'system', '2021-05-24 21:16:45', 'system', '2021-05-24 21:16:45', 1);
INSERT INTO `tbl_org_position_info` VALUES ('4294e2d123004d74b6ba159b231eaf49', '10000009', '9921ed1abfbf8f29c216975aaa3f81a3', '10000018', 'CX0', 9, 1, NULL, '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('44f98a40c13b49d7afd41335f3d99aea', '10000030', '8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', 'Android开发高级经理', 30, 1, NULL, '2021-05-24 21:01:29', 'system', '2021-05-24 21:01:29', 'system', '2021-05-24 21:01:29', 1);
INSERT INTO `tbl_org_position_info` VALUES ('45d03c5d524c4356923bc77b7f1422a2', '10000024', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '建筑设计师', 24, 1, NULL, '2021-05-24 21:07:32', 'system', '2021-05-24 21:07:32', 'system', '2021-05-24 21:07:32', 1);
INSERT INTO `tbl_org_position_info` VALUES ('46098d362a92408cbc5d9f7a39fdf251', '10000012', '914d203cf70e45b5863c7ba603b99c76', '10000004', '人资行政资深总监', 12, 1, NULL, '2021-05-24 21:09:46', 'system', '2021-05-24 21:09:46', 'system', '2021-05-24 21:09:46', 1);
INSERT INTO `tbl_org_position_info` VALUES ('477b5473ab5d4955b65891be12673b67', '10000020', '8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', 'Android开发资深总监', 20, 1, NULL, '2021-05-24 21:01:28', 'system', '2021-05-24 21:01:28', 'system', '2021-05-24 21:01:28', 1);
INSERT INTO `tbl_org_position_info` VALUES ('499a2e9b091842dc8bac1f5b5b414be3', '10000018', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '招商高级总监', 18, 1, NULL, '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('49dc6f600b4c47fa83d4d05589ee27ca', '10000009', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '服务专家', 9, 1, NULL, '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('4a55448a81cc466c90317c59749e59bb', '10000011', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '装修设计资深专家', 11, 1, NULL, '2021-05-24 21:07:31', 'system', '2021-05-24 21:07:31', 'system', '2021-05-24 21:07:31', 1);
INSERT INTO `tbl_org_position_info` VALUES ('4a677b2365df452f80a0d6d65d6aacbf', '10000030', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '招商总监', 30, 1, NULL, '2021-05-24 21:18:28', 'system', '2021-05-24 21:18:28', 'system', '2021-05-24 21:18:28', 1);
INSERT INTO `tbl_org_position_info` VALUES ('4bcebe904bca49ea93ea42778bd0a6ab', '10000027', '914d203cf70e45b5863c7ba603b99c76', '10000004', '人资行政副总监', 27, 1, NULL, '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('4d96815d5b114980b3b3a10d8a832cf0', '10000027', '9921ed1abfbf8f29c216975aaa3f81a3', '10000018', '党总支副书记', 27, 1, NULL, '2021-05-24 20:57:50', 'system', '2021-05-24 20:57:50', 'system', '2021-05-24 20:57:50', 1);
INSERT INTO `tbl_org_position_info` VALUES ('4ddb3e9181814deaaf19d5c3f6c044ea', '10000007', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '企划专家', 7, 1, NULL, '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('4de4b1e29053496995c32ebeaba63984', '10000029', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '电气设计资深总监', 29, 1, NULL, '2021-05-24 21:07:32', 'system', '2021-05-24 21:07:32', 'system', '2021-05-24 21:07:32', 1);
INSERT INTO `tbl_org_position_info` VALUES ('4dfdd38fe1aa4b889bef5503502ec478', '10000003', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '建筑设计资深专家', 3, 1, NULL, '2021-05-24 21:07:30', 'system', '2021-05-24 21:07:30', 'system', '2021-05-24 21:07:30', 1);
INSERT INTO `tbl_org_position_info` VALUES ('4f7a074db4144da1a8a0ef077d1e74f2', '10000037', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '融资资深经理', 37, 1, NULL, '2021-05-24 21:11:14', 'system', '2021-05-24 21:11:14', 'system', '2021-05-24 21:11:14', 1);
INSERT INTO `tbl_org_position_info` VALUES ('4fd471c52da347fb9b8db18fc5e7a902', '10000031', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '金融推广副总监', 31, 1, NULL, '2021-05-24 21:11:14', 'system', '2021-05-24 21:11:14', 'system', '2021-05-24 21:11:14', 1);
INSERT INTO `tbl_org_position_info` VALUES ('5150c951b463471aa65db534c902d59e', '10000012', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '美家专家', 12, 1, NULL, '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('5206320e04f548e5ae584c0564356a1c', '10000020', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '证券高级总监', 20, 1, NULL, '2021-05-24 21:11:13', 'system', '2021-05-24 21:11:13', 'system', '2021-05-24 21:11:13', 1);
INSERT INTO `tbl_org_position_info` VALUES ('530b34af850043f79f3d742237f82efb', '10000009', '8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', 'net开发专家', 9, 1, NULL, '2021-05-24 21:01:27', 'system', '2021-05-24 21:01:27', 'system', '2021-05-24 21:01:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('54d609793ad64ed69da0ce8633808e3a', '10000038', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '按揭资深经理', 38, 1, NULL, '2021-05-24 21:11:14', 'system', '2021-05-24 21:11:14', 'system', '2021-05-24 21:11:14', 1);
INSERT INTO `tbl_org_position_info` VALUES ('54e1575b407b4a2ba0870197e644d7a9', '10000034', '914d203cf70e45b5863c7ba603b99c76', '10000004', '薪酬福利资深经理', 34, 1, NULL, '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('55cacc368789440aab849c3f9a06a30f', '10000032', '1b62cf798dc0450991a273bcde4e249d', '10000013', 'IT高级经理', 32, 1, NULL, '2021-05-24 21:16:48', 'system', '2021-05-24 21:16:48', 'system', '2021-05-24 21:16:48', 1);
INSERT INTO `tbl_org_position_info` VALUES ('55d9cd165efb4aee8c1215079095be2a', '10000035', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '装修设计资深总监', 35, 1, NULL, '2021-05-24 21:07:32', 'system', '2021-05-24 21:07:32', 'system', '2021-05-24 21:07:32', 1);
INSERT INTO `tbl_org_position_info` VALUES ('5622d808909e4525ab328a98fa63274d', '10000006', '1b62cf798dc0450991a273bcde4e249d', '10000013', '弱电专家', 6, 1, NULL, '2021-05-24 21:16:46', 'system', '2021-05-24 21:16:46', 'system', '2021-05-24 21:16:46', 1);
INSERT INTO `tbl_org_position_info` VALUES ('5672e1ed09e546b189c495903489d74e', '10000036', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '外拓总监', 36, 1, NULL, '2021-05-24 21:18:29', 'system', '2021-05-24 21:18:29', 'system', '2021-05-24 21:18:29', 1);
INSERT INTO `tbl_org_position_info` VALUES ('56a439074a164259a4c6b439df243c11', '10000019', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '金融推广高级总监', 19, 1, NULL, '2021-05-24 21:11:13', 'system', '2021-05-24 21:11:13', 'system', '2021-05-24 21:11:13', 1);
INSERT INTO `tbl_org_position_info` VALUES ('56ed278b248d4219acd9b85216ecbacb', '10000027', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '建筑设计资深总监', 27, 1, NULL, '2021-05-24 21:07:32', 'system', '2021-05-24 21:07:32', 'system', '2021-05-24 21:07:32', 1);
INSERT INTO `tbl_org_position_info` VALUES ('57c5d38cc8364aafb5e43189bdc73b99', '10000035', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '成本资深经理', 35, 1, NULL, '2021-05-24 21:11:14', 'system', '2021-05-24 21:11:14', 'system', '2021-05-24 21:11:14', 1);
INSERT INTO `tbl_org_position_info` VALUES ('584dca1d72b24afea447e8a18b9d17cf', '10000029', '1b62cf798dc0450991a273bcde4e249d', '10000013', '运维高级经理', 29, 1, NULL, '2021-05-24 21:16:48', 'system', '2021-05-24 21:16:48', 'system', '2021-05-24 21:16:48', 1);
INSERT INTO `tbl_org_position_info` VALUES ('58eb4932e7574a7494025d7a48812566', '10000041', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '证券资深经理', 41, 1, NULL, '2021-05-24 21:11:14', 'system', '2021-05-24 21:11:14', 'system', '2021-05-24 21:11:14', 1);
INSERT INTO `tbl_org_position_info` VALUES ('5a1d5f98556c4297a2372df36ee96caf', '10000026', '9921ed1abfbf8f29c216975aaa3f81a3', '10000018', '工会主席', 26, 1, NULL, '2021-05-24 20:57:50', 'system', '2021-05-24 20:57:50', 'system', '2021-05-24 20:57:50', 1);
INSERT INTO `tbl_org_position_info` VALUES ('5aee56ff9d44438ca3038538cad84714', '10000010', '1b62cf798dc0450991a273bcde4e249d', '10000013', '信息资深总监', 10, 1, NULL, '2021-05-24 21:16:46', 'system', '2021-05-24 21:16:46', 'system', '2021-05-24 21:16:46', 1);
INSERT INTO `tbl_org_position_info` VALUES ('5b0958dae9eb45dd9e506b689430a817', '10000008', '9921ed1abfbf8f29c216975aaa3f81a3', '10000018', '主任', 8, 1, NULL, '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('5c3947d7a118416fbeed4b42c11fa335', '10000009', '1b62cf798dc0450991a273bcde4e249d', '10000013', '运维资深总监', 9, 1, NULL, '2021-05-24 21:16:46', 'system', '2021-05-24 21:16:46', 'system', '2021-05-24 21:16:46', 1);
INSERT INTO `tbl_org_position_info` VALUES ('5d28ac8ed1e5469e853ddeb86b794672', '10000009', '914d203cf70e45b5863c7ba603b99c76', '10000004', '薪酬福利专家', 9, 1, NULL, '2021-05-24 21:09:46', 'system', '2021-05-24 21:09:46', 'system', '2021-05-24 21:09:46', 1);
INSERT INTO `tbl_org_position_info` VALUES ('5dd18c369e1947af847deb970e598348', '10000031', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '给排水设计资深总监', 31, 1, NULL, '2021-05-24 21:07:32', 'system', '2021-05-24 21:07:32', 'system', '2021-05-24 21:07:32', 1);
INSERT INTO `tbl_org_position_info` VALUES ('5f30035e587e467994568008dcb89897', '10000033', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '核算资深经理', 33, 1, NULL, '2021-05-24 21:11:14', 'system', '2021-05-24 21:11:14', 'system', '2021-05-24 21:11:14', 1);
INSERT INTO `tbl_org_position_info` VALUES ('60ca32c9c1cc461ca440ddf43198a63c', '10000041', '1b62cf798dc0450991a273bcde4e249d', '10000013', '信息副经理', 0, 1, NULL, '2021-05-24 21:16:49', 'system', '2021-05-24 21:16:49', 'system', '2021-05-24 21:16:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('6107ccce44e848719af3a688bab1d9a7', '10000003', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '大客户营销专家', 3, 1, NULL, '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('6123252604794654a476514baa97a268', '10000008', '1b62cf798dc0450991a273bcde4e249d', '10000013', 'IT专家', 8, 1, NULL, '2021-05-24 21:16:46', 'system', '2021-05-24 21:16:46', 'system', '2021-05-24 21:16:46', 1);
INSERT INTO `tbl_org_position_info` VALUES ('620f31ea0efa43478fccd64983dd61d9', '10000027', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '大客户营销总监', 27, 1, NULL, '2021-05-24 21:18:28', 'system', '2021-05-24 21:18:28', 'system', '2021-05-24 21:18:28', 1);
INSERT INTO `tbl_org_position_info` VALUES ('62795a7cee9e47a6ae15eef050e93efd', '10000013', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '营销高级总监', 13, 1, NULL, '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('641647dad4b74ae99bd7820235a1a2a9', '10000014', '1cc436d26e194f8c887eeb2fdc5f4e6a', '10000009', '材料采购资深总监', 14, 1, NULL, '2021-05-24 21:14:49', 'system', '2021-05-24 21:14:49', 'system', '2021-05-24 21:14:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('6549d018ae4b44bf8d10d6fbbbf80a99', '10000023', '914d203cf70e45b5863c7ba603b99c76', '10000004', '组织发展总监', 23, 1, NULL, '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('66c3f063b44e4d7db0ca26503f7b4a2c', '10000010', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '软装设计资深专家', 10, 1, NULL, '2021-05-24 21:07:31', 'system', '2021-05-24 21:07:31', 'system', '2021-05-24 21:07:31', 1);
INSERT INTO `tbl_org_position_info` VALUES ('6719d80ce8314d7c975336e50cecc435', '10000024', '1b62cf798dc0450991a273bcde4e249d', '10000013', 'IT副总监', 24, 1, NULL, '2021-05-24 21:16:47', 'system', '2021-05-24 21:16:47', 'system', '2021-05-24 21:16:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('682725ef67a743a88a2c1946ff273ee6', '10000041', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '大客户营销副总监', 41, 1, NULL, '2021-05-24 21:18:29', 'system', '2021-05-24 21:18:29', 'system', '2021-05-24 21:18:29', 1);
INSERT INTO `tbl_org_position_info` VALUES ('68e1485c165746e7ad347ad61e6cb2da', '10000023', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '外拓高级总监', 23, 1, NULL, '2021-05-24 21:18:28', 'system', '2021-05-24 21:18:28', 'system', '2021-05-24 21:18:28', 1);
INSERT INTO `tbl_org_position_info` VALUES ('68e5dc4ee1c34928bbac9676789a39fa', '10000031', '1b62cf798dc0450991a273bcde4e249d', '10000013', '信息高级经理', 31, 1, NULL, '2021-05-24 21:16:48', 'system', '2021-05-24 21:16:48', 'system', '2021-05-24 21:16:48', 1);
INSERT INTO `tbl_org_position_info` VALUES ('69aed04d2e114ea4ad48b7ce2e684177', '10000040', '1b62cf798dc0450991a273bcde4e249d', '10000013', '系统维护副经理', 40, 1, NULL, '2021-05-24 21:16:49', 'system', '2021-05-24 21:16:49', 'system', '2021-05-24 21:16:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('6ac8550290744537acca74822e8573fc', '10000047', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '按揭高级经理', 47, 1, NULL, '2021-05-24 21:11:15', 'system', '2021-05-24 21:11:15', 'system', '2021-05-24 21:11:15', 1);
INSERT INTO `tbl_org_position_info` VALUES ('6b99ab393a364f34b18bb4da7c764615', '10000014', '8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', '交互设计专家', 14, 1, NULL, '2021-05-24 21:01:27', 'system', '2021-05-24 21:01:27', 'system', '2021-05-24 21:01:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('6bec8c4c62084c388d04e098c18106fc', '10000020', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '销售高级总监', 20, 1, NULL, '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('6c6151233f9b4cb9b49f42d1a91bcb41', '10000015', '914d203cf70e45b5863c7ba603b99c76', '10000004', '员工关系资深总监', 15, 1, NULL, '2021-05-24 21:09:46', 'system', '2021-05-24 21:09:46', 'system', '2021-05-24 21:09:46', 1);
INSERT INTO `tbl_org_position_info` VALUES ('6c72e26c8d444200961432bbd6983ab3', '10000018', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '给排水设计专家', 18, 1, NULL, '2021-05-24 21:07:31', 'system', '2021-05-24 21:07:31', 'system', '2021-05-24 21:07:31', 1);
INSERT INTO `tbl_org_position_info` VALUES ('6d8b87c2dd4e460383975a2a48c78a6c', '10000017', '1b62cf798dc0450991a273bcde4e249d', '10000013', '运维总监', 17, 1, NULL, '2021-05-24 21:16:47', 'system', '2021-05-24 21:16:47', 'system', '2021-05-24 21:16:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('6d9438d2fe35472186524793dcfe105c', '10000011', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '外拓专家', 11, 1, NULL, '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('6e986acaba2e48b8ac2b02ca14872df3', '10000009', '1cc436d26e194f8c887eeb2fdc5f4e6a', '10000009', '合约管理专家', 9, 1, NULL, '2021-05-24 21:14:48', 'system', '2021-05-24 21:14:48', 'system', '2021-05-24 21:14:48', 1);
INSERT INTO `tbl_org_position_info` VALUES ('6efbef553caa46c8b870609b73efcfe1', '10000022', '1cc436d26e194f8c887eeb2fdc5f4e6a', '10000009', '工程合约高级总监', 22, 1, NULL, '2021-05-24 21:14:49', 'system', '2021-05-24 21:14:49', 'system', '2021-05-24 21:14:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('6fc7fe5590d64292b698a98deeb460ea', '10000035', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '电话营销总监', 35, 1, NULL, '2021-05-24 21:18:28', 'system', '2021-05-24 21:18:28', 'system', '2021-05-24 21:18:28', 1);
INSERT INTO `tbl_org_position_info` VALUES ('702fac924da14662b6f9fe6ddec7f23a', '10000002', '9921ed1abfbf8f29c216975aaa3f81a3', '10000018', '总裁', 2, 1, NULL, '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('713bfe870f27478bb2753312380b1253', '10000023', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '产品工程师', 23, 1, NULL, '2021-05-24 21:07:32', 'system', '2021-05-24 21:07:32', 'system', '2021-05-24 21:07:32', 1);
INSERT INTO `tbl_org_position_info` VALUES ('715c7c0833024f3ab82e544838bb169f', '10000033', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '大客户销售总监', 33, 1, NULL, '2021-05-24 21:18:28', 'system', '2021-05-24 21:18:28', 'system', '2021-05-24 21:18:28', 1);
INSERT INTO `tbl_org_position_info` VALUES ('71e402309967426b9b49b86b5366f3fb', '10000022', '914d203cf70e45b5863c7ba603b99c76', '10000004', '人资行政总监', 22, 1, NULL, '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('73af38e4a3ed40599259b4ccad40bf15', '10000006', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '招商专家', 6, 1, NULL, '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('7496f4be42de44649319731a07f59f12', '10000004', '1b62cf798dc0450991a273bcde4e249d', '10000013', 'IT资深专家', 4, 1, NULL, '2021-05-24 21:16:46', 'system', '2021-05-24 21:16:46', 'system', '2021-05-24 21:16:46', 1);
INSERT INTO `tbl_org_position_info` VALUES ('760be76507324c6b941ed35196e09aa1', '10000025', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '产品资深总监', 25, 1, NULL, '2021-05-24 21:07:32', 'system', '2021-05-24 21:07:32', 'system', '2021-05-24 21:07:32', 1);
INSERT INTO `tbl_org_position_info` VALUES ('76e4eaf649e748009e4386bf49e19da8', '10000030', '914d203cf70e45b5863c7ba603b99c76', '10000004', '员工关系副总监', 30, 1, NULL, '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('77dde458d0c746a29d3bfb24eecc0ea2', '10000020', '1b62cf798dc0450991a273bcde4e249d', '10000013', 'IT总监', 20, 1, NULL, '2021-05-24 21:16:47', 'system', '2021-05-24 21:16:47', 'system', '2021-05-24 21:16:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('7843078acf264490a933fadeeff78854', '10000027', '1cc436d26e194f8c887eeb2fdc5f4e6a', '10000009', '合约管理总监', 27, 1, NULL, '2021-05-24 21:14:50', 'system', '2021-05-24 21:14:50', 'system', '2021-05-24 21:14:50', 1);
INSERT INTO `tbl_org_position_info` VALUES ('7848303102894c97b64139c7fdb8a807', '10000019', '1b62cf798dc0450991a273bcde4e249d', '10000013', '信息总监', 19, 1, NULL, '2021-05-24 21:16:47', 'system', '2021-05-24 21:16:47', 'system', '2021-05-24 21:16:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('7ae369a99d934ca6b078f1af85ce93e0', '10000004', '914d203cf70e45b5863c7ba603b99c76', '10000004', '薪酬福利资深专家', 4, 1, NULL, '2021-05-24 21:09:45', 'system', '2021-05-24 21:09:45', 'system', '2021-05-24 21:09:45', 1);
INSERT INTO `tbl_org_position_info` VALUES ('7aeea880c0c845b0a3a55054c4b5c1f2', '10000014', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '证券资深总监', 14, 1, NULL, '2021-05-24 21:11:12', 'system', '2021-05-24 21:11:12', 'system', '2021-05-24 21:11:12', 1);
INSERT INTO `tbl_org_position_info` VALUES ('7c8e399175ea486688e28972d7c676d1', '10000017', '8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', 'net开发工程师', 17, 1, NULL, '2021-05-24 21:01:28', 'system', '2021-05-24 21:01:28', 'system', '2021-05-24 21:01:28', 1);
INSERT INTO `tbl_org_position_info` VALUES ('7fc1679b26b44b96bd949e3b2e2e7125', '10000007', '8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', '视觉设计资深专家', 7, 1, NULL, '2021-05-24 21:01:27', 'system', '2021-05-24 21:01:27', 'system', '2021-05-24 21:01:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('8240182afeb1453693df0fa88dc0bffd', '10000029', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '资金副总监', 29, 1, NULL, '2021-05-24 21:11:14', 'system', '2021-05-24 21:11:14', 'system', '2021-05-24 21:11:14', 1);
INSERT INTO `tbl_org_position_info` VALUES ('82c26dad14e545adbf1f1110dd006e10', '10000021', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '服务高级总监', 21, 1, NULL, '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('832cdccbe2994690aeae10c68e234ab6', '10000043', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '渠道副总监', 43, 1, NULL, '2021-05-24 21:18:29', 'system', '2021-05-24 21:18:29', 'system', '2021-05-24 21:18:29', 1);
INSERT INTO `tbl_org_position_info` VALUES ('8337db2172d644f0972480a52ee89c53', '10000006', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '核算专家', 6, 1, NULL, '2021-05-24 21:11:11', 'system', '2021-05-24 21:11:11', 'system', '2021-05-24 21:11:11', 1);
INSERT INTO `tbl_org_position_info` VALUES ('8548415ed6d845d7a17d6118adaa65be', '10000022', '8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', 'Java开发资深总监', 22, 1, NULL, '2021-05-24 21:01:29', 'system', '2021-05-24 21:01:29', 'system', '2021-05-24 21:01:29', 1);
INSERT INTO `tbl_org_position_info` VALUES ('8584039861e14e7ea040c001dac2871b', '10000001', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '产品资深专家', 1, 1, NULL, '2021-05-24 21:07:30', 'system', '2021-05-24 21:07:30', 'system', '2021-05-24 21:07:30', 1);
INSERT INTO `tbl_org_position_info` VALUES ('870fca7c802144708740c430abd38fc7', '10000015', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '大客户营销高级总监', 15, 1, NULL, '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('875e84111e994069ac9fe8d05c45071c', '10000003', '914d203cf70e45b5863c7ba603b99c76', '10000004', '组织发展资深专家', 3, 1, NULL, '2021-05-24 21:09:45', 'system', '2021-05-24 21:09:45', 'system', '2021-05-24 21:09:45', 1);
INSERT INTO `tbl_org_position_info` VALUES ('8abc0a52919d46b5af5c592c0f42973b', '10000028', '1cc436d26e194f8c887eeb2fdc5f4e6a', '10000009', '工程合约总监', 28, 1, NULL, '2021-05-24 21:14:50', 'system', '2021-05-24 21:14:50', 'system', '2021-05-24 21:14:50', 1);
INSERT INTO `tbl_org_position_info` VALUES ('8aff0a3d84f441f7a730ded79c286c66', '10000001', '914d203cf70e45b5863c7ba603b99c76', '10000004', '人力资源资深专家', 1, 1, NULL, '2021-05-24 21:09:45', 'system', '2021-05-24 21:09:45', 'system', '2021-05-24 21:09:45', 1);
INSERT INTO `tbl_org_position_info` VALUES ('8b5b2b42c88443d2954a82ff40cef9cf', '10000031', '914d203cf70e45b5863c7ba603b99c76', '10000004', '人力资源资深经理', 31, 1, NULL, '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('8ce9c57c3a134ad7bace228a167a0a1a', '10000038', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '美家总监', 38, 1, NULL, '2021-05-24 21:18:29', 'system', '2021-05-24 21:18:29', 'system', '2021-05-24 21:18:29', 1);
INSERT INTO `tbl_org_position_info` VALUES ('8d560362ec0f42cabfde00a4438780ee', '10000001', '8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', 'net开发资深专家', 1, 1, NULL, '2021-05-24 21:01:26', 'system', '2021-05-24 21:01:26', 'system', '2021-05-24 21:01:26', 1);
INSERT INTO `tbl_org_position_info` VALUES ('90522202541140f5a398fcd9ea06fb9a', '10000019', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '企划高级总监', 19, 1, NULL, '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('921ee64cf2c941bca4c18b2b21046ac0', '10000015', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '结构设计专家', 15, 1, NULL, '2021-05-24 21:07:31', 'system', '2021-05-24 21:07:31', 'system', '2021-05-24 21:07:31', 1);
INSERT INTO `tbl_org_position_info` VALUES ('92390206da464dbb96950eaf1e8338f8', '10000016', '914d203cf70e45b5863c7ba603b99c76', '10000004', '人力资源高级总监', 16, 1, NULL, '2021-05-24 21:09:46', 'system', '2021-05-24 21:09:46', 'system', '2021-05-24 21:09:46', 1);
INSERT INTO `tbl_org_position_info` VALUES ('92b0e84ebb284f7a92ef877027d6afaf', '10000023', '9921ed1abfbf8f29c216975aaa3f81a3', '10000018', '项目经理', 23, 1, NULL, '2021-05-24 20:57:50', 'system', '2021-05-24 20:57:50', 'system', '2021-05-24 20:57:50', 1);
INSERT INTO `tbl_org_position_info` VALUES ('96598409e78345bf97beebd709b440e2', '10000038', '1b62cf798dc0450991a273bcde4e249d', '10000013', '运维副经理', 38, 1, NULL, '2021-05-24 21:16:49', 'system', '2021-05-24 21:16:49', 'system', '2021-05-24 21:16:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('969c41b24c7a43819c6c215110cdac3b', '10000013', '8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', 'UI设计专家', 13, 1, NULL, '2021-05-24 21:01:27', 'system', '2021-05-24 21:01:27', 'system', '2021-05-24 21:01:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('96ab9d5811b6483bbca2dc5e53ee778b', '10000003', '9921ed1abfbf8f29c216975aaa3f81a3', '10000018', '副董事长', 3, 1, NULL, '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('9709089e79aa4a07b235c68f98051cec', '10000018', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '金融保险高级总监', 18, 1, NULL, '2021-05-24 21:11:13', 'system', '2021-05-24 21:11:13', 'system', '2021-05-24 21:11:13', 1);
INSERT INTO `tbl_org_position_info` VALUES ('997181055a554d00b8a6b841b6f97929', '10000002', '1cc436d26e194f8c887eeb2fdc5f4e6a', '10000009', '材料采购资深专家', 2, 1, NULL, '2021-05-24 21:14:47', 'system', '2021-05-24 21:14:47', 'system', '2021-05-24 21:14:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('99a4865fb5a74cfaa7bc6840caad24b7', '10000040', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '金融推广资深经理', 40, 1, NULL, '2021-05-24 21:11:14', 'system', '2021-05-24 21:11:14', 'system', '2021-05-24 21:11:14', 1);
INSERT INTO `tbl_org_position_info` VALUES ('9a4065fe5a3246aeae8dc70cf1be210a', '10000008', '1cc436d26e194f8c887eeb2fdc5f4e6a', '10000009', '材料采购专家', 8, 1, NULL, '2021-05-24 21:14:48', 'system', '2021-05-24 21:14:48', 'system', '2021-05-24 21:14:48', 1);
INSERT INTO `tbl_org_position_info` VALUES ('9a6d9f1c9e884937a594e95dcd26b567', '10000044', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '成本高级经理', 44, 1, NULL, '2021-05-24 21:11:15', 'system', '2021-05-24 21:11:15', 'system', '2021-05-24 21:11:15', 1);
INSERT INTO `tbl_org_position_info` VALUES ('9abbc280a6834ccc8ebd042000c236cb', '10000012', '1b62cf798dc0450991a273bcde4e249d', '10000013', 'IT资深总监', 12, 1, NULL, '2021-05-24 21:16:46', 'system', '2021-05-24 21:16:46', 'system', '2021-05-24 21:16:46', 1);
INSERT INTO `tbl_org_position_info` VALUES ('9af3d0d0078943ac87d88f265cef3cf5', '10000007', '9921ed1abfbf8f29c216975aaa3f81a3', '10000018', '部长', 7, 1, NULL, '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('9b97f61f94334b768748455be5a99812', '10000004', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '结构设计资深专家', 4, 1, NULL, '2021-05-24 21:07:30', 'system', '2021-05-24 21:07:30', 'system', '2021-05-24 21:07:30', 1);
INSERT INTO `tbl_org_position_info` VALUES ('9c156f4b19b44f148855dd33c02dd57d', '10000008', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '证券专家', 8, 1, NULL, '2021-05-24 21:11:11', 'system', '2021-05-24 21:11:11', 'system', '2021-05-24 21:11:11', 1);
INSERT INTO `tbl_org_position_info` VALUES ('9cf92e75b0d54ad8b2120b248c40ae8e', '10000010', '1cc436d26e194f8c887eeb2fdc5f4e6a', '10000009', '工程合约专家', 10, 1, NULL, '2021-05-24 21:14:48', 'system', '2021-05-24 21:14:48', 'system', '2021-05-24 21:14:48', 1);
INSERT INTO `tbl_org_position_info` VALUES ('9d05e4cdf208499fa9b39719798e2e81', '10000022', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '电话营销高级总监', 22, 1, NULL, '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('9f52a543dd1b431d83be0e0f092ce1a8', '10000006', '9921ed1abfbf8f29c216975aaa3f81a3', '10000018', 'CE0', 6, 1, NULL, '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('9f8601b09b434a4ab9c9f571a8a9ed98', '10000024', '1cc436d26e194f8c887eeb2fdc5f4e6a', '10000009', '招采高级总监', 24, 1, NULL, '2021-05-24 21:14:50', 'system', '2021-05-24 21:14:50', 'system', '2021-05-24 21:14:50', 1);
INSERT INTO `tbl_org_position_info` VALUES ('a015308431d84a1cae2f0d1ea61ee400', '10000003', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '金融保险资深专家', 3, 1, NULL, '2021-05-24 21:11:11', 'system', '2021-05-24 21:11:11', 'system', '2021-05-24 21:11:11', 1);
INSERT INTO `tbl_org_position_info` VALUES ('a07f00c6651e4e039338e63f922f264d', '10000037', '1b62cf798dc0450991a273bcde4e249d', '10000013', 'IT经理', 37, 1, NULL, '2021-05-24 21:16:49', 'system', '2021-05-24 21:16:49', 'system', '2021-05-24 21:16:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('a0966e1d9b6c4afc8a37ae26fea3156b', '10000006', '914d203cf70e45b5863c7ba603b99c76', '10000004', '人力资源专家', 6, 1, NULL, '2021-05-24 21:09:45', 'system', '2021-05-24 21:09:45', 'system', '2021-05-24 21:09:45', 1);
INSERT INTO `tbl_org_position_info` VALUES ('a255ce8026494277b3adbcf37d6dda22', '10000021', '914d203cf70e45b5863c7ba603b99c76', '10000004', '人力资源总监', 21, 1, NULL, '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('a295f27652264ee3aeda801ea343ff16', '10000025', '8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', 'Android开发总监', 25, 1, NULL, '2021-05-24 21:01:29', 'system', '2021-05-24 21:01:29', 'system', '2021-05-24 21:01:29', 1);
INSERT INTO `tbl_org_position_info` VALUES ('a3b6d6a355f142c2b4c5b6f2497c2b41', '10000018', '914d203cf70e45b5863c7ba603b99c76', '10000004', '组织发展高级总监', 18, 1, NULL, '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('a537640cc08d4149946e122fbe7e30e0', '10000049', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '金融推广高级经理', 49, 1, NULL, '2021-05-24 21:11:15', 'system', '2021-05-24 21:11:15', 'system', '2021-05-24 21:11:15', 1);
INSERT INTO `tbl_org_position_info` VALUES ('a5b126726ed444c699b1d15dc5971fd0', '10000026', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '证券总监', 26, 1, NULL, '2021-05-24 21:11:13', 'system', '2021-05-24 21:11:13', 'system', '2021-05-24 21:11:13', 1);
INSERT INTO `tbl_org_position_info` VALUES ('a69d2ef5414b4d0bb1cf76efc4494d69', '10000022', '9921ed1abfbf8f29c216975aaa3f81a3', '10000018', '副院长', 22, 1, NULL, '2021-05-24 20:57:50', 'system', '2021-05-24 20:57:50', 'system', '2021-05-24 20:57:50', 1);
INSERT INTO `tbl_org_position_info` VALUES ('a73ec89102614a49a1380ac0bf2afb28', '10000005', '914d203cf70e45b5863c7ba603b99c76', '10000004', '员工关系资深专家', 5, 1, NULL, '2021-05-24 21:09:45', 'system', '2021-05-24 21:09:45', 'system', '2021-05-24 21:09:45', 1);
INSERT INTO `tbl_org_position_info` VALUES ('a78711de7e3e4621bc025233877d9d6a', '10000012', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '产品专家', 12, 1, NULL, '2021-05-24 21:07:31', 'system', '2021-05-24 21:07:31', 'system', '2021-05-24 21:07:31', 1);
INSERT INTO `tbl_org_position_info` VALUES ('a7a27f7768be44abbb093bbc000621c1', '10000023', '1cc436d26e194f8c887eeb2fdc5f4e6a', '10000009', '供方管理高级总监', 23, 1, NULL, '2021-05-24 21:14:50', 'system', '2021-05-24 21:14:50', 'system', '2021-05-24 21:14:50', 1);
INSERT INTO `tbl_org_position_info` VALUES ('a85e47c6c65646beb1bf709de572f543', '10000005', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '财务专家', 5, 1, NULL, '2021-05-24 21:11:11', 'system', '2021-05-24 21:11:11', 'system', '2021-05-24 21:11:11', 1);
INSERT INTO `tbl_org_position_info` VALUES ('a88b552aabdc41ed88dc21cdb9f7492e', '10000018', '1b62cf798dc0450991a273bcde4e249d', '10000013', '弱电总监', 18, 1, NULL, '2021-05-24 21:16:47', 'system', '2021-05-24 21:16:47', 'system', '2021-05-24 21:16:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('a94b73983b354af192c2da9238dab8ca', '10000021', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '财务总监', 21, 1, NULL, '2021-05-24 21:11:13', 'system', '2021-05-24 21:11:13', 'system', '2021-05-24 21:11:13', 1);
INSERT INTO `tbl_org_position_info` VALUES ('a94cad8590e44cea9fbc84d655daf4e4', '10000046', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '融资高级经理', 46, 1, NULL, '2021-05-24 21:11:15', 'system', '2021-05-24 21:11:15', 'system', '2021-05-24 21:11:15', 1);
INSERT INTO `tbl_org_position_info` VALUES ('aa5df63b23b840ccbc340649d664039d', '10000014', '1b62cf798dc0450991a273bcde4e249d', '10000013', '弱电高级总监', 14, 1, NULL, '2021-05-24 21:16:46', 'system', '2021-05-24 21:16:46', 'system', '2021-05-24 21:16:46', 1);
INSERT INTO `tbl_org_position_info` VALUES ('ac55cac0b5bb4fa8bd2eaf8bd567bf0f', '10000026', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '物流总监', 26, 1, NULL, '2021-05-24 21:18:28', 'system', '2021-05-24 21:18:28', 'system', '2021-05-24 21:18:28', 1);
INSERT INTO `tbl_org_position_info` VALUES ('ad7faf7782ed4dd784d6a4672251654d', '10000021', '8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', 'ios开发资深总监', 21, 1, NULL, '2021-05-24 21:01:29', 'system', '2021-05-24 21:01:29', 'system', '2021-05-24 21:01:29', 1);
INSERT INTO `tbl_org_position_info` VALUES ('ade136b3d79842a09011ab9ec96506f2', '10000021', '1b62cf798dc0450991a273bcde4e249d', '10000013', '运维副总监', 21, 1, NULL, '2021-05-24 21:16:47', 'system', '2021-05-24 21:16:47', 'system', '2021-05-24 21:16:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('b120f8912fb24cafa7dd7b16b9d2f38a', '10000016', '1cc436d26e194f8c887eeb2fdc5f4e6a', '10000009', '工程合约资深总监', 16, 1, NULL, '2021-05-24 21:14:49', 'system', '2021-05-24 21:14:49', 'system', '2021-05-24 21:14:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('b41bcad4e2934e7dba3b71ec1e310aa2', '10000020', '9921ed1abfbf8f29c216975aaa3f81a3', '10000018', '副处长', 20, 1, NULL, '2021-05-24 20:57:50', 'system', '2021-05-24 20:57:50', 'system', '2021-05-24 20:57:50', 1);
INSERT INTO `tbl_org_position_info` VALUES ('b42e5e41ff0344109d3705d591b7a955', '10000016', '1b62cf798dc0450991a273bcde4e249d', '10000013', 'IT高级总监', 16, 1, NULL, '2021-05-24 21:16:47', 'system', '2021-05-24 21:16:47', 'system', '2021-05-24 21:16:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('b4d13bf60c2d48a6a71539d0dec0959a', '10000002', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '核算资深专家', 2, 1, NULL, '2021-05-24 21:11:11', 'system', '2021-05-24 21:11:11', 'system', '2021-05-24 21:11:11', 1);
INSERT INTO `tbl_org_position_info` VALUES ('b664963a8b8e4952a1ade54d6bc4ce11', '10000027', '1b62cf798dc0450991a273bcde4e249d', '10000013', '信息资深经理', 27, 1, NULL, '2021-05-24 21:16:48', 'system', '2021-05-24 21:16:48', 'system', '2021-05-24 21:16:48', 1);
INSERT INTO `tbl_org_position_info` VALUES ('b6dc1b97f37b4491976150de268b715a', '10000021', '1cc436d26e194f8c887eeb2fdc5f4e6a', '10000009', '合约管理高级总监', 21, 1, NULL, '2021-05-24 21:14:49', 'system', '2021-05-24 21:14:49', 'system', '2021-05-24 21:14:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('b7844bbd1f2941afb23d9acb00faa75a', '10000028', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '置业总监', 28, 1, NULL, '2021-05-24 21:18:28', 'system', '2021-05-24 21:18:28', 'system', '2021-05-24 21:18:28', 1);
INSERT INTO `tbl_org_position_info` VALUES ('b7c7e9c1326940dc955ee553bfe0b5db', '10000020', '1cc436d26e194f8c887eeb2fdc5f4e6a', '10000009', '材料采购高级总监', 20, 1, NULL, '2021-05-24 21:14:49', 'system', '2021-05-24 21:14:49', 'system', '2021-05-24 21:14:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('b7fe37b7db3641fbb62b65825dc0a9d5', '10000015', '8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', '视觉设计专家', 15, 1, NULL, '2021-05-24 21:01:28', 'system', '2021-05-24 21:01:28', 'system', '2021-05-24 21:01:28', 1);
INSERT INTO `tbl_org_position_info` VALUES ('b9c492d33be540e39e11ddf9cae5166d', '10000015', '1cc436d26e194f8c887eeb2fdc5f4e6a', '10000009', '合约管理资深总监', 15, 1, NULL, '2021-05-24 21:14:49', 'system', '2021-05-24 21:14:49', 'system', '2021-05-24 21:14:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('bacd5166631c4201b7120d49a6a634d9', '10000010', '9921ed1abfbf8f29c216975aaa3f81a3', '10000018', '执行董事', 10, 1, NULL, '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('bb362865e8ee4876948ff9862bb529f1', '10000034', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '软装设计资深总监', 34, 1, NULL, '2021-05-24 21:07:32', 'system', '2021-05-24 21:07:32', 'system', '2021-05-24 21:07:32', 1);
INSERT INTO `tbl_org_position_info` VALUES ('bb403e7e73854990946f4962013d5716', '10000026', '8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', 'ios开发总监', 26, 1, NULL, '2021-05-24 21:01:29', 'system', '2021-05-24 21:01:29', 'system', '2021-05-24 21:01:29', 1);
INSERT INTO `tbl_org_position_info` VALUES ('bc7f45e894684cebadb0ccfce4a5f4af', '10000045', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '资金高级经理', 45, 1, NULL, '2021-05-24 21:11:15', 'system', '2021-05-24 21:11:15', 'system', '2021-05-24 21:11:15', 1);
INSERT INTO `tbl_org_position_info` VALUES ('bc87b7c8b18944718b465a56f19908a4', '10000029', '1cc436d26e194f8c887eeb2fdc5f4e6a', '10000009', '供方管理总监', 0, 1, NULL, '2021-05-24 21:14:50', 'system', '2021-05-24 21:14:50', 'system', '2021-05-24 21:14:50', 1);
INSERT INTO `tbl_org_position_info` VALUES ('bda32b9d97014860a92d945f1dbab887', '10000018', '8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', 'UI设计师', 18, 1, NULL, '2021-05-24 21:01:28', 'system', '2021-05-24 21:01:28', 'system', '2021-05-24 21:01:28', 1);
INSERT INTO `tbl_org_position_info` VALUES ('bdcccd26d1b4492d8ebef8c6583426b7', '10000007', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '金融保险专家', 7, 1, NULL, '2021-05-24 21:11:11', 'system', '2021-05-24 21:11:11', 'system', '2021-05-24 21:11:11', 1);
INSERT INTO `tbl_org_position_info` VALUES ('bde2a94d28ba4dc28d4ec60d5a5dd90e', '10000029', '8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', '视觉设计总监', 29, 1, NULL, '2021-05-24 21:01:29', 'system', '2021-05-24 21:01:29', 'system', '2021-05-24 21:01:29', 1);
INSERT INTO `tbl_org_position_info` VALUES ('c0a3dd8f7c58431d997c5cbc428b517e', '10000021', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '软装设计专家', 21, 1, NULL, '2021-05-24 21:07:32', 'system', '2021-05-24 21:07:32', 'system', '2021-05-24 21:07:32', 1);
INSERT INTO `tbl_org_position_info` VALUES ('c1060d1a918a4f4285b878162d0f32e4', '10000014', '914d203cf70e45b5863c7ba603b99c76', '10000004', '薪酬福利资深总监', 14, 1, NULL, '2021-05-24 21:09:46', 'system', '2021-05-24 21:09:46', 'system', '2021-05-24 21:09:46', 1);
INSERT INTO `tbl_org_position_info` VALUES ('c2cfcfaae4a3492f98463a79b5f1f3f3', '10000006', '8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', '交互设计资深专家', 6, 1, NULL, '2021-05-24 21:01:27', 'system', '2021-05-24 21:01:27', 'system', '2021-05-24 21:01:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('c35989ced3fa4f93b5a8dd65bd93d505', '10000001', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '财务资深专家', 1, 1, NULL, '2021-05-24 21:11:11', 'system', '2021-05-24 21:11:11', 'system', '2021-05-24 21:11:11', 1);
INSERT INTO `tbl_org_position_info` VALUES ('c3e6a1f9eb5f4864843e82c134514c8e', '10000026', '914d203cf70e45b5863c7ba603b99c76', '10000004', '人力资源副总监', 26, 1, NULL, '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('c4d1d844c67f466db1de95f79f9641d3', '10000032', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '证券副总监', 32, 1, NULL, '2021-05-24 21:11:14', 'system', '2021-05-24 21:11:14', 'system', '2021-05-24 21:11:14', 1);
INSERT INTO `tbl_org_position_info` VALUES ('c768342c701943d79825687c4af62830', '10000012', '1cc436d26e194f8c887eeb2fdc5f4e6a', '10000009', '招采专家', 12, 1, NULL, '2021-05-24 21:14:48', 'system', '2021-05-24 21:14:48', 'system', '2021-05-24 21:14:48', 1);
INSERT INTO `tbl_org_position_info` VALUES ('c8b43444e85f450991cd85e2274ec7b7', '10000008', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '销售专家', 8, 1, NULL, '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('cb00f185f7ce4d4ab627ee5da658209a', '10000016', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '置业高级总监', 16, 1, NULL, '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('cbdc12ae4819496faffb118998392b49', '10000025', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '金融保险总监', 25, 1, NULL, '2021-05-24 21:11:13', 'system', '2021-05-24 21:11:13', 'system', '2021-05-24 21:11:13', 1);
INSERT INTO `tbl_org_position_info` VALUES ('cc153f1b6d91458bbf92e8332f770a32', '10000006', '1cc436d26e194f8c887eeb2fdc5f4e6a', '10000009', '招采资深专家', 6, 1, NULL, '2021-05-24 21:14:48', 'system', '2021-05-24 21:14:48', 'system', '2021-05-24 21:14:48', 1);
INSERT INTO `tbl_org_position_info` VALUES ('cc49e3ac959c47728b35ca1e2f729a8c', '10000004', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '证券资深专家', 4, 1, NULL, '2021-05-24 21:11:11', 'system', '2021-05-24 21:11:11', 'system', '2021-05-24 21:11:11', 1);
INSERT INTO `tbl_org_position_info` VALUES ('cf27231f951b4554ba6be910c846e705', '10000016', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '电气设计专家', 16, 1, NULL, '2021-05-24 21:07:31', 'system', '2021-05-24 21:07:31', 'system', '2021-05-24 21:07:31', 1);
INSERT INTO `tbl_org_position_info` VALUES ('cf5f7bdb9a6c4bbaab56a0a32ecc9b16', '10000028', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '核算副总监', 28, 1, NULL, '2021-05-24 21:11:14', 'system', '2021-05-24 21:11:14', 'system', '2021-05-24 21:11:14', 1);
INSERT INTO `tbl_org_position_info` VALUES ('d0828e58df6c4f89a9b3e3909852edb5', '10000006', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '方案设计资深专家', 6, 1, NULL, '2021-05-24 21:07:30', 'system', '2021-05-24 21:07:30', 'system', '2021-05-24 21:07:30', 1);
INSERT INTO `tbl_org_position_info` VALUES ('d282e38bee504965a2d5f033a602edbf', '10000001', '9921ed1abfbf8f29c216975aaa3f81a3', '10000018', '董事长', 1, 1, NULL, '2021-05-24 20:57:48', 'system', '2021-05-24 20:57:48', 'system', '2021-05-24 20:57:48', 1);
INSERT INTO `tbl_org_position_info` VALUES ('d28f1ddcc24c42fbb17193262fb54f52', '10000015', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '财务高级总监', 15, 1, NULL, '2021-05-24 21:11:12', 'system', '2021-05-24 21:11:12', 'system', '2021-05-24 21:11:12', 1);
INSERT INTO `tbl_org_position_info` VALUES ('d292d4213a0147d181c34965735b95ee', '10000026', '1b62cf798dc0450991a273bcde4e249d', '10000013', '弱电资深经理', 26, 1, NULL, '2021-05-24 21:16:48', 'system', '2021-05-24 21:16:48', 'system', '2021-05-24 21:16:48', 1);
INSERT INTO `tbl_org_position_info` VALUES ('d2d2b7829fae4da58d56231233d58496', '10000024', '914d203cf70e45b5863c7ba603b99c76', '10000004', '薪酬福利总监', 24, 1, NULL, '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('d5e434bd7ca443d096ad1d8b3cfa3918', '10000004', '1cc436d26e194f8c887eeb2fdc5f4e6a', '10000009', '工程合约资深专家', 4, 1, NULL, '2021-05-24 21:14:47', 'system', '2021-05-24 21:14:47', 'system', '2021-05-24 21:14:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('d637672cf1b6433a95a7efe269ca9a72', '10000028', '9921ed1abfbf8f29c216975aaa3f81a3', '10000018', '党总支书记', 28, 1, NULL, '2021-05-24 20:57:50', 'system', '2021-05-24 20:57:50', 'system', '2021-05-24 20:57:50', 1);
INSERT INTO `tbl_org_position_info` VALUES ('d73bfb14fe3242968ee4dcf8a993a3b8', '10000024', '8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', '视觉设计资深总监', 24, 1, NULL, '2021-05-24 21:01:29', 'system', '2021-05-24 21:01:29', 'system', '2021-05-24 21:01:29', 1);
INSERT INTO `tbl_org_position_info` VALUES ('d8b5b9e708ef4a45b828a8385b1aa209', '10000024', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '金融推广总监', 24, 1, NULL, '2021-05-24 21:11:13', 'system', '2021-05-24 21:11:13', 'system', '2021-05-24 21:11:13', 1);
INSERT INTO `tbl_org_position_info` VALUES ('d905e7d212ff49b097daeda4483534a7', '10000028', '1b62cf798dc0450991a273bcde4e249d', '10000013', 'IT资深经理', 28, 1, NULL, '2021-05-24 21:16:48', 'system', '2021-05-24 21:16:48', 'system', '2021-05-24 21:16:48', 1);
INSERT INTO `tbl_org_position_info` VALUES ('d90f7fc2eb92406daf268b964774650f', '10000040', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '物流副总监', 40, 1, NULL, '2021-05-24 21:18:29', 'system', '2021-05-24 21:18:29', 'system', '2021-05-24 21:18:29', 1);
INSERT INTO `tbl_org_position_info` VALUES ('d932112418ab4e56866dce5487858bbf', '10000022', '1b62cf798dc0450991a273bcde4e249d', '10000013', '弱电副总监', 22, 1, NULL, '2021-05-24 21:16:47', 'system', '2021-05-24 21:16:47', 'system', '2021-05-24 21:16:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('d98a2de36c864d3fb2ff0a45cdb43e05', '10000005', '9921ed1abfbf8f29c216975aaa3f81a3', '10000018', '助理总裁', 5, 1, NULL, '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('da28600290814a80a403de563144ae21', '10000013', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '市场研究专家', 13, 1, NULL, '2021-05-24 21:07:31', 'system', '2021-05-24 21:07:31', 'system', '2021-05-24 21:07:31', 1);
INSERT INTO `tbl_org_position_info` VALUES ('da2a7ccd16d648e29cc9f4fddd90b4f4', '10000004', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '置业专家', 4, 1, NULL, '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('da3aec87ba774d389b21cfa038e30ad3', '10000004', '9921ed1abfbf8f29c216975aaa3f81a3', '10000018', '副总裁', 4, 1, NULL, '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('db41356d2d874fd685fb51953937dec7', '10000009', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '室内设计资深专家', 9, 1, NULL, '2021-05-24 21:07:31', 'system', '2021-05-24 21:07:31', 'system', '2021-05-24 21:07:31', 1);
INSERT INTO `tbl_org_position_info` VALUES ('dd1d9610a21d472b88d56dd20e378647', '10000010', '914d203cf70e45b5863c7ba603b99c76', '10000004', '员工关系专家', 10, 1, NULL, '2021-05-24 21:09:46', 'system', '2021-05-24 21:09:46', 'system', '2021-05-24 21:09:46', 1);
INSERT INTO `tbl_org_position_info` VALUES ('df4f24cb32ac4053bf374ac8d00ebd04', '10000033', '1b62cf798dc0450991a273bcde4e249d', '10000013', '运维经理', 33, 1, NULL, '2021-05-24 21:16:49', 'system', '2021-05-24 21:16:49', 'system', '2021-05-24 21:16:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('e05c569de0084fda9856437bdf97eaf3', '10000010', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '电话营销专家', 10, 1, NULL, '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('e1b69713c0c14598ad360fbc19f1d0d4', '10000007', '1b62cf798dc0450991a273bcde4e249d', '10000013', '信息专家', 7, 1, NULL, '2021-05-24 21:16:46', 'system', '2021-05-24 21:16:46', 'system', '2021-05-24 21:16:46', 1);
INSERT INTO `tbl_org_position_info` VALUES ('e2427cf505e047eda04c2d05185b11aa', '10000032', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '销售总监', 32, 1, NULL, '2021-05-24 21:18:28', 'system', '2021-05-24 21:18:28', 'system', '2021-05-24 21:18:28', 1);
INSERT INTO `tbl_org_position_info` VALUES ('e2f9f718987c4dd18d5cb3a376bbd875', '10000037', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '当当总监', 37, 1, NULL, '2021-05-24 21:18:29', 'system', '2021-05-24 21:18:29', 'system', '2021-05-24 21:18:29', 1);
INSERT INTO `tbl_org_position_info` VALUES ('e3167c5b23574cab8943e11b8d523145', '10000026', '1cc436d26e194f8c887eeb2fdc5f4e6a', '10000009', '材料采购总监', 26, 1, NULL, '2021-05-24 21:14:50', 'system', '2021-05-24 21:14:50', 'system', '2021-05-24 21:14:50', 1);
INSERT INTO `tbl_org_position_info` VALUES ('e6a863020aaa492fa0c660a380e65c38', '10000016', '9921ed1abfbf8f29c216975aaa3f81a3', '10000018', '助理总经理', 16, 1, NULL, '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('e7ebe44ad7ea45dd94259b3269266bc4', '10000024', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '美家高级总监', 24, 1, NULL, '2021-05-24 21:18:28', 'system', '2021-05-24 21:18:28', 'system', '2021-05-24 21:18:28', 1);
INSERT INTO `tbl_org_position_info` VALUES ('e93d28d21dbc4d2a8bde2d0b923c2ae7', '10000014', '9921ed1abfbf8f29c216975aaa3f81a3', '10000018', '副主任', 14, 1, NULL, '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 'system', '2021-05-24 20:57:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('ea720c90f65b492da61c074f302c5126', '10000019', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '园林设计专家', 19, 1, NULL, '2021-05-24 21:07:31', 'system', '2021-05-24 21:07:31', 'system', '2021-05-24 21:07:31', 1);
INSERT INTO `tbl_org_position_info` VALUES ('ec23e0890b8149189f889309af79d6f0', '10000022', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '装修设计专家', 22, 1, NULL, '2021-05-24 21:07:32', 'system', '2021-05-24 21:07:32', 'system', '2021-05-24 21:07:32', 1);
INSERT INTO `tbl_org_position_info` VALUES ('ec64f482c7b34a398f997295ecf145db', '10000020', '914d203cf70e45b5863c7ba603b99c76', '10000004', '员工关系高级总监', 20, 1, NULL, '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('ecb247ff6cc14feca68643a7a0bb8efe', '10000028', '914d203cf70e45b5863c7ba603b99c76', '10000004', '组织发展副总监', 28, 1, NULL, '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('ecd0fc206a804ecf956a30c80e3d1ce2', '10000031', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '企划总监', 31, 1, NULL, '2021-05-24 21:18:28', 'system', '2021-05-24 21:18:28', 'system', '2021-05-24 21:18:28', 1);
INSERT INTO `tbl_org_position_info` VALUES ('ecdf1464d2254897b5abdfce168bf540', '10000001', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '营销专家', 1, 1, NULL, '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('ed0bbf448a9846d38b9ac5b1ee2218db', '10000007', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '给排水设计资深专家', 7, 1, NULL, '2021-05-24 21:07:31', 'system', '2021-05-24 21:07:31', 'system', '2021-05-24 21:07:31', 1);
INSERT INTO `tbl_org_position_info` VALUES ('ed6ba514ae10481aaa3571d2bedc26d3', '10000022', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '核算总监', 22, 1, NULL, '2021-05-24 21:11:13', 'system', '2021-05-24 21:11:13', 'system', '2021-05-24 21:11:13', 1);
INSERT INTO `tbl_org_position_info` VALUES ('eda8796eab9942d59b4209ca6addec2e', '10000028', '8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', '交互设计总监', 28, 1, NULL, '2021-05-24 21:01:29', 'system', '2021-05-24 21:01:29', 'system', '2021-05-24 21:01:29', 1);
INSERT INTO `tbl_org_position_info` VALUES ('ee83deff4f9e40c3ac97709922b0c666', '10000014', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '物流高级总监', 14, 1, NULL, '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('ef67f9c963ad48228f7aeaf8229095af', '10000017', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '渠道高级总监', 17, 1, NULL, '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 'system', '2021-05-24 21:18:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('ef789e1cf6cf47d2853a9d85240de664', '10000030', '1b62cf798dc0450991a273bcde4e249d', '10000013', '弱电高级经理', 30, 1, NULL, '2021-05-24 21:16:48', 'system', '2021-05-24 21:16:48', 'system', '2021-05-24 21:16:48', 1);
INSERT INTO `tbl_org_position_info` VALUES ('f0aad0312a89418e8fb0dad3a28c607a', '10000002', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '市场研究资深专家', 2, 1, NULL, '2021-05-24 21:07:30', 'system', '2021-05-24 21:07:30', 'system', '2021-05-24 21:07:30', 1);
INSERT INTO `tbl_org_position_info` VALUES ('f0cbee6cdff44fad9ef6189cc89c0a13', '10000005', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '电气设计资深专家', 5, 1, NULL, '2021-05-24 21:07:30', 'system', '2021-05-24 21:07:30', 'system', '2021-05-24 21:07:30', 1);
INSERT INTO `tbl_org_position_info` VALUES ('f0d4a819fc624f65bce7430aac358fab', '10000034', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '服务总监', 34, 1, NULL, '2021-05-24 21:18:28', 'system', '2021-05-24 21:18:28', 'system', '2021-05-24 21:18:28', 1);
INSERT INTO `tbl_org_position_info` VALUES ('f1558eb428f9437f82125d3f56523e3c', '10000039', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '金融保险资深经理', 39, 1, NULL, '2021-05-24 21:11:14', 'system', '2021-05-24 21:11:14', 'system', '2021-05-24 21:11:14', 1);
INSERT INTO `tbl_org_position_info` VALUES ('f2ccc9a6bd084797b5d05649c58e7aea', '10000011', '914d203cf70e45b5863c7ba603b99c76', '10000004', '人力资源资深总监', 11, 1, NULL, '2021-05-24 21:09:46', 'system', '2021-05-24 21:09:46', 'system', '2021-05-24 21:09:46', 1);
INSERT INTO `tbl_org_position_info` VALUES ('f438d2be0d4e4fa09d565d1cadd6aaa4', '10000008', '8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', '架构资深专家', 8, 1, NULL, '2021-05-24 21:01:27', 'system', '2021-05-24 21:01:27', 'system', '2021-05-24 21:01:27', 1);
INSERT INTO `tbl_org_position_info` VALUES ('f4c5dd714e304c61a2598387d9343ee6', '10000023', '1b62cf798dc0450991a273bcde4e249d', '10000013', '信息副总监', 23, 1, NULL, '2021-05-24 21:16:47', 'system', '2021-05-24 21:16:47', 'system', '2021-05-24 21:16:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('f7a02a3774c84ddda99fc2912d2b677e', '10000017', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '资金高级总监', 17, 1, NULL, '2021-05-24 21:11:13', 'system', '2021-05-24 21:11:13', 'system', '2021-05-24 21:11:13', 1);
INSERT INTO `tbl_org_position_info` VALUES ('f7aab8d8df8b408eb52fd2d5a93c12ea', '10000032', '914d203cf70e45b5863c7ba603b99c76', '10000004', '人资行政资深经理', 32, 1, NULL, '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 'system', '2021-05-24 21:09:47', 1);
INSERT INTO `tbl_org_position_info` VALUES ('f7dbc23898b44bdd8479156bd7d05c28', '10000030', '8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', '方案设计资深总监', 30, 1, NULL, '2021-05-24 21:07:32', 'system', '2021-05-24 21:07:32', 'system', '2021-05-24 21:07:32', 1);
INSERT INTO `tbl_org_position_info` VALUES ('f8ef6c71001246fbb8ddcb94796704c7', '10000048', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '金融保险高级经理', 48, 1, NULL, '2021-05-24 21:11:15', 'system', '2021-05-24 21:11:15', 'system', '2021-05-24 21:11:15', 1);
INSERT INTO `tbl_org_position_info` VALUES ('fa0ed32bfcdb4c98a21dd2ed4db63a75', '10000016', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '核算高级总监', 16, 1, NULL, '2021-05-24 21:11:13', 'system', '2021-05-24 21:11:13', 'system', '2021-05-24 21:11:13', 1);
INSERT INTO `tbl_org_position_info` VALUES ('facde803350f442389589b1562694e2c', '10000009', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '财务资深总监', 9, 1, NULL, '2021-05-24 21:11:11', 'system', '2021-05-24 21:11:11', 'system', '2021-05-24 21:11:11', 1);
INSERT INTO `tbl_org_position_info` VALUES ('fb67aec89e8141da9bf31337d57ed534', '10000011', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '资金资深总监', 11, 1, NULL, '2021-05-24 21:11:12', 'system', '2021-05-24 21:11:12', 'system', '2021-05-24 21:11:12', 1);
INSERT INTO `tbl_org_position_info` VALUES ('fb78ef48ccc54d2ab4e1e1d8c0189bba', '10000023', '8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', '交互设计资深总监', 23, 1, NULL, '2021-05-24 21:01:29', 'system', '2021-05-24 21:01:29', 'system', '2021-05-24 21:01:29', 1);
INSERT INTO `tbl_org_position_info` VALUES ('fc2b6b5b03c940acbe94da3dafa8de74', '10000036', '528aab952a584cc99ad6bbc173cc3a59', '10000007', '资金资深经理', 36, 1, NULL, '2021-05-24 21:11:14', 'system', '2021-05-24 21:11:14', 'system', '2021-05-24 21:11:14', 1);
INSERT INTO `tbl_org_position_info` VALUES ('fc74d8380d2442539dffc9aeb37d828b', '10000039', '0256f2fcf6454aa4b3daaadcfc57daab', '10000016', '营销副总监', 39, 1, NULL, '2021-05-24 21:18:29', 'system', '2021-05-24 21:18:29', 'system', '2021-05-24 21:18:29', 1);
INSERT INTO `tbl_org_position_info` VALUES ('fc7782a335bb4aef89bc66b1486cb528', '10000018', '1cc436d26e194f8c887eeb2fdc5f4e6a', '10000009', '招采资深总监', 18, 1, NULL, '2021-05-24 21:14:49', 'system', '2021-05-24 21:14:49', 'system', '2021-05-24 21:14:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('fd5b6a29135b438bb96774d16e553bd2', '10000039', '1b62cf798dc0450991a273bcde4e249d', '10000013', '弱电副经理', 39, 1, NULL, '2021-05-24 21:16:49', 'system', '2021-05-24 21:16:49', 'system', '2021-05-24 21:16:49', 1);
INSERT INTO `tbl_org_position_info` VALUES ('fe7c2515e816482b80c191d9feab59dc', '10000021', '9921ed1abfbf8f29c216975aaa3f81a3', '10000018', '院长', 21, 1, NULL, '2021-05-24 20:57:50', 'system', '2021-05-24 20:57:50', 'system', '2021-05-24 20:57:50', 1);

-- ----------------------------
-- Table structure for tbl_org_position_seq
-- ----------------------------
DROP TABLE IF EXISTS `tbl_org_position_seq`;
CREATE TABLE `tbl_org_position_seq`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ID',
  `code` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编码',
  `pid` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '父级Id',
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `status` int(255) NULL DEFAULT 1 COMMENT '状态1启用；0停用',
  `order_no` int(11) NULL DEFAULT NULL COMMENT '排序编号',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `creator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `del_flag` int(11) NOT NULL DEFAULT 1 COMMENT '1：存在  0： 删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pcode`(`pid`) USING BTREE,
  INDEX `job_grade_type_code_index`(`order_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_org_position_seq
-- ----------------------------
INSERT INTO `tbl_org_position_seq` VALUES ('0256f2fcf6454aa4b3daaadcfc57daab', '10000016', NULL, '销售', 1, 16, '销售', 'system', '2021-05-24 20:41:29', 'system', '2021-05-24 20:41:29', 1);
INSERT INTO `tbl_org_position_seq` VALUES ('1b62cf798dc0450991a273bcde4e249d', '10000013', NULL, 'IT运维', 1, 13, 'IT运维', 'system', '2021-05-24 20:41:29', 'system', '2021-05-24 20:41:29', 1);
INSERT INTO `tbl_org_position_seq` VALUES ('1cc436d26e194f8c887eeb2fdc5f4e6a', '10000009', NULL, '招标采购', 1, 9, '招标采购', 'system', '2021-05-24 20:41:28', 'system', '2021-05-24 20:41:28', 1);
INSERT INTO `tbl_org_position_seq` VALUES ('528aab952a584cc99ad6bbc173cc3a59', '10000007', NULL, '财务金融', 1, 7, '财务金融', 'system', '2021-05-24 20:41:28', 'system', '2021-05-24 20:41:28', 1);
INSERT INTO `tbl_org_position_seq` VALUES ('7af530f8725249518cbf18291ab0740a', '10000011', NULL, '市场营销', 1, 11, '市场营销', 'system', '2021-05-24 20:41:28', 'system', '2021-05-24 20:41:28', 1);
INSERT INTO `tbl_org_position_seq` VALUES ('8a77d7ad7f6f4f3fbd75727b90a571fd', '10000001', NULL, '技术研发', 1, 1, '技术研发', 'system', '2021-05-24 20:41:27', 'system', '2021-05-24 20:41:27', 1);
INSERT INTO `tbl_org_position_seq` VALUES ('8b2e9a0324ed4a4eb732eda2cd10a8da', '10000002', NULL, '产品研发', 1, 2, '产品研发', 'system', '2021-05-24 20:41:27', 'system', '2021-05-24 20:41:27', 1);
INSERT INTO `tbl_org_position_seq` VALUES ('914d203cf70e45b5863c7ba603b99c76', '10000004', NULL, '人力资源', 1, 4, '人力资源', 'system', '2021-05-24 20:41:28', 'system', '2021-05-24 20:41:28', 1);
INSERT INTO `tbl_org_position_seq` VALUES ('9921ed1abfbf8f29c216975aaa3f81a3', '10000018', NULL, '管理类', 1, 1, '管理类', '0000001', '2021-05-24 20:56:11', NULL, NULL, 1);

-- ----------------------------
-- Table structure for tbl_org_role
-- ----------------------------
DROP TABLE IF EXISTS `tbl_org_role`;
CREATE TABLE `tbl_org_role`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '公司id',
  `position_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '名称',
  `sn` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '标识',
  `note` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  `type` int(11) NULL DEFAULT 0,
  `order_no` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `creator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人',
  `del_flag` int(11) NULL DEFAULT 1 COMMENT '删除标识0：删除 1：存在',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `company_id_index`(`company_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_org_role
-- ----------------------------
INSERT INTO `tbl_org_role` VALUES ('1', '1', NULL, '董事长', 'dsz', 'asdfasdcccc', 0, 1, '2023-02-03 13:33:24', NULL, '2023-02-03 13:33:24', '10100', 1);
INSERT INTO `tbl_org_role` VALUES ('10', '2', NULL, '人资部长', 'bj_rzbz', NULL, 0, 5, '2021-05-25 20:13:22', NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_role` VALUES ('11', '3', NULL, '董事长', 'tj_dsz', NULL, 0, 1, '2021-05-25 20:14:03', NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_role` VALUES ('12', '3', NULL, '总裁', 'tj_zc', NULL, 0, 2, '2021-05-25 20:14:19', NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_role` VALUES ('13', '3', NULL, '总经理', 'tj_zjl', NULL, 0, 3, '2021-05-25 20:14:34', NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_role` VALUES ('14', '3', NULL, '技术部长', 'tj_jsbz', NULL, 0, 4, '2021-05-25 20:14:51', NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_role` VALUES ('15', '3', NULL, '人资部长', 'tj_rzbz', NULL, 0, 5, '2021-05-25 20:15:09', NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_role` VALUES ('16', '4', NULL, '董事长', 'hb_dsz', NULL, 0, 1, '2021-05-25 20:15:32', NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_role` VALUES ('17', '4', NULL, '总裁', 'hb_zc', NULL, 0, 2, '2021-05-25 20:15:53', NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_role` VALUES ('18', '4', NULL, '总经理', 'hb_zjl', NULL, 0, 3, '2021-05-25 20:16:11', NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_role` VALUES ('19', '4', NULL, '技术部长', 'hb_jsbz', NULL, 0, 4, '2021-05-25 20:16:51', NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_role` VALUES ('2', '1', NULL, '总裁', 'zc', NULL, 0, 2, '2021-05-24 22:58:53', NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_role` VALUES ('20', '4', NULL, '人资部长', 'hb_rzbz', NULL, 0, 5, '2021-05-25 20:16:54', NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_role` VALUES ('3', '1', NULL, '总经理', 'zjl', NULL, 0, 3, '2021-05-24 22:59:15', NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_role` VALUES ('4', '1', NULL, '技术部长', 'jsbz', NULL, 0, 4, '2021-05-24 23:00:41', NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_role` VALUES ('5', '1', NULL, '人资部长', 'rzbz', NULL, 0, 5, '2021-05-24 23:01:10', NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_role` VALUES ('6', '2', NULL, '董事长', 'bj_dsz', NULL, 0, 1, '2021-05-24 22:58:34', NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_role` VALUES ('7', '2', NULL, '总裁', 'bj_zc', NULL, 0, 2, '2021-05-25 20:12:20', NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_role` VALUES ('8', '2', NULL, '总经理', 'bj_zjl', NULL, 0, 3, '2021-05-25 20:12:39', NULL, NULL, NULL, 1);
INSERT INTO `tbl_org_role` VALUES ('9', '2', NULL, '技术部长', 'bj_jsbz', NULL, 0, 4, '2021-05-25 20:13:02', NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for tbl_org_role_position_personal
-- ----------------------------
DROP TABLE IF EXISTS `tbl_org_role_position_personal`;
CREATE TABLE `tbl_org_role_position_personal`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `company_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `position_code` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `personal_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `del_flag` int(11) NULL DEFAULT NULL COMMENT '删除标识',
  `create_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `creator` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updator` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `company_id_index`(`company_id`) USING BTREE,
  INDEX `role_id_index`(`role_id`) USING BTREE,
  INDEX `position_code_index`(`position_code`) USING BTREE,
  INDEX `personal_id_index`(`personal_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_org_role_position_personal
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_privilege_acl
-- ----------------------------
DROP TABLE IF EXISTS `tbl_privilege_acl`;
CREATE TABLE `tbl_privilege_acl`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `release_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '来源id',
  `release_sn` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `module_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '模块id',
  `module_sn` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '模块标示',
  `acl_state` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `creator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人',
  `del_flag` int(11) NULL DEFAULT 1 COMMENT '删除标识：0：删除 1：存在',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_privilege_acl
-- ----------------------------
INSERT INTO `tbl_privilege_acl` VALUES ('033233a369ba07ea2d6bf556f3638d55', 'dfda714f8c2003919a1c34c3cd88ef31', NULL, 'bfd09d4348fe480719bc08dda7cd543e', 'LoginLog', '2', '2021-05-25 21:56:41', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('10037a9635df6a9b2216150fb58a0af4', 'dfda714f8c2003919a1c34c3cd88ef31', NULL, '103dc9cbfb2bee0dfcad1fca2ec7737c', 'Category', '2', '2021-05-25 21:56:23', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('18a9daba3dd3cbe5ec8967e5ae544335', 'dfda714f8c2003919a1c34c3cd88ef31', NULL, '2c8a12cd8cf99307b3310076f372e361', 'FlowListener', '7', '2021-07-27 10:40:29', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('18b2edb1554d718396d74df5ce856a0c', 'dfda714f8c2003919a1c34c3cd88ef31', NULL, '22568ad11c459942f8fe879a35720975', 'JobGrade', '2', '2021-05-25 21:56:07', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('1e28cc912711d27bed8633053abec788', '33f926c19d1c5afcbcf8ad2d767427cc', NULL, 'e9d45d9e87570a0324692739d9ce5a91', 'system', '15', '2021-05-25 21:49:48', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('255762741d91c5e8902d49de8e4ffc89', 'dfda714f8c2003919a1c34c3cd88ef31', NULL, '3', 'Module', '2', '2021-05-25 21:56:39', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('261955fdfcb442d43fc0935e127fa329', 'dfda714f8c2003919a1c34c3cd88ef31', NULL, '2', 'App', '2', '2021-05-25 21:56:20', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('26b6b3efef6f96a18befa20aebf9e409', 'dfda714f8c2003919a1c34c3cd88ef31', NULL, '5520f3608d8431f7fac45fe1811eeac4', 'Department', '2', '2021-05-25 21:55:58', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('32d5236cf0a8fda86c60c183b7fcb943', '33f926c19d1c5afcbcf8ad2d767427cc', NULL, '5', 'Level', '15', '2021-05-25 21:49:48', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('43ccf09d631f357aef76d3ca49ffc97d', 'dfda714f8c2003919a1c34c3cd88ef31', NULL, '1', 'privilege', '2', '2021-05-25 21:56:34', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('51fc84896f708d91acfc8e1d1634190f', 'dfda714f8c2003919a1c34c3cd88ef31', NULL, '4d291160a5756dde3fcaa5d5ba1f12cd', 'Group', '2', '2021-05-25 21:56:37', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('5269ab6a1049dea667110fe2453e5570', '33f926c19d1c5afcbcf8ad2d767427cc', NULL, '6c9274bb2ac733bf1d26f809fef647fc', 'Flowable', '143', '2023-01-17 10:18:00', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('615989c6374492fd0ff19dae996aa262', '33f926c19d1c5afcbcf8ad2d767427cc', NULL, '929ca8db9678e5a3ff5626984f8e92b9', 'Coding', '103', '2021-05-25 21:49:48', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('6539c30b240183157e612060c68ecb87', 'dfda714f8c2003919a1c34c3cd88ef31', NULL, '461d77f44f0541774b36bb652af42973', 'Bpmn', '135', '2021-05-25 21:50:41', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('682cd936a87d8442b54d115859d4d904', '33f926c19d1c5afcbcf8ad2d767427cc', NULL, '85a5297d8850c524e9baf0eab36f71b7', 'JobGradeType', '11', '2023-01-17 10:17:52', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('6c42831507ba730a5811836566dbf033', 'dfda714f8c2003919a1c34c3cd88ef31', NULL, '77737a345ee0503907e29e0fc6656060', 'base', '2', '2021-05-25 21:56:17', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('6d8406b5221281408e9a0ef57d1209b9', 'dfda714f8c2003919a1c34c3cd88ef31', NULL, '695c26084c34cd94cff643bebc4b3b33', 'DicType', '2', '2021-05-25 21:56:29', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('6d857fdf7079024989ff0e5932e8b770', 'dfda714f8c2003919a1c34c3cd88ef31', NULL, 'b498ae8264a2533406f0e8f2d9c0de1f', 'Dmn', '2', '2021-05-25 21:56:53', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('6eb22c99e491192247ed15b9139f3193', 'dfda714f8c2003919a1c34c3cd88ef31', NULL, 'f37ff584d3f9ff2b1b358abb784ac788', 'Personal', '2', '2021-05-25 21:55:59', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('7074dfeb422a665b4b342f471be28e56', '33f926c19d1c5afcbcf8ad2d767427cc', NULL, '4028d82e78f3761e0178f39fee0e0001', 'Frame', '15', '2021-05-25 21:49:48', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('7724e54f96d7b12da30f5fa67e9c0af6', 'dfda714f8c2003919a1c34c3cd88ef31', NULL, 'ac24406e18f7c9ceca22d34b928583e6', 'Cmmn', '2', '2021-05-25 21:56:53', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('8cb733c78564b1c31d60befb6b9ae564', 'dfda714f8c2003919a1c34c3cd88ef31', NULL, 'cbfbf41e537d4cc3767db1bf9dfdea86', 'PositionInfo', '2', '2021-05-25 21:56:11', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('941043ecbdedb9a3f1815a7ccde89dfc', 'dfda714f8c2003919a1c34c3cd88ef31', NULL, 'c1eb20ac68d967e1a83ab354e69248a4', 'Company', '2', '2021-05-25 21:55:56', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('a5952dbe1fa9fa260fda52a83547b6e1', 'dfda714f8c2003919a1c34c3cd88ef31', NULL, '995b1ad53e528482981850027eaccc7e', 'AppPrivilegeValue', '2', '2021-05-25 21:56:41', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('a59745ced6a227254ce6e66433b0b261', 'dfda714f8c2003919a1c34c3cd88ef31', NULL, 'dd335c89f01da59d8f4edbe7436d68fe', 'Account', '2', '2021-05-25 21:56:35', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('b373c5c9b3059fb2c52d4c5ec2a2bc44', 'dfda714f8c2003919a1c34c3cd88ef31', NULL, 'ce5aa983b0495e5c61c99299190a1ce8', 'Dictionary', '2', '2021-05-25 21:56:32', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('c5fe368261933193b2dc2cd6b800eba9', '33f926c19d1c5afcbcf8ad2d767427cc', NULL, '6', 'Menu2Demo', '65', '2021-05-25 21:49:48', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('d418cbc109e00766f2698fc06b8e97f4', 'dfda714f8c2003919a1c34c3cd88ef31', NULL, 'c9320fbd661d58cce01c11c827db8d27', 'Role', '2', '2021-05-25 21:56:03', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('df34c6270eaaa3b8b0f4bd856535793f', 'dfda714f8c2003919a1c34c3cd88ef31', NULL, '6c9274bb2ac733bf1d26f809fef647fc', 'Flowable', '135', '2021-05-25 21:50:20', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('e2588cc9952e6421bbd57e0956d1067b', 'dfda714f8c2003919a1c34c3cd88ef31', NULL, '4418c29147a7c2586713823ba8a71ce6', 'org', '2', '2021-05-25 21:50:52', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('e2e8c271f1e2af3be8d6ea22820da4ef', '33f926c19d1c5afcbcf8ad2d767427cc', NULL, 'cead796ca39c009e72954538c1bd438c', 'expandTable', '127', '2021-05-25 21:49:48', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('e6f22360eacd32cd9d224934d99b7c07', 'dfda714f8c2003919a1c34c3cd88ef31', NULL, 'e72804d5e6a00d7af97ca8b0f40d272e', 'PositionSeq', '2', '2021-05-25 21:56:09', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('e6fdb542c2fba8fc3dff80a303022764', '33f926c19d1c5afcbcf8ad2d767427cc', NULL, '4028d82e78f3761e0178f3a0ad150002', 'doc', '15', '2021-05-25 21:49:48', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('ed8ea0fc6d9df8ac0da4fad685036551', 'dfda714f8c2003919a1c34c3cd88ef31', NULL, '4028d82e78f3761e0178f3761ea10000', 'BpmnDesigner', '7', '2021-05-25 21:50:26', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('f4f6c6c8095774ce7b50339dc3e3ea5f', 'dfda714f8c2003919a1c34c3cd88ef31', NULL, '0c89911084ab50d004695f759af79ace', 'SystemConfig', '2', '2021-05-25 21:56:24', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('f618cf8f35bef5c2a4b85e69227bc666', 'dfda714f8c2003919a1c34c3cd88ef31', NULL, '85a5297d8850c524e9baf0eab36f71b7', 'JobGradeType', '2', '2021-05-25 21:56:06', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_acl` VALUES ('f92f40da8592e31a43eaf918a26e364b', 'dfda714f8c2003919a1c34c3cd88ef31', NULL, 'd6fd0e52fb1c81f039d8a93ecef326c6', 'Area', '2', '2021-05-25 21:56:33', NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for tbl_privilege_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `tbl_privilege_dictionary`;
CREATE TABLE `tbl_privilege_dictionary`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '编码',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '名称',
  `pcode` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '父编码',
  `system_sn` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '系统标识',
  `sn` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '标识',
  `order_no` int(11) NULL DEFAULT NULL COMMENT '排序号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_privilege_dictionary
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_privilege_group
-- ----------------------------
DROP TABLE IF EXISTS `tbl_privilege_group`;
CREATE TABLE `tbl_privilege_group`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '公司id',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '名称',
  `sn` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '标识',
  `role_level` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '角色等级【数据字典获取】',
  `system_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '角色所属系统',
  `note` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  `valid_state` int(11) NULL DEFAULT 1 COMMENT '有效状态（1：有效；0：失效）',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `creator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人',
  `del_flag` int(11) NULL DEFAULT 1 COMMENT '删除标识0：删除 1：存在',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sn_index`(`sn`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_privilege_group
-- ----------------------------
INSERT INTO `tbl_privilege_group` VALUES ('33f926c19d1c5afcbcf8ad2d767427cc', NULL, '超级管理员', 'admin', NULL, NULL, '权限管理员', 1, '2021-05-25 21:45:41', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_group` VALUES ('dfda714f8c2003919a1c34c3cd88ef31', NULL, '普通管理员', 'normal_admin', NULL, NULL, 'test', 1, '2021-04-12 10:11:32', NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for tbl_privilege_login_log
-- ----------------------------
DROP TABLE IF EXISTS `tbl_privilege_login_log`;
CREATE TABLE `tbl_privilege_login_log`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ip` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '访问ip',
  `operation_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '操作人id',
  `operation_username` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '操作人的姓名',
  `operation_person` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '操作人姓名',
  `operation_content` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '操作内容',
  `operation_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_privilege_login_log
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_privilege_module
-- ----------------------------
DROP TABLE IF EXISTS `tbl_privilege_module`;
CREATE TABLE `tbl_privilege_module`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '名称',
  `url` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '链接',
  `sn` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '标识',
  `component` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '组件',
  `show_status` int(1) NULL DEFAULT NULL COMMENT '左侧菜单是否显示（1：显示，0：不显示）',
  `status` int(11) NULL DEFAULT NULL COMMENT '是否启用 ： 1启用；0禁用',
  `state` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '存放该模块有哪些权限值可选',
  `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '图片路径',
  `order_no` int(11) NULL DEFAULT NULL COMMENT '模块的排序号',
  `pid` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '父模块id',
  `app_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '系统id',
  `is_show` int(11) NULL DEFAULT 1,
  `create_time` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `creator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人',
  `del_flag` int(11) NULL DEFAULT 1 COMMENT '删除标识0:删除1：存在',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `system_module_sn_index`(`sn`, `app_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_privilege_module
-- ----------------------------
INSERT INTO `tbl_privilege_module` VALUES ('0c89911084ab50d004695f759af79ace', '系统配置', 'systemConfig', 'SystemConfig', '/base/systemConfig/index', 1, 1, '31', 'ant-design:setting-twotone', 3, '77737a345ee0503907e29e0fc6656060', NULL, 1, '2021-04-21 10:43:14', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('1', '权限管理', '/privilege', 'privilege', 'LAYOUT', 1, 1, '15', 'ant-design:account-book-filled', 10, NULL, NULL, 1, '2021-04-21 10:43:14', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('103dc9cbfb2bee0dfcad1fca2ec7737c', '流程分类', 'category', 'Category', '/base/category/index', 1, 1, '31', 'ant-design:tool-filled', 2, '77737a345ee0503907e29e0fc6656060', NULL, 1, '2021-05-13 14:03:17', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('2', '应用管理', 'app', 'App', '/base/app/index', 1, 1, '15', 'ant-design:account-book-filled', 1, '77737a345ee0503907e29e0fc6656060', NULL, 1, '2021-05-13 14:03:01', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('22568ad11c459942f8fe879a35720975', '职级管理', 'jobGrade', 'JobGrade', '/org/jobGrade/index', 1, 1, '15', 'ant-design:aliyun-outlined', 6, '4418c29147a7c2586713823ba8a71ce6', NULL, 1, '2021-05-14 00:17:36', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('2c8a12cd8cf99307b3310076f372e361', '流程监听管理', 'flowListener', 'FlowListener', '/base/flowListener/index', 1, 1, '15', 'ant-design:customer-service-filled', 1, '77737a345ee0503907e29e0fc6656060', NULL, 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('3', '菜单管理', 'module', 'Module', '/privilege/module/index', 1, 1, '15', 'ant-design:android-filled', 3, '1', NULL, 1, '2021-04-21 10:43:14', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('4028d82e78f3761e0178f3761ea10000', '设计流程', 'bpmn/designer', 'BpmnDesigner', '/flowable/bpmn/designer/index', 0, 1, '15', NULL, 1, '6c9274bb2ac733bf1d26f809fef647fc', NULL, 1, '2021-05-11 23:18:36', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('4028d82e78f3761e0178f39fee0e0001', 'IFRAME', '/frame', 'Frame', 'LAYOUT', 1, 1, '15', NULL, 1, '5', NULL, 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('4028d82e78f3761e0178f3a0ad150002', 'doc', 'doc', 'doc', 'IFrame', 1, 1, '15', NULL, 1, '4028d82e78f3761e0178f39fee0e0001', NULL, 1, '2021-04-21 17:00:42', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('4418c29147a7c2586713823ba8a71ce6', '组织管理', '/org', 'org', 'LAYOUT', 1, 1, '15', 'ant-design:apple-filled', 2, NULL, NULL, 1, '2021-04-21 10:43:14', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('461d77f44f0541774b36bb652af42973', '流程引擎管理', 'bpmn', 'Bpmn', '/flowable/bpmn/modelInfo/index', 1, 1, '143', 'ant-design:account-book-filled', 1, '6c9274bb2ac733bf1d26f809fef647fc', NULL, 1, '2021-05-14 13:52:51', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('4d291160a5756dde3fcaa5d5ba1f12cd', '系统角色管理', 'group', 'Group', '/privilege/group/index', 1, 1, '79', 'ant-design:account-book-filled', 2, '1', NULL, 1, '2021-05-18 15:15:35', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('5', '测试', '/test', 'Level', 'LAYOUT', 1, 1, '15', 'ant-design:appstore-filled', 100, NULL, NULL, 1, '2021-05-24 09:18:59', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('5520f3608d8431f7fac45fe1811eeac4', '部门管理', 'dept', 'Department', '/org/dept/index', 1, 1, '15', 'ant-design:wechat-outlined', 2, '4418c29147a7c2586713823ba8a71ce6', NULL, 1, '2021-04-21 10:43:14', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('6', '测试页面缓', 'menu2', 'Menu2Demo', '/demo/level/Menu2', 1, 1, '65', NULL, 2, '5', NULL, 1, '2021-04-21 10:43:14', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('695c26084c34cd94cff643bebc4b3b33', '字典分类', 'dicType', 'DicType', '/base/dicType/index', 1, 1, '15', 'ant-design:android-filled', 3, '77737a345ee0503907e29e0fc6656060', NULL, 1, '2021-04-21 10:43:14', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('6c9274bb2ac733bf1d26f809fef647fc', '引擎管理', '/flowable', 'Flowable', 'LAYOUT', 1, 1, '143', 'ant-design:ant-design-outlined', 1, NULL, NULL, 1, '2021-04-21 10:43:14', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('77737a345ee0503907e29e0fc6656060', '基础数据管理', '/base', 'base', 'LAYOUT', 1, 1, '11', 'ant-design:android-filled', 9, NULL, NULL, 1, '2021-04-21 10:43:14', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('85a5297d8850c524e9baf0eab36f71b7', '职级分类管理', 'jobGradeType', 'JobGradeType', '/org/jobGradeType/index', 1, 1, '15', 'ant-design:audio-filled', 5, '4418c29147a7c2586713823ba8a71ce6', NULL, 1, '2021-05-14 00:16:49', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('929ca8db9678e5a3ff5626984f8e92b9', '代码', 'coding', 'Coding', '/demo/coding/index', 1, 1, '103', NULL, 1, '5', NULL, 1, '2021-04-21 10:43:14', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('995b1ad53e528482981850027eaccc7e', '权限值管理', 'appPrivilegeValue', 'AppPrivilegeValue', '/privilege/appPrivilegeValue/index', 1, 1, '15', 'ant-design:amazon-circle-filled', 5, '1', NULL, 1, '2021-04-21 10:43:14', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('ac24406e18f7c9ceca22d34b928583e6', '案例引擎管理', 'cmmn', 'Cmmn', '/flowable/cmmn/modelInfo/index', 1, 1, '15', 'ant-design:appstore-filled', 3, '6c9274bb2ac733bf1d26f809fef647fc', NULL, 1, '2021-04-21 10:43:14', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('b498ae8264a2533406f0e8f2d9c0de1f', '决策引擎管理', '/dmn', 'Dmn', '/flowable/dmn/modelInfo/index', 1, 1, '15', 'ant-design:amazon-circle-filled', 2, '6c9274bb2ac733bf1d26f809fef647fc', NULL, 1, '2021-04-21 10:43:14', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('bfd09d4348fe480719bc08dda7cd543e', '登录日志', 'sysOperRecord', 'SysOperRecord', '/privilege/sysOperRecord/index', 1, 1, '15', 'ant-design:verified-outlined', 9, '1', NULL, 1, '2023-01-17 10:49:22', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('c1eb20ac68d967e1a83ab354e69248a4', '公司管理', 'company', 'Company', '/org/company/index', 1, 1, '15', 'ant-design:amazon-circle-filled', 1, '4418c29147a7c2586713823ba8a71ce6', NULL, 1, '2021-04-21 10:43:14', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('c9320fbd661d58cce01c11c827db8d27', '角色管理', 'role', 'Role', '/org/role/index', 1, 1, '79', 'ant-design:check-circle-filled', 4, '4418c29147a7c2586713823ba8a71ce6', NULL, 1, '2021-05-13 14:05:02', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('cbfbf41e537d4cc3767db1bf9dfdea86', '岗位管理', 'positionInfo', 'PositionInfo', '/org/positionInfo/index', 1, 1, '15', 'ant-design:calculator-outlined', 8, '4418c29147a7c2586713823ba8a71ce6', NULL, 1, '2021-05-14 00:18:10', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('ce5aa983b0495e5c61c99299190a1ce8', '数据字典', 'dictionary', 'Dictionary', '/base/dictionary/index', 1, 1, '15', 'ant-design:audio-filled', 4, '77737a345ee0503907e29e0fc6656060', NULL, 1, '2021-05-13 14:03:40', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('cead796ca39c009e72954538c1bd438c', '可展开表格', '/comp/table/expandTable', 'expandTable', '/demo/table/expandTable', 1, 1, '127', NULL, 1, '5', NULL, 1, '2021-04-21 10:43:14', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('d6fd0e52fb1c81f039d8a93ecef326c6', '区域管理', 'area', 'Area', '/base/area/index', 1, 1, '15', 'ant-design:amazon-outlined', 5, '77737a345ee0503907e29e0fc6656060', NULL, 1, '2021-05-13 14:03:57', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('dd335c89f01da59d8f4edbe7436d68fe', '账号管理', 'account', 'Account', '/privilege/account/index', 1, 1, '15', 'ant-design:aliwangwang-filled', 1, '1', NULL, 1, '2021-04-21 10:43:14', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('e72804d5e6a00d7af97ca8b0f40d272e', '岗位序列管理', 'positionSeq', 'PositionSeq', '/org/positionSeq/index', 1, 1, '15', 'ant-design:audio-filled', 7, '4418c29147a7c2586713823ba8a71ce6', NULL, 1, '2021-05-14 00:17:53', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('e9d45d9e87570a0324692739d9ce5a91', '测试-系统', 'system', 'system', 'LAYOUT', 1, 1, '15', NULL, NULL, '5', NULL, 1, '2021-04-21 10:43:14', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_module` VALUES ('f37ff584d3f9ff2b1b358abb784ac788', '人员管理', 'personal', 'Personal', '/org/personal/index', 1, 1, '15', 'ant-design:bug-filled', 3, '4418c29147a7c2586713823ba8a71ce6', NULL, 1, '2021-05-13 14:04:49', NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for tbl_privilege_pvalue
-- ----------------------------
DROP TABLE IF EXISTS `tbl_privilege_pvalue`;
CREATE TABLE `tbl_privilege_pvalue`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `position` int(11) NOT NULL COMMENT '整型的位',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `order_no` int(11) NULL DEFAULT NULL COMMENT '排序号',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `creator` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` timestamp(0) NULL DEFAULT NULL,
  `updator` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `del_flag` int(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `position_only_index`(`position`) USING BTREE,
  INDEX `name_only_index`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_privilege_pvalue
-- ----------------------------
INSERT INTO `tbl_privilege_pvalue` VALUES ('3f5d5341de6da9708b90d9286049aa48', 3, '删除', 3, NULL, '2021-04-10 10:15:24', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_pvalue` VALUES ('3f5d5341de6da9708b90d9286049aa49', 0, '添加', 0, NULL, '2021-04-10 10:15:24', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_pvalue` VALUES ('45161e95997b8f043899fd4859093cd1', 4, '打印', 4, NULL, '2021-04-10 10:15:24', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_pvalue` VALUES ('7b28c1c493ce160900edfd951e066387', 7, '发布', 7, '发布操作', '2021-05-14 10:37:10', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_pvalue` VALUES ('8f4c36e65235bda5feaa86d76d485bff', 1, '查询', 1, '000', '2021-04-10 10:15:23', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_pvalue` VALUES ('90910e5510921d652ffe6937790a6cd3', 2, '修改', 2, NULL, '2021-04-10 10:15:24', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_pvalue` VALUES ('ae8a2dd2bfedd8e4789c7165787c8c0b', 5, '导出', 5, NULL, '2021-04-10 10:15:24', NULL, NULL, NULL, 1);
INSERT INTO `tbl_privilege_pvalue` VALUES ('fbac6b2312dbaefbb7a0810e1f5b974c', 6, '授权', 6, NULL, '2021-04-10 10:15:24', NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for tbl_privilege_shortcut_menu
-- ----------------------------
DROP TABLE IF EXISTS `tbl_privilege_shortcut_menu`;
CREATE TABLE `tbl_privilege_shortcut_menu`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '图标',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'url',
  `ic_system_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '系统id',
  `module_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '模块id',
  `order_no` int(11) NULL DEFAULT NULL COMMENT '排序号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_privilege_shortcut_menu
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_privilege_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_privilege_user`;
CREATE TABLE `tbl_privilege_user`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '主键',
  `user_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '工号',
  `real_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '真实姓名',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '密码',
  `tel` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '电话',
  `phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '座机',
  `mobile` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '手机',
  `email` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '邮箱',
  `image` longblob NULL COMMENT '头像',
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '公司id',
  `department_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '部门id',
  `it_user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'it用户id',
  `it_user_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'it用户姓名',
  `is_leader` int(11) NULL DEFAULT 0 COMMENT '是否是领导1:是  0:否',
  `sex` int(11) NULL DEFAULT 0 COMMENT '性别 1标示男 0标示女  2未知',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '地址',
  `fax` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '传真',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  `fail_month` int(11) NULL DEFAULT NULL COMMENT '失效月数',
  `failure_time` timestamp(0) NULL DEFAULT NULL COMMENT '失效时间',
  `acl_timestamp` bigint(32) NULL DEFAULT NULL COMMENT '权限时间戳',
  `pwd_ftime` timestamp(0) NULL DEFAULT NULL COMMENT '密码失效日期',
  `pwd_init` int(11) NULL DEFAULT 0 COMMENT '初始密码是否已修改 1是0否',
  `updator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人',
  `del_flag` int(11) NULL DEFAULT 1 COMMENT '删除标识  0标识已删除   1标识未删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username_index`(`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_privilege_user
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_privilege_user_company
-- ----------------------------
DROP TABLE IF EXISTS `tbl_privilege_user_company`;
CREATE TABLE `tbl_privilege_user_company`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户id',
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '公司id',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `creator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `update_time` timestamp(0) NULL DEFAULT NULL,
  `updator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `del_flag` int(11) NULL DEFAULT 1 COMMENT '1:存在  0：删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_privilege_user_company
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_privilege_user_group
-- ----------------------------
DROP TABLE IF EXISTS `tbl_privilege_user_group`;
CREATE TABLE `tbl_privilege_user_group`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户id',
  `user_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户工号',
  `group_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '角色id',
  `end_date` date NULL DEFAULT NULL COMMENT '截止日期',
  `valid_month` int(11) NULL DEFAULT NULL COMMENT '有效期',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `creator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人',
  `del_flag` int(11) NULL DEFAULT 1 COMMENT '删除标识0：删除1：存在',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_privilege_user_group
-- ----------------------------
INSERT INTO `tbl_privilege_user_group` VALUES ('8b2cf970c984962f0f3f398a4fa377b5', '1', '10100', '33f926c19d1c5afcbcf8ad2d767427cc', NULL, NULL, '2021-05-25 21:57:11', '10100', '2021-05-25 21:57:11', '10100', 1);
INSERT INTO `tbl_privilege_user_group` VALUES ('8df7d3c0991e034a3aad8fef9245f9ca', '5c7e83315630cbc84c9d3b07a612936b', '10101', 'dfda714f8c2003919a1c34c3cd88ef31', NULL, NULL, '2021-05-25 21:57:19', '10100', '2021-05-25 21:57:19', '10100', 1);

-- ----------------------------
-- Table structure for tbl_shiro_session
-- ----------------------------
DROP TABLE IF EXISTS `tbl_shiro_session`;
CREATE TABLE `tbl_shiro_session`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session` longblob NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_shiro_session
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_sys_oper_record
-- ----------------------------
DROP TABLE IF EXISTS `tbl_sys_oper_record`;
CREATE TABLE `tbl_sys_oper_record`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ip` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `oper_content` json NULL,
  `oper_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `source` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date_time` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `year` int(11) NULL DEFAULT NULL,
  `month` int(11) NULL DEFAULT NULL,
  `day` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_sys_oper_record
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;