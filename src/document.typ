/* 配置 */
#set page("iso-b5", margin: (top: 0.8in, bottom: 0.6in))
#set text(lang: "zh")
#show text.where(lang: "zh", style: "normal"): set text(font: "Source Han Serif SC")
#show text.where(lang: "zh", style: "italic"): set text(font: "KaiTi")
#show emph: it => {
	if text.style == "normal" {
		set text(style: "italic");
		it;
	}
	else {
		set text(style: "normal");
		it;
	}
}
#set par(linebreaks: "optimized")
#show heading: it => {
	it;
	v(0.8em);
}
#show heading.where(level: 1): it => {
	set align(center);
	set text(size: 18pt);
	it;
}
#set underline(offset: 2pt)
#set table(stroke: none)
#set block(breakable: true)
#show link: it => text(underline(it), fill: blue)
#show table.cell.where(y: 0): set text(weight: "bold")

/* 定义 */
#let title-text = "未来媒体协会史"
#let name = it => {
	underline(emph(it));
}
#let brokenlist = arr => arr.intersperse(linebreak()).join()

/* 页眉 */
#set page(
	header: box(
		width: 100%,
		inset: (bottom: 0.2em),
		stroke: (bottom: 0.5pt),
	)[
		#align(right)[#title-text]
	],
	numbering: "1",
)

/* 标题 */
#{
	set page(margin: 0pt);
	box(width: 100%, height: 100%)[
		#set align(center + horizon)

		#text(title-text, size: 24pt, weight: "bold")

		王念一

		最后编辑：#datetime.today().display("[year]年[month]月[day]日")
	];
	pagebreak();
}

#outline(title: "目录")

#pagebreak()
= 阅读说明

本书是中国传媒大学#emph[未来媒体协会]（Future Media Association，FMA）的社史，为前社员#name[王念一]“王小屁”（20 游技）所修，截止到目前仍在更新。

修订本史的目的在于记住、品味、传承。
受限于修史者的个人局限性，内容将会不可避免地带有主观色彩，甚至于经常能够听到“春秋笔法”的评价。
对此致歉。

不论如何，有下列基本方针：
- 文风简练，句子不加冗余结构，用尽可能少的词语说清事情、传达态度。
- 凡事件细节，与 FMA 无直接关系的部分不写。
- 尽管细节上精简，在事件层面上的选取则比较宽松——凡有助于建立 FMA 形象的事例，即使是平行主体的对比（如游研社），也可写。

== 体例结构

本史分为历志、杂史、列传三个部分。

历志按时间顺序、以管理班子换届为单位记录未来媒体协会的发展历程。
除了发生的事外，还会用表格的形式整理当届的管理班子成员、开展的课程、举办的活动等信息。

杂史以主题为索引记录事件。一件事于杂史而非历志中记录，若其满足以下条件中的若干：
- 有鲜明的主题性；
- 脱离主时间线；
- 与社团的直接关系不大；
- 被多次引用，避免重复叙述。

列传则介绍每个值得介绍的人物，佐以其不足以列入历志或杂史的琐事。
视内容，关系密切的人物可能会列进同一个子标题中。

== 名称格式

名称（人名、组织名、地点名等）首次正式出现时，会#name[履以下划线]，以与正常内容相区分。
出版物名则由于《包括在书名号内》，不需再加以区分。

人名的格式如是：本名“圈名”（身份）。
其中，本名即真名；
圈名即其人与社团、校园中人所周知的外号，常人一般对其的称呼方式；
身份可能是 CUC 的标准班级格式（如「20 游技」）或描述性文字（如「社团的指导老师」）。

取决于考证的情况，不知道本名的人物会只用圈名指代（除初次出现，后续不加引号）；
有些人物可能没有圈名，则不标出；
不明确身份或上下文足以示明的身份也不额外标出。

如果人物又在列传中出现，则会在首次出现时附上到其列传子标题的超链接。

== 排版学方针

- 引言、非直接叙述的文字用「直角引号」；作比方的文字用“弯引号”。
- 需着重强调的行内部分、段落引言处，用更换字体的方式区分（类比西文排版之意体）。

#pagebreak()
= 历志

== 初代目
<历志:初代目>

2016年9月，#link(<列传:张昊阳>)[#name[张昊阳]“世欺子”（15 行政管理）]在中国传媒大学创立社团虚拟现实协会，简称#name[广院VR社]、#name[CUCVR]。社团的主要活动内容为虚拟现实技术相关的研究与应用。指导老师是信通学院的#link(<列传:赵宇>)[#name[赵宇]]。

#figure(
	caption: [初代目领导班子。],
	table(columns: 2,
		table.hline(stroke: 1pt),
		[部门], [人员],
		table.hline(stroke: 0.5pt),
		[社长], [张昊阳],
		[策划部], [（未知）],
		[文宣部], [（未知）],
		[技术部], [（未知）],
		[事务部], [（未知）],
		table.hline(stroke: 1pt),
	)
)

