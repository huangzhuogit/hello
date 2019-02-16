/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : tpzygw

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-01-08 08:37:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `messId` int(11) NOT NULL AUTO_INCREMENT COMMENT '留言编号',
  `messageName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '留言人的姓名',
  `messagePhone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '留言人的电话',
  `messageMark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '留言内容',
  `createTime` date DEFAULT NULL COMMENT '创建时间',
  `updateTime` date DEFAULT NULL COMMENT '查阅时间',
  `is_delete` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '留言状态(1 未读 2 已读)',
  PRIMARY KEY (`messId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '张三', '18520321520', '产品非常好', '2019-01-01', '2019-01-02', '1');
INSERT INTO `message` VALUES ('2', '李四', '13685202152', '产品还行', '2019-01-02', '2019-01-03', '1');
INSERT INTO `message` VALUES ('3', '菲菲', '13685202102', '撒大声地', '2019-01-04', '2019-01-05', '1');
INSERT INTO `message` VALUES ('14', '少帅', '18520321201', '刑事侦查产品真棒', '2019-01-05', '2019-01-07', '1');
INSERT INTO `message` VALUES ('15', '张飞', '13685201235', '我的二哥关羽大哥刘备呢？', '2019-01-07', '2019-01-07', '1');
INSERT INTO `message` VALUES ('16', '关羽', '18202325210', '我大哥和三弟呢', '2019-01-07', '2019-01-07', '1');

-- ----------------------------
-- Table structure for `test`
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品编号',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '图片名称',
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品图片',
  `mark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详细说明',
  `createTime` date DEFAULT NULL COMMENT '创建时间',
  `updateTime` date DEFAULT NULL COMMENT '修改时间',
  `is_delete` int(255) DEFAULT NULL COMMENT '是否删除1已删除 0未删除',
  `tid` int(11) DEFAULT NULL COMMENT '类型ID',
  `product` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品简介',
  `territory` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '使用领域',
  `introduce` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '软件介绍',
  `demand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '系统需求',
  `requires` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '硬件要求',
  `tvideo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品视频',
  PRIMARY KEY (`id`),
  KEY `tid` (`tid`),
  CONSTRAINT `tid` FOREIGN KEY (`tid`) REFERENCES `type` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', '惊讶的柯南', '1546411352899_920.jpg', '柯南十分惊讶', '2018-12-27', '2019-01-07', '1', '1', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('2', '打伞的柯南', 'b.jpeg', '图片十分丑', '2018-12-27', '2019-01-02', '1', '1', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('3', '周杰伦', '1546583210452_171.jpg', '亚洲天王', '2018-12-27', '2019-01-04', '1', '1', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('5', '神之背后', '1546408582965_193.jpg', '真棒的图片', '2019-01-02', '2019-01-02', '1', '1', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('6', '火影晓组织', '1546411375311_135.jpg', '非常棒的组织', '2019-01-02', '2019-01-02', '1', '2', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('7', '九尾鸣人', '1546411758037_500.jpg', '典型的屌丝逆袭', '2019-01-02', '2019-01-02', '1', '2', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('8', '鸣人以及佐助', '1546411805069_674.jpg', '双男主', '2019-01-02', '2019-01-02', '1', '2', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('9', '火影第七班', '1546411869091_175.jpg', '一个无敌的班级', '2019-01-02', '2019-01-02', '1', '2', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('10', '仙模式鸣人', '1546411916818_532.jpg', '踏入仙人模式', '2019-01-02', '2019-01-02', '1', '3', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('11', '西装周杰伦', '1546825652842_57.jpg', '亚洲天王', '2019-01-02', '2019-01-07', '1', '3', '现场勘查虚拟仿真训练系统', '公安政法大学', '现场勘查虚拟系统这款软件是', 'win7 winXp win10', '内存：4G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('12', '宇智波鼬', '1546412040629_100.jpg', '一个天才', '2019-01-02', '2019-01-02', '1', '3', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('13', '小乌', '1546412106554_182.jpg', '一个冷漠的人', '2019-01-02', '2019-01-02', '1', '3', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('14', '黑崎一胡', '1546412128585_907.jpg', '死神男主', '2019-01-02', '2019-01-02', '1', '4', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('15', '冬狮郎', '1546412228560_212.jpg', '最年轻的天才队长', '2019-01-02', '2019-01-02', '1', '4', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('16', '队长以及副队长', '1546412275423_171.jpg', '死神中的几个队长', '2019-01-02', '2019-01-02', '1', '4', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('17', '第四十刃', '1546412316025_482.jpg', '最帅气的十刃', '2019-01-02', '2019-01-02', '1', '4', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('18', '蓝色柯南', '1546412345701_259.jpg', '名侦探', '2019-01-02', '2019-01-02', '1', '5', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('19', '图书馆柯南', '1546412370510_412.jpg', '图书馆中的名侦探', '2019-01-02', '2019-01-02', '1', '5', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('20', '新一以及小兰', '1546412411359_698.jpg', '羡慕的小情侣', '2019-01-02', '2019-01-02', '1', '5', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('21', '兄弟反目', '1546412438536_236.jpg', '火影双男主的反目', '2019-01-02', '2019-01-02', '1', '5', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('28', '吉他JJ', '1546494064982_372.jpg', '弹吉他的林俊杰', '2019-01-03', '2019-01-03', '1', '1', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('29', '素描JJ', '1546494097604_604.jpg', '一幅素描画-JJ', '2019-01-03', '2019-01-03', '1', '1', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('30', '捧花的JJ', '1546494149469_540.jpeg', '可惜没如果的MV', '2019-01-03', '2019-01-03', '1', '1', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('31', '不足一岁阿拉斯加', '1546494655814_155.jpg', '萌萌的阿拉斯加', '2019-01-03', '2019-01-03', '1', '5', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('32', '西伯利亚雪橇犬', '1546494691333_70.jpeg', '傻傻的二哈', '2019-01-03', '2019-01-03', '1', '5', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('33', '满了一岁阿拉斯加', '1546495110673_258.gif', '幼年的阿拉斯加', '2019-01-03', '2019-01-03', '1', '3', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('34', '哈士奇', '1546495165515_657.jpg', '一岁不到的西伯利亚雪橇犬', '2019-01-03', '2019-01-03', '1', '3', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('35', '林荫楠', '1546495519309_919.jpg', '高校美女', '2019-01-03', '2019-01-03', '1', '3', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('36', '胖阿拉斯加', '1546495542784_137.jpg', '萌萌的阿拉斯加', '2019-01-03', '2019-01-03', '1', '3', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('37', '盲僧', '1546495778103_834.jpg', 'LOL中的打野', '2019-01-03', '2019-01-03', '1', '3', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('38', '吕布', '1546496536549_422.jpg', 'LOL中的打野', '2019-01-03', '2019-01-03', '1', '4', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('39', '卡牌大师', '1546496623214_2.jpg', 'LOL中的中单', '2019-01-03', '2019-01-03', '1', '4', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('40', '方巧巧', '1546496739905_751.jpg', '卧室美女', '2019-01-03', '2019-01-03', '1', '4', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('41', '钢琴JJ', '1546496776836_639.jpg', '弹钢琴的林俊杰', '2019-01-03', '2019-01-03', '1', '4', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('42', '贾斯丁比伯', '1546497079140_236.jpg', '美国天才少年歌手', '2019-01-03', '2019-01-03', '1', '4', '犯罪现场勘查虚拟仿真训练系统', '公安政法院校', '犯罪现场勘查虚拟系统这款软件是', 'win7 win8 win10', '内存：2G以上；CPU：双核1.2G赫兹以上；硬盘容量：50G以上；显卡：英伟达显卡GT430或者以上；AMD显卡HD5450或者以上', 'movie');
INSERT INTO `test` VALUES ('45', '吉他JJ_Lin', '1546832591567_752.jpg', '弹吉他的临绝境', '2019-01-07', '2019-01-07', '1', '4', '这个产品是弹着吉他的林俊杰', '音乐教学', '非常棒', '爱音乐', '有钱', 'movie');

-- ----------------------------
-- Table structure for `type`
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `tid` int(11) NOT NULL AUTO_INCREMENT COMMENT '类型ID',
  `tname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '类型名称',
  `createTime` date DEFAULT NULL COMMENT '创建时间',
  `updateTime` date DEFAULT NULL COMMENT '修改时间',
  `is_delete` int(255) DEFAULT NULL COMMENT '是否删除1已删除 0未删除',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '刑事侦查', '2018-12-27', '2018-12-29', '1');