#figure(
	caption: [初代目间举办的活动。],
	table(columns: 3,
		table.hline(stroke: 1pt),
		table.cell(colspan: 2)[日期], [事项],

		table.hline(stroke: 0.5pt),
		table.cell(rowspan: 1)[8月],

		[25日], link("https://mp.weixin.qq.com/s/uu4QynWSQL0nTetRwK7Nng")[参加搜狐年度VR大会],

		table.hline(stroke: 0.5pt),
		table.cell(rowspan: 3)[9月],

		[1日], link("https://mp.weixin.qq.com/s/WgZMbZU0vUXvtqOGVd6B_A")[采访《三国杀》制作人兼CUC校友黄恺],
		[17--21日], link("https://mp.weixin.qq.com/s/sXsqLPwm6NPsbOR82Dsdlw")[参观大厂影视基地],
		[28日], [参加以色列Walking App VR引擎测试赛，取得金奖],

		table.hline(stroke: 0.5pt),
		table.cell(rowspan: 2)[10月],

		[23日], link("https://mp.weixin.qq.com/s/x85rf1f-2Rol9m0SSdo-NQ")[百团大战],
		[24日], [于广博#link("https://mp.weixin.qq.com/s/6gHHMyfORHuOgh5wh0gxmQ")[召开迎新会]],

		table.hline(stroke: 0.5pt),
		table.cell(rowspan: 2)[11月],

		[2日], link("https://mp.weixin.qq.com/s/zFRpFf-90lzlfQhYlOh0Yw")[于终极科技慈云寺店访问体验],
		[20日], link("https://mp.weixin.qq.com/s/WqN5Na-M-45fKG6UV-pSZA")[于TVR访问交流],

		table.hline(stroke: 0.5pt),
		table.cell(rowspan: 2)[12月],

		[7日], link("https://mp.weixin.qq.com/s/43pTM3BWA1HeuyP2wj4zgA")[于北京开心互娱信息技术有限公司访问学习],
		[16日], [加入中关村品牌VR联盟],

		table.hline(stroke: 0.5pt),
		table.cell(rowspan: 3)[3月],

		[ ], link("https://mp.weixin.qq.com/s/eRU1DgRMs7Z62imheJksYA")[专访麦课教育CEO刘义光],
		[24日], link("https://mp.weixin.qq.com/s/7OYzm3obpub49CM9at3wcw")[承办第一次中关村品牌VR联盟系列沙龙活动],
		[28日], link("https://mp.weixin.qq.com/s/qWsWQ3jKt6SSnXNCPYzbkA")[潍坊市国家高新技术产业开发区领导来访参观实验室],

		table.hline(stroke: 0.5pt),
		table.cell(rowspan: 1)[4月],

		[8日], link("https://mp.weixin.qq.com/s/fcz9Pao__yQIYgcQhOw7nw")[应邀访问完美世界总部],

		table.hline(stroke: 0.5pt),
		table.cell(rowspan: 1)[5月],

		[ ], link("https://mp.weixin.qq.com/s/PNQWssw45hEL54-5yCKsRg")[协办第三届VR视频大赛],

		table.hline(stroke: 1pt),
	)
)

== 临时约大总统
<历志:临时约大总统>

2017年7月，张昊阳休学创办#link(<杂史:CUCVR>)[北京触梦文化科技有限公司]，将社团交给#link(<列传:李沛宸>)[#name[李沛宸]（16导演）]临时打理。

== 二代目
<历志:二代目>

2017年9月，#link(<列传:张天鸿-邓雨晨>)[#name[张天鸿]（16数媒技）]接任社长，#link(<列传:张天鸿-邓雨晨>)[#name[邓雨晨]（16数媒技）]任副社长。

#figure(
	caption: [二代目领导班子。],
	table(
		columns: 2,
		table.hline(stroke: 1pt),
		[部门], [人员],
		table.hline(stroke: 0.5pt),
		[社长], [张天鸿、邓雨晨],
		[策划部], [王铎霖],
		[技术部], [余吉鑫],
		[网络部], [林淑琪],
		[外联部], [袁倩],
		table.hline(stroke: 1pt),
	)
)