INSERT INTO `type` VALUES ('2', '交通管理', '2018-12-27', '2018-12-29', '1');
INSERT INTO `type` VALUES ('3', '治安管理', '2018-12-27', '2018-12-29', '1');
INSERT INTO `type` VALUES ('4', '警务战术', '2018-12-27', '2018-12-29', '1');
INSERT INTO `type` VALUES ('5', '反恐训练', '2018-12-27', '2019-01-02', '1');

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `loginName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '登录名',
  `loginPwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '登录密码',
  `userName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userPhone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '电话',
  `is_delete` int(255) DEFAULT NULL COMMENT '是否删除1已删除 0未删除',
  `createTime` date DEFAULT NULL COMMENT '创建时间',
  `updateTime` date DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', 'admin', '123123', '小猪', '18785753284', '1', '2018-12-27', '2018-12-29');
INSERT INTO `userinfo` VALUES ('2', 'aaa', '123123', '小妞', '13698523021', '1', '2018-12-27', '2018-12-29');
INSERT INTO `userinfo` VALUES ('3', 'bbb', '123123', '小天', '15052021235', '1', '2018-12-27', '2018-12-29');
INSERT INTO `userinfo` VALUES ('4', 'dsa', '183445', '小的', '18367183445', '1', '2018-12-27', '2018-12-29');
INSERT INTO `userinfo` VALUES ('5', 'qwe', '123123', '小龙', '18532502145', '0', '2018-12-28', '2018-12-29');
INSERT INTO `userinfo` VALUES ('6', 'wa', '123123', '小区', '13698549928', '0', '2018-12-29', '2018-12-29');
INSERT INTO `userinfo` VALUES ('8', 'weq', '123123', '徐爱琴', '18535203214', '1', '2018-12-29', '2019-01-07');