#figure(
	caption: [二代目间举办的活动。],
	table(columns: 3,
		table.hline(stroke: 1pt),

		table.cell(colspan: 2)[日期], [事项],

		table.hline(stroke: 0.5pt),
		table.cell(rowspan: 1)[10月],

		[27日], [#link("https://mp.weixin.qq.com/s/oqxBqJkMci10MyT-Lh4Nbw")[百团大战]、迎新宣讲],

		table.hline(stroke: 0.5pt),
		table.cell(rowspan: 1)[11月],

		[25日], [南操#link("https://mp.weixin.qq.com/s/dy4ZUS6qMgGBnK28GFHBDA")[百团全景拍摄教学大战]],

		table.hline(stroke: 0.5pt),
		table.cell(rowspan: 1)[12月],

		[23日], [主楼804，#link("https://mp.weixin.qq.com/s/1NMEYBLSlib-6M-JBOz28g")[UE实训课]],

		table.hline(stroke: 1pt),
	)
)

== 三代目
<历志:三代目>

2018年7月，#link(<列传:汪飞虎>)[#name[汪飞虎]（17 数媒技）]接任社长，不设副社长。

同学年，张昊阳负责的#name[先进交互与虚拟现实实验室]成立，地点在国重1502；实验室对社团活动开放。

此间活动无考。

== 复辟代目
<历志:复辟代目>

2019年，张昊阳创业失败，回校复学。

暑假，有老师前来“参观”，后从赵宇手中将实验室抢走；社团失去活动场地。

同年，虚拟现实协会改名#name[未来媒体协会]（#name[Future Media Association]），简称#name[FMA]；社团的活动内容转为数字媒体相关领域。

7月，张昊阳接任社长，#link(<列传:沈琰周>)[#name[沈琰周]]任副社长。

#figure(
	caption: [复辟代目领导班子。],
	table(
		columns: 3,
		table.hline(stroke: 1pt),
		[部门], [主理], [干事],
		table.hline(stroke: 0.5pt),
		[社长], [张昊阳、沈琰周], [-],
		[技术部], [沈琰周], [任东伟、梁诗惠、崔馨月、曾谢成、张仔浩],
		[美术部], [周子腾], [安晴、陈奕帆、杜心雨],
		[音乐部], [王思萌], [刘子清、曹弘沐、王一枝],
		[动画部], [赵一桥], [戢宇翔、王森、王承、安雪颖],
		[宣传部], [余连浩], [陈柏宇、许佳欣、程尹宣],
		[项目部], [王韬涵], [詹玖玲、王雨晴、张妤萌],
		[演艺部#footnote[学年中新建。]], [王一枝], [-],
		table.hline(stroke: 1pt),
	)
)

#figure(
	caption: [复辟代目间开设的课程。],
	table(columns: 4,
		table.hline(stroke: 1pt),
		table.cell(colspan: 2)[日期], [地点], [事项],

		table.hline(stroke: 0.5pt),
		table.cell(rowspan: 3)[9月],

		[22日], [1502], [#link("https://mp.weixin.qq.com/s/Z-UWydG437TscaJQ_BRM0w")[技术部第一次课程]，社长女装教学UE],
		[], [], [发布了#link("https://mp.weixin.qq.com/s/vxlUYgRQCxnRmkGPHX58Yg")[一箩筐课程预告]],
		[27日], [], [音乐部与制音工厂合作：虚拟人声与编曲扒谱实战课],

		table.hline(stroke: 0.5pt),
		table.cell(rowspan: 2)[每周],

		[周四], [1502], [动画部：Maya 建模],
		[周二、六], [1502], [技术部：UE 基础与游戏设计],

		table.hline(stroke: 0.5pt),
		table.cell(rowspan: 1)[10月],
		[19日], [], [美术部第一次课程],

		table.hline(stroke: 0.5pt),
		table.cell(rowspan: 5)[11月],
		[17日], [], [演艺部第一次课程：《动画表演与角色扮演创作》],
		[23日], [], [美术部课程],
		[24日], [], [演艺部第二次课程],
		[26日], [], [动画部：《Nuke视频合成与Substance模型上色》],
		[29日], [], [音乐部与制音工厂合作：编曲系列课程],

		table.hline(stroke: 0.5pt),
		table.cell(rowspan: 3)[12月],
		[1日], [动捕实验室], [演艺部授课],
		[20日], [], [关于《天气之子》的后期制作技术与流程分享讲座],
		[24日], [], [UE插件Speed Tree应用课程],

		table.hline(stroke: 1pt),
	)
)

== 四代目
<历志:四代目>

2020年7月，#link(<列传:王一枝>)[#name[王一枝]（18 音编）]接任社长，沈琰周留任副社长。赵宇提供了主楼四层的实验室，社团活动遂转于是。

#figure(
	caption: [四代目领导班子。],
	table(
		columns: 3,
		table.hline(stroke: 1pt),
		[部门], [正], [副],
		table.hline(stroke: 0.5pt),
		[社长], [王一枝], [沈琰周],
		[技术部], [张素哲], [倪豪、彭高杲、曾谢成],
		[动画部#footnote[后分为平面、三维两支，平面与美术部并为艺术部、三维归入技术部。]], [王森], [田济舟],
		[美术部], [陈柏宇], [田济舟],
		[宣传部], [许佳欣], [程尹宣],
		[策划部], [邱耿煜], [“九叶”、梁诗惠],
		[音乐部], [刘子清], [贺英杰],
		[演艺部], [王一枝], [刘润瀛],
		table.hline(stroke: 1pt),
	)
)

#figure(
	caption: [四代目间举办的活动。],
	table(columns: 3,
		table.hline(stroke: 1pt),

		table.cell(colspan: 2)[日期], [事项],

		table.hline(stroke: 0.5pt),
		table.cell(rowspan: 1)[7月],

		[22日], [#link("https://mp.weixin.qq.com/s/doriOlMBjcmLzp_LyPiGjg")[换届大会]],

		table.hline(stroke: 0.5pt),
		table.cell(rowspan: 2)[8月],

		[17日], [#link("https://mp.weixin.qq.com/s/RP2cf3NMnuHXzXBc_5agjg")[动森招新宣传]],
		[24日], [#link("https://mp.weixin.qq.com/s/K5245YnggpIjih5Cm7OVFA")[H5招新问卷]],

		table.hline(stroke: 0.5pt),
		table.cell(rowspan: 1)[10月],

		[24日], [#link("https://mp.weixin.qq.com/s/QwEGXh9upNdMoSPW3e6CCg")[百团大战]],

		table.hline(stroke: 0.5pt),
		table.cell(rowspan: 2)[4月],

		[18日], [#link("https://mp.weixin.qq.com/s/KqglgukTYShrSyEbE7GTAw")[百团大战]],
		[27日], [联动游研社、米哈游开办#link("https://mp.weixin.qq.com/s/pcWFlPBmvPgLbYfQ7QvhRg")[Future Game Jam]],

		table.hline(stroke: 0.5pt),
		table.cell(rowspan: 2)[5月],

		[5日], [邀请新媒体人张浩淼来校开设#link("https://mp.weixin.qq.com/s/uhobWhFIrVEdW5vcGoDwFA")[新媒体讲座]],
		[5日], [Future Game Jam#link("https://mp.weixin.qq.com/s/z7qSpYt5GXXSKOkJofuV5Q")[结果出炉]],

		table.hline(stroke: 1pt),
	)
)

#figure(
	caption: [四代目间开设的课程。],
	table(columns: 5,
		table.hline(stroke: 1pt),
		table.cell(colspan: 2)[日期], [地点], [主讲人], [事项],

		table.hline(stroke: 0.5pt),
		table.cell(rowspan: 9)[10月],

		[11日], [403], [王韬涵], [策划部：《认真的独立游戏策划讲解》],
		[11日], [403], [刘泓立], [技术部：《虚幻4中预计算的辐照度估计》],
		[17日], [48教南门], [], [演艺部：《表演实践课——社彩赛博朋克》],
		[17日], [413], [张素哲], [技术部：《技术部UE4讲解——从入门到放弃》],
		[18日], [413], [刘泓立], [技术部《技术部UE4讲解——全民连连看》],
		[31日], [], [], [美术部与动画部联动课程],
		[31日], [], [田济舟], [美术部：天璃企划介绍],
		[31日], [], [王森], [动画部：动画制作流程],
		[31日], [], [陈柏宇], [动画部：Blender实用],

		table.hline(stroke: 1pt),
	)
)

== 五代目
<历志:五代目>

2021年7月，#link(<列传:许佳欣>)[#name[许佳欣]（19 新闻）]接任社长，#link(<列传:程尹宣>)[#name[程尹宣]（19 广电工）]接任副社长。

10月31日，发生#link(<杂史:山海经事件>)[山海经事件]。

春，盖疫情未开学。

盖许好广招人而轻视技术社团之实质，推销校园卡一事又受到广泛诟病，此届中社团开始展现出空虚之势。
虽然社员众多，但是并没有什么有价值的技术活动；取而代之的是无尽的娱乐、约饭和小团体。

#figure(
	caption: [五代目领导班子。],
	table(
		columns: 3,
		table.hline(stroke: 1pt),
		[部门], [正], [副],
		table.hline(stroke: 0.5pt),
		[社长], [许佳欣], [程尹宣],
		[宣传部], [吴雨桐], [徐睿哲],
		[技术部], [张素哲], [孙睿],
		[音乐部], [何禹衡], [孙晨、李蔚],
		[艺术部], [赵怡驰], [周子煊],
		[策划部], [韩文钦], [徐嘉蔚],
		[行政部#footnote[后因部长精神问题废除。]], [豆利利], [-],
		table.hline(stroke: 1pt),
	)
)

#figure(
	caption: [五代目间举办的活动。],
	table(columns: 3,
		table.hline(stroke: 1pt),

		table.cell(colspan: 2)[日期], [事项],

		table.hline(stroke: 0.5pt),
		table.cell(rowspan: 1)[7月],

		[25日], [#link("https://mp.weixin.qq.com/s/iErzB45wCf2sZsZ4gA1SPw")[换届大会]],

		table.hline(stroke: 0.5pt),
		table.cell(rowspan: 1)[8月],

		[22日], [#link("https://mp.weixin.qq.com/s/LbFjAq4j_gmT7oDZ8IieRg")[社员招新]，上线H5问卷],

		table.hline(stroke: 0.5pt),
		table.cell(rowspan: 2)[9月],

		[8日], [受联通赞助，#link("https://mp.weixin.qq.com/s/JUnJnFT0_WyGKbH6L9pzCA")[推销校园宽带、校园卡]],
		[15日], [举办#link("https://mp.weixin.qq.com/s/_tvGBaQTgMLaH_zO8iSEZQ")[未来集市]],

		table.hline(stroke: 0.5pt),
		table.cell(rowspan: 3)[10月],

		[16日], [#link("https://mp.weixin.qq.com/s/n9nzIYrqBprmeXayvIfdTw")[百团大战]],
		[27日], [一教 214，干事招新宣讲],
		[27日], [#link("https://mp.weixin.qq.com/s/8tIWxoLClfSD-pURJ34ang")[万圣节山海经主题校园探秘活动]],

		table.hline(stroke: 0.5pt),
		table.cell(rowspan: 2)[11月],

		[6日], [#link("https://mp.weixin.qq.com/s/PgdX4etbP3VLUBe5LkihHw")[FMA小镇（Minecraft）开服仪式]],
		[17日], [#link("https://mp.weixin.qq.com/s/BH7A5LyHfjQoPITBy7f7Qg")[推销摄影器材租赁]],

		table.hline(stroke: 1pt),
	)
)

#figure(
	caption: [五代目间开设的课程。],
	table(columns: 5,
		table.hline(stroke: 1pt),
		table.cell(colspan: 2)[日期], [地点], [主讲人], [事项],

		table.hline(stroke: 0.5pt),
		table.cell(rowspan: 1)[10月],

		[24日], [413], [王念一], [《Git入门（一）》],

		table.hline(stroke: 1pt),
	)
)

== 六代目
<历志:六代目>

2022年7月，#name[吴雨桐]“斐尔”（20 汉教）接任社长，#name[孙晨]“藤鸮”“藤壶”（20 自动化）接任副社长。

受疫情影响，二位社长不约而同地选择了摆烂。
其主要方针为：「只要社团不砸在我手里就行」。
在任期间没有开展值得称道的活动。
社团由盛转衰。

是冬，#link(<杂史:王念一弹劾邱宸晨>)[王念一弹劾钦定的继任社长]，遭驱逐出社。

#figure(
	caption: [六代目领导班子。],
	table(
		columns: 3,
		table.hline(stroke: 1pt),
		[部门], [正], [副],
		table.hline(stroke: 0.5pt),
		[社长], [吴雨桐（20 汉教）], [孙晨（20 自动化）],
		[宣传部], [邱宸晨（21 计广）], [林思思（21 网新）],
		[技术部], [吕鑫元（21 游技）], [郑佳蕾（22 数媒影视）],
		[音乐部], [魏群弢（21 广电工）], [技术组：黄诗垚#linebreak()活动组：袁梓祎（21 数媒网络）、王颖琳（21 营销）],
		[艺术部], [赵怡驰（20 戏美）], [周子煊],
		[策划部], [鲁鹄歌（21 戏文）], [戎晓雅“加拉哈德”（21 媒创）],
		table.hline(stroke: 1pt),
	)
)

== 七代目
<历志:七代目>

2023年6月，#name[邱宸晨]“咕咕子”（21 计广）接任社长，#name[戎晓雅]“加拉哈德”（21 媒创）接任副社长。

受疫情影响，赵宇将实验室的使用权限收回，不再开放给社团使用；
然而对于希望使用实验室的社员，管理层的态度却是百般掩盖阻挠。

一年未有活动，百团又不积极招新，社团衰至极点。

#figure(
	caption: [七代目领导班子。],
	table(
		columns: 2,
		table.hline(stroke: 1pt),
		[部门], [干事],
		table.hline(stroke: 0.5pt),
		[社长], [邱宸晨],
		[副社长], [戎晓雅],
		[音乐部], brokenlist((
			[成可“Elis”（22传播）],
			[“糖糖”（22电音）],
			[赵永炜（22匈语）],
			[郭桦菁（22音编）],
			[“纸雾”（22广电工）],
			[贺雨婷（21网新）],
			[洪洁欣（21导演）],
		)),
		[策划部], brokenlist((
			[杨文轩“三文鱼”（22数娱）],
			[蒋昭宇“滑稽”（22 电信）],
			[郝晓明“江楚晓明”（22国传）],
		)),
		table.cell(colspan: 2)[（其余不知）],
		table.hline(stroke: 1pt),
	)
)

== 八代目
<历志:八代目>

2024 年，疫情落幕，社团得以恢复实验室的使用。

五月底，经社内选举，#name[袁章埔]“gxLight”（23 游技）胜过#name[蒋昭宇]“滑稽君”（21 电信）继任社长，后者任副社长。
换届时，社员剩约三四十余人；邱宸晨将社费凑成 ￥1666.6 交给袁，并告之：社团本学期活动数量或不足通过审查，促其补办活动以应付审核。
于是六月中旬，袁遂于短期内连办数场形式性活动，并存留痕迹，以充数自救。

同六月，#link(<杂史:游研社的关停>)[游研社（GRDC）]被关停，其部分成员并入 FMA。

九月十日许，社团部（原社联）内部已有拟注销社团之议，FMA亦列其中。
该消息由社团部干事#name[李永琴]“一夕”（23 广电工）以及其#name[李远哲]（23 游技）私下告知袁。

戎晓雅在游研社管理群中得闻此事，竟径去诘问社团部。
发现消息外泄后，社团部即行封锁传播，并以“内鬼”为名清查两日，将双李除名。
二人随后加入 FMA：李永琴去了音乐部；李远哲则任技术部副部。

二十日许，袁偕管理成员三人与社团部十一人申辩于游泳馆上的办公室，乃得悉社团已两年未过审之实情。
袁恳请再次保全，社团部也很勉强，无法保证上级会有何处理。
后又与赵宇交流。
赵大为愤愤：「这么大个社团，怎么能说注销就注销了！」
遂出面斡旋，方得免。

受此事影响，是年百团，FMA 未能得摊位。
袁随机应变，以 QQ 新生群为主阵地宣传，将学生直接引流到国重地下室，同样取得了非常良好的招新效果。
社团人数重新扩充到了近 150 人。

学年初，社团诸部门便已将本学期计划开展的活动规划好了。
一学年下来，社团活动按部就班地进行。

2025 年末，#link(<杂史:董跃夺实验室>)[董跃夺走了实验室]，FMA 失去了第二个稳定根据地。

叠纸联系到社团，希望以社团为单位组建人才库。
袁与其他管理成员讨论后，决定接下，并交给#name[朱程]（23 舆情）办理。

八月，#link(<杂史:郎琅谋逆>)[郎琅谋逆]失败。

#figure(
	caption: [八代目领导班子。],
	table(
		columns: 3,
		table.hline(stroke: 1pt),
		[部门], [正], [副],
		table.hline(stroke: 0.5pt),
		[社长], [袁章埔], [蒋昭宇],
		[技术部], [王澍琪“pleasant233”（23 游技）], [李远哲],
		[艺术部], [刘正宽“小宽fly”（23 游技）], [-],
		[音乐部], [李周航“星渊Milky”（23 广电工）], [-],
		[游研部], [周溢轩“1god”（23 游技）], [-],
		[运营部], [宋思瑶“41”（23 视传）], [朱程、张雨涵（非本校）],
		table.hline(stroke: 1pt),
	)
)

== 九代目
<历志:九代目>

#pagebreak()
= 杂史

== 先进交互与虚拟现实实验室、北京触梦文化科技有限公司
<杂史:CUCVR>

2017年7月，张昊阳休学创立了#name[北京触梦文化科技有限公司]。

2018年复学；7月，从社团事务中脱出身来，在学校创立#name[先进交互与虚拟现实实验室]。实验室位于国重15层1502，是一处风景极佳且没有宵禁的风水宝地。张昊阳将实验室开放给CUCVR社团内部活动用，一时间，1502成了核心社员们每夜party的固定去处。

实验室帮扶校内创新创业大赛参赛者，屡获佳绩，故得以存续和运转，由信通学院综合实验中心提供场地和经费。

同年秋，#name[游戏研发社]时任社长#name[王思遥]因无处开展社团活动	人员稀少濒临解散，找到张昊阳寻求帮助，遂亦将1502开放给游研社。

年末，张昊阳作为北京市文创领域大学生创业者代表，参加北京市市委宣传部组织的集中培训，期间认识了某文化传媒公司（疑为#name[北京锦熹文化传媒有限公司]）。

2019年4月，实验室若干成员通过触梦公司中标了为上述文化传媒公司提供数字艺术制作服务的机会。

是夏，实验室核心成员有：张昊阳、赵一桥、吕鸿风、沈琰周、王思遥、王韬涵、周子腾、王思萌。

项目最终流标，触梦公司起诉该文化公司。

2020年暑假，实验室被前来“参观”的老师设法抢走。

2021年，触梦公司最终败诉，张昊阳身负数十万元债务。

== 山海经事件
<杂史:山海经事件>

2021年10月31日，由于前来参加万圣节活动的远超预期。起始场地一教被挤满后，管理员关停了教学楼。同学们兴致犹在，遂去操场游赏，复爆满。少顷，校保卫处出动巡逻车驱散了人群。之后社联更换了指导老师，收紧了活动审批。

== 游戏研发社派对风波
<杂史:游戏研发社派对风波>

2021年，#name[王韬涵]回校游玩，时任#name[游戏研发社]社长#name[黄蓉]为之举办欢迎派对，#name[张昊阳]与#name[苏熙城]均应邀到场。

派对中，张昊阳趁酒兴隐言「在场有一位我喜欢的姑娘」，实则意指黄蓉，殊不知彼时黄与苏私下已生情愫。在场的知情者一时尴尬，苏借口离席。有人#footnote[无考谁何。]将张拉到一旁解释，于是张亦欲离席，奔厕所而去。苏为了避开张，特意绕了一圈，结果在厕所门口与张撞见。

后来苏做了游戏研发社的继任社长，张对此的评价是：「他当时追黄蓉的意图太明显了，明显是奔着游研社去的。」

== 王念一弹劾邱宸晨
<杂史:王念一弹劾邱宸晨>

六、七代目换届之前，#name[王念一]认为六代目社长钦定的继任人选#name[邱宸晨]不足以堪重任，盖其行事多不负责、且时时透露出一股官腔。
若将社团交给他管理，必然会出问题。
于是召集了一些管理成员，密谋阻挠邱接班，另推时任策划部部长的#name[鲁鹄歌]上任。

换届大会前日，王乃作长檄文发于社团微信、QQ 大群，罗列邱种种不力之证示于众社员。
管理层即将 QQ 群中的消息撤回、对众人做澄清，随后踢王出群。
弹劾计划失败，邱照常继任，王被清退。

被清退后，王投入于 23 中传新生群的建设工作中。
邱治下的 FMA 亦希望通过建立自己的新生群来为社团招新，并去王的群中宣传。
王怀恨，打听到邱群是托以招生处的名义建的群，乃线下去到招生处确认此事，得到否定答复。
于是以打击假冒官方群的旗号，封禁了邱群的信息，并设立群规打压 FMA 宣传工作。

此间，王视五代目社长#name[许佳欣]为对立方。
许警告王：「你这个性格，现在没有人治，将来也会有人治你的」。
王遂将其拉黑。

七代目果然全年沉寂。
及至八代目#name[袁章埔]上任，大力改革摒除旧弊，方得以焕然一新。

== 游研社的关停
<杂史:游研社的关停>

24 年秋，游研社意联动#name[叠纸]（乙游公司）举办活动，将场地报批工作交给干事#name[郭阳阳]。

此君风评不佳，曾用社费以私人名义宴请游戏公司女 HR，又常活跃于女社员社交媒体评论区中，人多病之。

此次，郭在申请表上填了「48 教教室」「无校外人员」。
经社联审批通过后，自行划掉上述地点，改成「南操」，并于活动当日带着叠纸的工作人员在南操摆摊。
不巧，巡视的校领导恰巧路过，见一众校外人员聚集，立即叫停并责令究察。
叠纸方不欢而散，游研社被校团委抓典型，闭社。

游研社的指导老师，动院游戏系#name[张兆弓]得知此事后，当即找到当任社长 21 数娱#name[秦熠]，以「最近很忙」为由让其更换指导老师。

事后，秦在游研管理群中说「笑了」，郭回：「你笑什么」。

== 董跃夺实验室
<杂史:董跃夺实验室>

董跃，信通教职工，素与 FMA 不善；
主司国重 B103 实验室；在其中授课时，屡以噪音为由寻衅。

董觊觎 B102 已久。
尝“借用” B102 教金工实习，在其中布置工具如台钳若干。
课罢，满屋污渍狼藉，不扫而去。

2024 年底，董假与赵宇同事之情，说使让出 B102 的管理权。
赵乃通知八代目管理层：春季学期或要搬到 48 教 13 楼。
大家皆以为好事——翘课更方便了。
然，彼处多有杂物积压，属于动院艺术生，联系不上，无法处置，故长悬而未搬。

2025 年十一月，董再次以实验室长期被占用而未见有活动事项填报为由发难，成功将 FMA 逼出。

此时 48 教 13 楼仍有杂物堆积，多属于信通。
信通希望将杂物搬至 12 楼，而 12 楼被艺术生占用，亦无法搬。
13 楼不清，FMA 就无法在那里开展活动。
因此在离开 B102 后，FMA 一直在主楼四层的教室里委曲求全。

== 郎琅谋逆
<杂史:郎琅谋逆>

2025 年八月，时任 QQ 新生群管理的郎琅“冰璟”（24 游技）被指控性骚扰新生师妹，针对其的炎上计划亦在小范围内开始酝酿。
在搜集证据的过程中，发现其尝有对游技新生一对一的 PUA 行为，吹嘘自己在 FMA 中威望浩大，可继任社长。
其原话为：「人心、能力、权力，我一个不缺。」
时任社长袁章埔得知后大感背刺，即刻加入到了炎上企划中。

随着公屏讨伐、网络传播、校园八卦等打击后，郎琅休学，自言「业内，高中，大学，家里都围堵」，成一时绝对。

袁评价道：「并非谋逆，止增笑耳。」

/* 列传 */

#pagebreak()
= 列传

== 张昊阳
<列传:张昊阳>

隶15行政管理，自号#name[世欺子]，于2016年在中国传媒大学创立#link(<杂史:CUCVR>)[虚拟现实协会]。

2017年，休学创立#name[北京触梦文化科技有限公司]。

2018年复学后，在学校创立#name[先进交互与虚拟现实实验室]。

2019年，公司的项目和实验室相继败落，当回了社长，社团更名为#name[未来媒体协会]。

== 赵宇
<列传:赵宇>

信息与通信工程学院实验室管理员、本社指导老师。

== 李沛宸
<列传:李沛宸>

隶16导演，2017年暑假期间任临时代理人。

== 张天鸿、邓雨晨
<列传:张天鸿-邓雨晨>

皆隶16数媒技，2017---18学年分别任二代目正、副社长。

张昊阳认为以他们为首的第二代班子把社团引错了路。

== 汪飞虎
<列传:汪飞虎>

隶17数媒技，2018---19学年任三代目社长。

在任期间，其精力主要放在校辩论队上，无法充分调动社团工作，以至于社团发展一度停滞。

== 沈琰周
<列传:沈琰周>

2018年11月，经室友介绍加入CUCVR，后成为1502实验室成员。

2019---2021学年任复辟至四代目副社长。在任期间善工而惰政，无心打理社团管理事务。

== 王韬涵
<列传:王韬涵>

隶18中外传播，自号#name[浊心]，前1502实验室成员。

2019年春经CUCVR成员#name[吕鸿风]介绍，加入#name[先进交互与虚拟现实实验室]。

2019年4月，作为张昊阳最信任的成员，担任触梦公司中标项目的主策。

盖张年中经济拮据，曾以两千块的价格辅导两名15数媒网络的女生创作毕设，遂认定其为势利眼。

6月某日，1502实验室成员一如既往地刷夜，王突然大骂张「做个项目都要收人钱」、「做项目是为了利用我们给你赚钱」云，后以癫痫为由退出项目制作团队。

两月后，通过吕鸿风找张和好，但仅仅是面和心不和。

== 王一枝
<列传:王一枝>

隶18音编，女，浙江上虞人，著名网络原创小歌手，2020---21学年任四代目社长。

由于本身的声乐素质过硬且社内确有需求，2019年上任演艺部部长。上任后广泛受到全社成员喜爱，坊间甚至成立了「枝吹部」，于是2020年被时任社长张昊阳指定为继任者。

就任前，张作出的承诺是：「左膀右臂都给你找好了，你想干什么就干什么。」上任后，社团微信群接近满员，王主张新建二群，不料遭到张的强烈反对。张与沈琰周通话时说：「给我留个回忆的坟墓。」

此后类似的摩擦时有发生，王会在与人私下聊天时表达强烈不满，但从未和张明说过；张对此并非不知情，他的评价是：「垂帘听政？放屁！我要是能垂帘听政我早解散FMA了。一枝私底下也骂我，我就当没听见。22的事务我是一点都不想参与，以后也不会和FMA有多大关系了。」

== 许佳欣
<列传:许佳欣>

许佳欣，隶19新闻，2021‒22学年任五代目社长。
社里唤作小能，最开始是因为什么事都能做，而且能力很强；后于2019年百团大战时出了能天使的cos，进一步固化了这个昵称。

21 年被推选上位。
上位后推行声势浩大的招新政策，社团人数充盈；但未重视课程内容建设，使得技术方面停摆。

与同级的 19 数媒#name[王森]是公认的老夫老妻，毕业后也一直在一起。

== 程尹宣
<列传:程尹宣>

程尹宣，隶19广电工，自号节操控性，简称节操，2021‒22学年任五代目副社长。
名字和专业连起来时常被人认成「广电工程---尹宣」。在网络上给人的印象很神秘，时常当谜语人；好像掌握着很多人的破事但又总能把住嘴不出去乱说。

程在管理方针上与许大相径庭：新闻出身的许重视宣传，而理工出身的程则不是很能理解前者的风格。
多次辩论无果后，程选择做一个纯粹的工具人。

五六代目换届前一个星期，程突然在管理群里批评许“为人势利”，并表示以后不会再来往；
许遂将聊天记录给张看。
张看后评论：「当初被1502伤透了心才招的小能、节操这一波人，可惜看走了眼，节操发起癫来和王韬涵无差。」
又去劝程，程回复：「你说得都对，但你管不着。」
张最后评论：「FMA就毁在拉小群上。当初顿顿和三四拉小群，我就极为反对。现在节操在群里发癫，只能推波助澜。」