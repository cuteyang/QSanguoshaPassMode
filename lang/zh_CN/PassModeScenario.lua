local pass_t = {
	["$DiscardCardForSkill"] = "%from 弃置了 %card,发动了技能【%arg】",

	["pass_mode"]                   = "闯关模式",
	["pass"]                        = "闯关",
	["@exp"]                        = "经验",
	["exp"]                         = "经验值",
	["damage"]                      = "伤害",
	["enhance"]                     = "强化",

	["evil"]                        = "黑暗",
	["shizu_e"]                     = "士卒",
	["gongshou_e"]                  = "弓手",
	["jianshi_e"]                   = "剑侍",
	["qibing_e"]                    = "骑兵",
	["huwei_e"]                     = "虎卫",
	["leishi_e"]                    = "雷使",
	["daomo_e"]		        = "刀魔",
	["wuniang_e"]		    	= "舞娘",


	
	["_pass_01"]			= "黄巾之乱",
	["_pass_01_d"]			= "面对黑桃【八卦阵】和1张明【闪】的张角，该如何是好呢？",
	["_pass_02"]			= "袁术讨伐战",
	["_pass_02_d"]			= "装备了白银狮子的袁术么…不算很难对付嘛，什么？竟然不是我先手？",
	["_pass_03"]			= "汜水关之战",
	["_pass_03_d"]			= "先锋华雄的手牌并不多嘛，我手中好像有对付他的牌呢，董卓嘛……手牌数是不少，但是，只要在开始的时候撑住，他的毁灭就只是时间问题了。",
	["_pass_04"]			= "下邳之战",
	["_pass_04_d"]			= "呼……看来长时间的进攻让敌人疲惫不堪了，但是全副武装的吕布还是很难对付的啊。",
	["_pass_05"]			= "官渡之战",
	["_pass_05_d"]			= "奇袭了对方的粮仓乌巢之后，我军还真是兵精粮足啊，敌方貌似已经处于弹尽粮绝的状态了呢，可是…好像有难缠的对手呢。",
	["_pass_06"]			= "赤壁之战",
	["_pass_06_d"]			= "对方全部连在一起了啊，好好利用这一点，顺着东南风一举击破他们吧！",
	["_pass_07"]			= "定军山之战",
	["_pass_07_d"]			= "法正被围住了啊…而且貌似夏侯渊又发动进攻了呢，看来只能伺机而动了。",
	["_pass_08"]			= "樊城之战",
	["_pass_09"]			= "夷陵之战",
	["_pass_10"]			= "五丈原之战",

	["maxhp_o"]                     = "体力上限 + 1",
	["maxcards_o"]                  = "手牌上限 + 1",
	["attackrange_o"]                = "攻击范围 + 1",
	["slashnum_o"]                  = "出杀次数 + 1",
	["exp_o"]                       = "经验获得 + 50%",
	["turndraw_o"]                  = "回合摸牌数 + 1",
	["killdraw_o"]                  = "击杀摸牌数 + 1",
	["startdraw_o"]                 = "起始摸牌数 + 2",


    ["shiqi_p"]                     = "士气",
    [":shiqi_p"]                    = "摸牌阶段开始时，你可以进行一次判定，若结果为红色你获得此牌。",
    ["qianggong_p"]                 = "强弓",
    [":qianggong_p"]                = "当你使用【杀】指定一名角色为目标后，以下两种情况，你可以令此【杀】不可被【闪】响应：1、你的体力值小于或等于1。2、你的攻击范围大于4。",
    ["shenshe_p"]                   = "神射",
    [":shenshe_p"]                  = "锁定技，你的攻击范围始终为双倍。",
    ["pojia_p"]                     = "破甲",
    [":pojia_p"]                    = "锁定技，你使用的黑色【杀】无视目标防具；红色【杀】命中时，随机弃置目标装备区的一张牌。",
    ["zhanshang_p"]                 = "战觞",
    [":zhanshang_p"]                = "当你成为【南蛮入侵】或【万箭齐发】的目标时，可以摸一张牌。",
    ["qishu_p"]                     = "骑术",
    [":qishu_p"]                    = "锁定技，当你计算与其他角色的距离时，始终-1，当其他角色计算与你的距离时，始终+1（已装备的马匹无效果）。",
    ["xunma_p"]                     = "驯马",
    [":xunma_p"]                    = "出牌阶段，你可以弃置一张马牌，然后摸两张牌并回复1点体力。",
    ["xunmapass"]                   = "驯马",
    ["chenwen_p"]                   = "沉稳",
    [":chenwen_p"]                  = "锁定技，当你没装备防具时，梅花的【杀】对你无效。",
    ["zhongzhuang_p"]               = "重装",
    [":zhongzhuang_p"]              = "锁定技，当你受到一次伤害时，伤害值最多为1点。",
    ["dianji_p"]                    = "电击",
    [":dianji_p"]                   = "出牌阶段，你可以弃置一张黑桃手牌，令一名角色进行判定，若结果为黑色，你对该角色造成1点雷电伤害，否则你受到1点雷电伤害。每阶段限一次。",
    ["leiti_p"]                     = "雷体",
    [":leiti_p"]                    = "锁定技，当你受到一次雷电伤害前，摸X张牌（X为伤害点数），然后伤害为0。",
    ["lianzhan_p"]                  = "连斩",
    [":lianzhan_p"]                 = "每当你使用的【杀】被目标的【闪】抵消时，你可以再对其使用一张【杀】，若此【杀】命中则伤害+1。",
    ["douzhi_p"]                    = "斗志",
    [":douzhi_p"]                   = "回合结束时，你可以将手牌补至体力上限。",
    ["guwu_p"]                      = "鼓舞",
    [":guwu_p"]                     = "锁定技，所有【邪】或【邪神】势力的角色手牌上限 +1。",
    ["xiangxiao_p"]                 = "香消",
    [":xiangxiao_p"]                = "你每受到1点伤害，可以令一名角色回复1点体力。",

    ["tipo_p"]                      = "体魄",
    [":tipo_p"]                     = "锁定技，体力上限+1。",
    ["duanyan_p"]                   = "断言",
    [":duanyan_p"]                  = "出牌阶段，你可以选择一种类型并展示一名其他角色的1张手牌，若猜对则弃置此牌，否则你须弃置一张牌或摸一张牌并受到其对你造成的1点伤害，每阶段限一次。",
    ["xiongzi_p"]                   = "雄姿",
    [":xiongzi_p"]                  = "回合开始阶段开始时，你可以摸一张牌。",
    ["quanheng_p"]                  = "权衡",
    [":quanheng_p"]                 = "出牌阶段，可以丢弃X张手牌，然后从牌堆摸取等量的牌（X为已损失的体力值且最大为4）。每阶段限一次。",
    ["quanhengpass"]                = "权衡",
    ["qiangong_p"]                  = "谦恭",
    [":qiangong_p"]                 = "当你成为【过河拆桥】或【顺手牵羊】的目标时，可以选择自己的一张牌作为对象牌，成为【过河拆桥】的目标时，若装备区不为空选择的牌要交给对方。",
    ["@qiangong_p-card"]            = "请选择1张牌",
    
    ["duanyan_p:slash"]             = "杀",
    ["duanyan_p:jink"]              = "闪",
    ["duanyan_p:peach_analeptic"]   = "桃/酒",
    ["duanyan_p:other"]             = "其他",
    
    ["@xiuluo"]                     = "请弃置一张符合条件的手牌",


    ["xietian_p"]                   = "挟天",
    [":xietian_p"]                  = "当你使用【南蛮入侵】或【万箭齐发】对目标角色造成伤害后，可以获得对方的一张手牌，若其没有手牌则造成的伤害+1。",
    
    [":fankui_p"]                   = "每当你受到1点伤害后，你可以获得伤害来源的一张牌，若对方没有牌，则你对其造成1点伤害。",
    ["langgu_p"]                    = "狼顾",
    [":langgu_p"]                   = "回合结束阶段开始时，若你的手牌数与场上手牌数量最多的角色手牌数差值大于2，则你摸两张牌。",

    [":ganglie_p"]                  = "每当你受到1点伤害后，你可以进行一次判定，若为红色你可以获得判定牌。若结果大于你的体力值，则伤害来源选择一项：弃置两张手牌，或受到你对其造成的1点伤害。",
    ["jueduan_p"]                   = "决断",
    [":jueduan_p"]                  = "当你使用【杀】对目标角色造成一次伤害后，你可以弃置其一张牌。",

    [":yiji_p"]                     = "每当你受到1点伤害后，可摸两张牌，当你处于濒死状态时，可以额外摸一张牌。",
    [":tiandu_p"]                   = "在一名角色的判定牌生效后，若此牌为红色且点数大于你体力值与手牌数之和，你可以摸一张牌。",

    ["jinghong_p"]                  = "惊鸿",
    [":jinghong_p"]                 = "弃牌阶段结束时，若你的弃牌数量大于或等于你的体力值，你可以观看牌堆顶的X张牌（X为你的弃牌数量）并获得其中一张黑色牌。",

    [":luoyi_p"]                    = "出牌阶段，你可以弃置一张装备牌或两张手牌，然后你使用的【杀】或【决斗】（你为伤害来源时）造成的伤害+1，直到回合结束。 每阶段限一次。",
    ["guantong_p"]                  = "贯通",
    [":guantong_p"]                 = "当你使用【杀】或【决斗】对目标角色造成一次伤害后，你可以弃置一张手牌对其下家造成1点相同的无属性伤害或者摸一张牌。",
    ["guantong_p:damage"]           = "弃1张牌伤害下家",
    ["guantong_p:draw"]             = "摸1张牌",

    [":xingshang_p"]                = "你可以立即获得死亡角色的所有牌或摸X张牌（X为该角色手牌和装备数量的最大值）。",
    ["xingshang_p:gethe"]           = "获得其所有牌",
    ["xingshang_p:draw"]            = "摸牌",
    [":fangzhu_p"]                  = "每当你受到一次伤害后，可令一名角色摸X张牌（X为其已损失的体力值），然后该角色将其武将牌翻面。",
    ["@fangzhu_p"]                  = "请选择要放逐的对象",
    ["fanzhi_p"]                    = "反制",
    [":fanzhi_p"]                   = "回合开始阶段开始时，若你处于翻面状态，可以与一名角色拼点，若你赢，则各自将武将牌翻面。",
    
    ["wenjiu_p"]                    = "温酒",
    [":wenjiu_p"]                   = "回合开始阶段开始时，你可以摸一张牌，本回合不能使用【杀】，直到下回合结束，你使用的【决斗】或【杀】造成的伤害+1，当【杀】造成伤害后温酒效果消失。",
    ["@wenjiu_p"]                   = "温酒",
    ["tuodao_p"]                    = "拖刀",
    ["tuodaopass"]                  = "拖刀",
    [":tuodao_p"]                   = "出牌阶段，你可以弃置一张黑色武器牌或红色马牌，指定一名其他角色，视为其对你使用了1张【决斗】。每阶段限一次。",

    ["baonu_p"]                     = "暴怒",
    [":baonu_p"]                    = "锁定技，当你已损失的体力值大于或等于3时，你使用的【杀】命中目标时可以摸一张牌。",
    ["duanhe_p"]                    = "断喝",
    [":duanhe_p"]                   = "出牌阶段，你可以弃置一张武器牌指定一名体力值与手牌数之和大于或等于此武器攻击范围的其他角色，你失去一点体力，该角色弃置一张牌，然后受到你的1点伤害并翻面。",
 	["duanhepass"]					= "断喝",
 	
    ["longwei_p"]                   = "龙威",
    [":longwei_p"]                  = "当你装备武器时，可以视为对攻击范围内一名体力值或手牌数大于你的其他角色使用了一张【杀】，只要装备着武器，你使用的【杀】可以额外指定1个目标。",
    ["longhou_p"]                   = "龙吼",
    [":longhou_p"]                  = "当你的【杀】命中其他角色时，可以获得其武器然后弃置两张手牌或失去1点体力。",
    
    [":guanxing_p"]                 = "回合开始阶段开始时，你可以观看牌堆顶的X张牌（X为3+你已损失体力值的一半，向上取整），将其中任意数量的牌以任意顺序置於牌堆顶，其余以任意顺序置於牌堆底。",
    ["beifa_p"]                     = "北伐",
    [":beifa_p"]                    = "出牌阶段，你可以弃置两张相同花色的牌，若其他角色弃置了相同花色的一张牌，你流失1点体力，否则你对其造成1点伤害。每阶段限一次。",
   
    [":jizhi_p"]                    = "当你使用一张锦囊时，你可以摸一张牌并获得1枚“智谋标记”。",
    ["jumou_p"]                     = "聚谋",
    [":jumou_p"]                    = "若其他角色使用的【无懈可击】在结算后置入弃牌堆且你的“智谋标记”大于或等于你的体力上限时，你可以舍弃所有的“智谋标记”并立即获得之。",
    ["@zhimou_p"]                   = "智谋",
    ["shipo_p"]                     = "识破",
    [":shipo_p"]                    = "当你使用【无懈可击】时，若目标锦囊的拥有者是其他角色且你的体力值小于或等于其时可以对其造成1点伤害。",
   
    [":tieji_p"]                    = "当你使用【杀】指定一名角色为目标后，你可以进行一次判定，若结果为红色，此【杀】不可被【闪】响应，且当结果为方块时，伤害+1，为红桃时，你获得判定牌。",
    [":mashu_p"]                    = "锁定技，当你计算与其他角色的距离时，始终-1，当其他角色计算与你的距离时，距离加上你已装备的马匹数量。",
    
    [":liegong_p"]                  = "出牌阶段，当你使用了一张【杀】后，可以将一张与此【杀】相同花色的手牌当作【杀】使用，弃置目标装备区与此【杀】花色相同的牌，且此【杀】无视目标防具，不可被【闪】响应。每阶段限一次。",
    ["gongshen_p"]                  = "弓神",
    [":gongshen_p"]                 = "锁定技，当你的【杀】命中角色时，获得1枚“弓神标记”，若此杀为红色可额外获得1枚。",
    ["jianhun_p"]                   = "箭魂",
    [":jianhun_p"]                  = "出牌阶段，若你的“弓神标记”不小于5枚，可以将1张【杀】指定1-X名其他角色为目标并使用，若只选择了一名角色，视为此杀对其使用了X次（满足以下任一情况时X为3，否则X为2：1、你的体力为1；2、你的攻击范围不小于4；3、你的“弓神标记”不少于8个），然后你失去所有“弓神标记”。",
    ["@gongshen_p"]                 = "弓神",
    
    [":kurou_p"]                    = "出牌阶段，你可以失去一点体力，然后摸两张牌，若本回合第一次使用可以额外摸一张牌。",
    ["zhaxiang_p"]                  = "诈降",
    [":zhaxiang_p"]                 = "出牌阶段，你可以弃置四张牌，然后回复1点体力，每阶段限一次。",
    ["zhaxiangpass"]                = "诈降",
    
    [":keji_p"]                     = "锁定技，若你的手牌数小于十三张，你跳过此回合的弃牌阶段。",
    ["baiyi_p"]                     = "白衣",
    [":baiyi_p"]                    = "回合开始阶段开始时，若你的装备区没有任何牌，你可以摸一张牌。",
    ["dujiang_p"]                   = "渡江",
    [":dujiang_p"]                  = "回合结束阶段开始时，你可以将装备区的牌全部弃置，并根据弃置牌的数量获得以下效果：两张——摸两张牌，三张——你弃置其他角色各一张牌，然后你摸X张牌（X为4-目标数量），四张——其他角色流失1点体力并弃置所有装备，然后你回复所有体力值。",
    
    [":lianying_p"]                 = "当你失去最后的手牌或在回合外使用、打出一张手牌时，你可以摸一张牌。",
    
    [":jieyin_p"]                   = "出牌阶段，你可以弃置一张手牌并指定一名已受伤的男性角色，你与其各回复1点体力，然后你获得他的1张牌。每阶段限一次。",
    ["jinguo_p"]                    = "巾帼",
    [":jinguo_p"]                   = "当你装备防具或防御马时，可以从牌堆顶亮出一张牌并获得，若此牌为装备牌，可以继续亮出下一张牌并获得，如此往复，直到不是装备牌为止。",

    ["tongji_p"]                    = "痛击",
    [":tongji_p"]                   = "当你使用【杀】对目标角色造成伤害时，若其没有手牌，可弃置一张手牌使伤害+1。",
    ["jielue_p"]                    = "劫掠",
    [":jielue_p"]                   = "当你使用黑桃花色的【过河拆桥】的目标装备区存在牌的情况下，可以先获得一张目标的装备区的牌。",
 
    ["yuyue_p"]                     = "雨月",
    [":yuyue_p"]                    = "出牌阶段，你可以弃置一张牌指定一名判定区有牌的其他角色，视为你对其使用X张【杀】（X为其判定区牌的数量）。每阶段限一次。",
    ["yuyuepass"]					= "雨月",
    ["shuangxing_p"]                = "霜星",
    [":shuangxing_p"]               = "回合开始和结束阶段开始时，你可以摸X张牌（X为所有角色判定区牌数的最大值）。",


    ["zhanshen_p"]                  = "战神",
    [":zhanshen_p"]                 = "你可以将一张锦囊牌或装备手牌当【杀】使用或打出。",
    ["nuozhan_p"]                   = "搦战",
    [":nuozhan_p"]                  = "当你在回合外使用或打出一张【闪】时，可以立即对攻击范围内的一名角色使用一张【杀】。",
    
    [":lijian_p"]                   = "出牌阶段，你可以选择两名角色（第一名不能为自己），将一张牌交给第一名角色，然后视为其对另一名角色使用一张【决斗】。此【决斗】不能被【无懈可击】响应。每阶段限一次。",

    [":qingnang_p"]                 = "出牌阶段，你可以弃置一张牌，回复1点体力，若你未受伤，下回合开始时若你已受伤可以回复1点体力，否则你摸两张牌。每阶段限一次。",
    ["yangshen_p"]                  = "养身",
    [":yangshen_p"]                 = "锁定技，当你使用【桃】回复体力时，可以额外回复1点体力。",
    ["mafei_p"]                     = "麻沸",
    [":mafei_p"]                    = "锁定技，你的回合外，当其他角色对你造成伤害后，回合结束阶段须弃置1张手牌。",
    
    [":guhuo_p"]                    = "出牌阶段，当你使用了一张基本牌或非延时锦囊（除无懈可击）后，可以将与此牌花色相同的牌当作此牌使用。",
    ["bugua_p"]                     = "卜卦",
    [":bugua_p"]                    = "你可以在回合开始或结束阶段之一开始时，摸一张牌，然后将一张手牌置于牌堆顶。",
    ["@bugua_p-card"]               = "请选择1张手牌放到牌堆顶",
    ["huanshu_p"]                   = "幻术",
    [":huanshu_p"]                  = "当你对一名其他角色造成一次伤害后，可观看其所有手牌，然后获得其中一张，再选择一张手牌交给对方。",
    ["@huanshu_p-card"]             = "请选择1张手牌交给对方",

    [":huangtian_p"]                = "当你在回合外打出或使用一张黑色牌时，可以横置或重置一名角色。",
    [":leiji_p"]                    = "当你装备黑桃装备或使用黑桃锦囊牌时，可令一名角色判定，若结果为黑桃，你对其造成1点雷电伤害，若结果为草花，你对自己造成1点雷电伤害。",
    ["daji_p"]                      = "大吉",
    [":daji_p"]                     = "每当你造成或受到1点雷电伤害后，可以摸一张牌。",

	[":jiuchi_p"]                   = "你可以将一张黑桃牌当【酒】使用。",
    	[":benghuai_p"]                 = "锁定技，你的体力上限减半（向下取整），回合结束阶段开始时，若你的体力是全场最多的，你须减1点体力。",
	[":baonue_p"]                   = "每当你造成2点或以上的伤害时，可以依次翻开牌堆的X张牌（X为伤害点数），若此牌为黑色你获得之，否则你回复1点体力。",

	[":weimu_p"]    				= "当其他玩家使用的锦囊即将对你生效时，你可以弃置一张与此牌花色相同的手牌使其无效，然后摸一张牌。",
	["@@weimu_p"]					= "请弃置一张符合条件的手牌",
	["dumou_p"]     				= "毒谋",
	["@dumou_p"]     				= "毒谋",
	[":dumou_p"]    				= "当你使用的非延时单体锦囊指定一名角色为目标后，你可以选择一种花色然后展示目标一张手牌，若所选花色与此牌颜色相同，你获得1枚“毒谋标记”，若花色也相同再获得1枚“毒谋标记”并对目标角色造成1点伤害。",
	[":wansha_p"]    				= "当除你以外的角色濒死时，可以弃置1枚“毒谋标记”使只有该角色才能使用【桃】。",
	[":luanwu_p"] 					= "出牌阶段，可弃置3枚“毒谋标记”令所有其他角色各选择一项：对与其距离最近的另一名角色使用一张【杀】，或失去1点体力。", 

	["baima_p"] 					= "白马",
	[":baima_p"] 					= "出牌阶段开始时，若你装备了马，可以摸一张牌。",
	[":yicong_p"] 					= "锁定技，只要你的体力值为3点或更高，你计算与其他角色的距离时，始终-X(X为你的体力值-2)；只要你的体力值小于3点，其他角色计算与你的距离时，始终+X(X为3-你的体力值)。",
	["zhuilie_p"]     				= "追猎",
	[":zhuilie_p"]    				= "当你的【杀】命中其他角色时，若你装备了武器，可以获得其已装备的马。",
	["zhuilie_p:dhorse"] 				= "防御马(+1马)", 
	["zhuilie_p:ohorse"] 				= "进攻马(-1马)", 
	
	[":wushen_p"]                   = "当你使用【杀】指定一名角色为目标后，可以获得以下效果：红桃——你回复1点体力；方块——摸1张牌；草花——目标选择一张手牌弃置；黑桃——此【杀】不可被【闪】响应。",
	[":wuhun_p"]                    = "锁定技，当其他角色死亡时，你摸等于死亡角色体力上限的牌数，当你受到一次其他角色的伤害后，伤害来源须展示所有手牌，若其中有黑色牌，随机弃置其中一张，若黑色牌的数量大于或等于伤害来源的体力值，则其对自己造成1点伤害。",
	["qishen_p"]                    = "骑神",
	[":qishen_p"]                   = "锁定技，当你计算与其他角色的距离时，始终-1；当其他角色计算与你的距离时，始终+1。",
    
	[":shelie_p"]                   = "摸牌阶段开始时，你可以摸两张牌后，可以从牌堆顶亮出一张牌并获得，然后继续亮出下一张牌，若此牌点数大于前一张则你获得此牌，如此往复，直到点数不大于上一张为止。",

	[":rende_e1"]		=	"若仅有一张手牌，触发恢复体力效果所需牌数 -1。",
	[":rende_e2"]		=	"允许使用装备牌发动。",
	[":rende_e3"]		=	"可以选择将牌给其他角色或弃置。",

	[":jijiang_e1"]		=	"无人响应的情况下由系统提供一张无属性【杀】，每关限3次。",
	[":wusheng_e1"]		=	"使用红桃牌发动时无距离限制。",
	[":wusheng_e2"]		=	"可以使用装备区的任何牌来发动，如此做时，红色牌作为火属性【杀】，黑色牌作为雷属性【杀】。",
	[":wusheng_e3"]		=	"使用【杀】来发动后，可以摸一张牌。",
	[":jianxiong_e1"]	=	"可以选择获得造成伤害的牌或摸一张牌。",
	[":jianxiong_e2"]	=	"发动时若体力值为1可以额外摸两张牌。",
	[":jianxiong_e3"]	=	"无人响应的情况下由系统提供一张【闪】，每关限两次。",
	["jianxiong:gain"]      =	"获得造成伤害的牌",
	["jianxiong:draw"]      =	"摸1张牌",
	[":hujia_e1"]		=	"无人响应的情况下由系统提供一张【闪】，每关限2次。",
	[":hujia_e2"]		=	"限制次数提升为3次。",
	[":tuxi_e1"]		=	"允许选择装备。",
	[":tuxi_e2"]		=	"增加1个目标。",
	[":zhiheng_e1"]		=	"每阶段增加1次使用次数，但限制为使用同颜色的牌。",
	[":zhiheng_e2"]		=	"若制衡弃置的牌点数均相同，你可以额外摸X张牌（X为制衡牌数-1）。",
	[":jiuyuan_e1"]		=	"自己使用的桃也能触发效果，每关限2次。",
	[":keji_e1"]		=	"即使出杀也可以跳过弃牌阶段。",
	[":keji_e2"]		=	"弃牌阶段时若手牌数小于体力值则摸一张牌。",
	[":guose_e1"]		=	"以此技能使用的【乐不思蜀】若判定成功，目标在弃牌阶段时，若手牌数大于X，必须弃置到X张（X为你的手牌数）。",
	[":guose_e2"]		=	"使用装备发动时，对目标造成1点伤害。",
	[":liuli_e1"]		=	"不限制距离。",
	[":wushuang_e1"]	=	"回合结束阶段开始时，若在出牌阶段内发动效果3次，可以获得场上或弃牌堆存在的【方天画戟】。",
	[":wushuang_e2"]	=	"回合开始阶段开始时，若总发动次数达到10次，获得【铁戟】技能，已有的情况下获得【神戟】技能。",

	["zhaolie_p"]		=	"昭烈",
	[":zhaolie_p"]		=	"回合结束阶段开始时，若你没有手牌，可以从牌堆顶亮出一张牌并获得，若此牌不为装备牌或基本牌，可以继续亮出下一张牌并获得，你可以重复此流程，直到不是基本牌或装备牌为止。",
	["wanghou_p"]		=	"王侯",
	[":wanghou_p"]		=	"你的点数为5或9的红色手牌可以当做任意基本牌和非延时锦囊使用或打出。",
	["xiaoxiong_p"]		=	"枭雄",
	[":xiaoxiong_p"]	=	"每当你失去装备牌时，可以回复1点体力。",
	["qiangyun_p"]		=	"强运",
	[":qiangyun_p"]		=	"你的判定牌亮出后（改判之前），可以从牌堆顶重新亮出一张作为即将生效的判定牌，每阶段限一次。",
	["junshen_p"]		=	"军神",
	[":junshen_p"]		=	"回合开始阶段开始时，你可以进行一次判定，若结果为红色，你获得此牌；你可以重复此流程，直到出现黑色的判定结果为止。",
	["hujiang_p"]		=	"虎将",
	[":hujiang_p"]		=	"出牌阶段，你可以展示一张牌，并根据此牌颜色可以发动1次以下效果，红色：可以使用任意手牌当【杀】使用，黑色：【杀】命中后可以摸1张牌，每阶段限1次。",
	["aogu_p"]		=	"傲骨",
	[":aogu_p"]		=	"你的装备区没有牌时，受到的伤害最大为1点。",
	["zhongyi_p"]		=	"忠义",
	[":zhongyi_p"]		=	"若你于弃牌阶段弃置的红色牌数量不小于2张，可以于回合结束后进行一个额外的出牌阶段。",
	["badao_p"]		=	"霸道",
	[":badao_p"]		=	"其他角色于出牌阶段对你造成2点或以上伤害时，须立即结束当前阶段。",
	["caiqing_p"]		=	"才情",
	[":caiqing_p"]		=	"你于弃牌阶段弃置牌的数量不小于2张时，可以回复1点体力。",
	["duoyi_p"]		=	"多疑",
	[":duoyi_p"]		=	"出牌阶段，当你使用的【杀】被【闪】抵消时，可以额外使用1张【杀】，每阶段限1次。",
	["shoujie_p"]		=	"守节",
	[":shoujie_p"]		=	"当你进入濒死状态时，可以与1名角色拼点，若你赢，你将体力回复至1点。",
	["liangjiang_p"]	=	"良将",
	[":liangjiang_p"]	=	"出牌阶段，你可以弃置1张牌然后摸1张牌，每阶段限1次。",
	["fenyong_p"]		=	"奋勇",
	[":fenyong_p"]		=	"当你使用【杀】对目标角色造成伤害时，若其没有手牌，可以弃置1张手牌使此伤害 +1。",
	["wulie_p"]		=	"武烈",
	[":wulie_p"]		=	"你可以将一张红桃手牌当【杀】使用或打出。",
	["honglang_p"]		=	"弘朗",
	[":honglang_p"]		=	"每当你获得牌后，若手牌数为2张，可以再摸1张牌。",
	["shanshe_p"]		=	"善射",
	[":shanshe_p"]		=	"锁定技，你的攻击范围始终 +1。",
	["quanmou_p"]		=	"权谋",
	[":quanmou_p"]		=	"出牌阶段，你可以交给一名其他角色1张锦囊牌，然后获得该角色的1张牌（包括判定区的牌），每阶段限1次。",
	["guoshi_p"]		=	"国士",
	[":guoshi_p"]		=	"摸牌阶段，你可以放弃摸牌，改为从堆顶亮出X张牌，你可以获得不同种类的牌各1张，其余牌弃置（X为你的手牌数且最大为6）。",
	["dudu_p"]		=	"都督",
	[":dudu_p"]		=	"当你受到一次伤害时，可以弃置一张装备区的牌使伤害 -1。",
        ["@dudu_p"]             =       "请弃置一张装备区的牌使伤害-1",
	["zhejie_p"]		=	"折节",
	[":zhejie_p"]		=	"出牌阶段，你可以选择一张手牌并指定一名手牌数比你少的角色，令其弃置一张手牌，然后将此牌交给该角色，每阶段限一次。",
	["danmou_p"]		=	"胆谋",
	[":danmou_p"]		=	"回合开始阶段，你可以摸两张牌，若如此做，回合结束阶段，你须弃置三张牌，不足的情况下弃置所有牌并失去1点体力。",
	["yuyue_p"]		=	"雨月",
	[":yuyue_p"]		=	"出牌阶段，你可以弃置一张牌指定一名判定区有牌的其他角色，视为你对其使用X张【杀】（X为其判定区牌的数量）。每阶段限一次。",

	["wuji_p"]		=	"武姬",
	[":wuji_p"]		=	"使用杀时视为装备了目标的武器。",


	["tieji_p"]	 	=	"铁戟",
	[":tieji_p"]	 	=	"当你装备了距离3以上的武器时，你使用的【杀】可以额外指定1个目标。",
	["feijiang_p"]	 	=	"飞将",
	[":feijiang_p"]	 	=	"当你使用【杀】时，若没有手牌，可以获得目标的1张手牌。",
	["zhunue_p"]	 	=	"助虐",
	[":zhunue_p"]	 	=	"你的回合外，每造成或受到1点伤害，可以摸一张牌。",
	["doushen_p"]	 	=	"斗神",
	[":doushen_p"]	 	=	"当你成为其他角色一张【决斗】以外的非延时锦囊的目标时，可以弃置一张与锦囊花色相同的手牌，则此锦囊的效果变为【决斗】。",


	["Epl_Wind"]		=	"其疾如风",
	["Epl_Thicket"]		=	"其徐如林",
	["Epl_Fire"]	       	=	"侵略如火",
	["Epl_Mountain"]	=	"不动如山",
	["Epl_Shadow"]		=	"难知如阴",
	["Epl_Thunder"]		=	"动如雷霆",

    	["#TriggerDrawSkill"]           = "%from 的【%arg】效果被触发，从牌堆摸了 %arg2 张牌",
    	["#TriggerDamageUpSkill"]       = "%from 的【%arg】效果被触发，对 %to 的伤害上升至 %arg2 点",
    	["#TriggerDamageDownSkill"]     = "%from 的【%arg】效果被触发，受到的伤害下降至 %arg2 点",

    	["#RetrialSkill"]     	    	= "%from 的【%arg】效果被触发，重新进行一次判定。",
    	["#ForceEndSkill"]     	    	= "%from 的【%arg】效果被触发，%to 中止了出牌阶段。",
 
   
    ["#DuanYanPassChooseType"]      = "%from 选择了 %arg ，随机展示 %to 手中的1张牌",
    ["#QiangongPassThrow"]          = "%from 的【谦恭】效果被触发，弃置了1张牌以防止【%arg】的效果",
    ["#QiangongPassGive"]           = "%from 的【谦恭】效果被触发，将1张牌交给了 %to 以防止【%arg】的效果",
    ["#JijiangPassLoseHp"]          = "%from 的【激将】效果触发，%from 流失了1点体力",
    ["#BaonuPass"]                  = "%from 的【暴怒】效果被触发，从牌堆摸了1张牌",
    ["#JianhunPass1"]               = "%from 使用了【箭魂】技能，对 %to 使用了 %arg 次相同的【杀】",
    ["#JianhunPass2"]               = "%from 使用了【箭魂】技能，对 %to 使用了 1 张相同的【杀】",
    
    ["#XietianPass"]                = "%from 的【挟天】效果被触发，获得了 %to 的1张手牌",
    ["#Guimou"]                     = "由于 %from 的判定，%to 的【鬼谋】效果被触发，从牌堆摸了 1 张牌",
    ["#QuwuPass"]                   = "%from 的【曲误】效果被触发 弃置了一张装备区的牌使伤害-1",
    ["#JinguoPass"]                 = "%from 的【巾帼】效果被触发，将牌堆顶的牌加入手中",
    ["#ZhanshangPass"]              = "%from 的技能【战觞】效果被触发，从牌堆摸了1张牌",
    ["#ZhongzhuangPass"]            = "%from 的技能【重装】防止了 %arg 点伤害，锁定为 1 点",
    ["#Jitian"]                     = "%from 的技能【祭天】防止了雷电属性伤害并摸了等同于伤害值的手牌数",
    ["#WuhunPassThrow"]             = "由于 %from 受到 %to 的伤害，技能【武魂】效果被触发，%to 随机丢弃了一张黑色手牌",
    ["#WuhunPassThrowDamage"]       = "由于 %from 受到 %to 的伤害，技能【武魂】效果被触发，%to 随机丢弃了一张黑色手牌并受到来源为自己的1点伤害",
    ["#WuhunPassDraw"]              = "由于 %from 死亡，%to 的技能【武魂】效果被触发，摸了 %arg 张牌",
    ["#QingnangPassBuff"]           = "由于上回合【青囊】的效果，%from 回复了1点体力",
    ["#MafeiPass"]                  = "由于 %from 受到 %to 的伤害，技能【麻沸】效果被触发，%to 须在回合结束阶段弃置一张手牌",
    ["#BuguaPass"]                  = "%from 使用了【卜卦】技能，将1张手牌与牌堆顶的牌交换",
    ["#WeimuPass"]                  = "%from 使用了【帷幕.改】技能，弃置1张手牌无效了【%arg】的效果并摸了1张牌。",

	["#StartStage"]		=	"第【%arg】关 %arg2 闯关开始",
	["#StagePrompt"]	=	"%arg",
}

for k, v in pairs(pass_t) do
    local ks = k:split("_")
    if not k:find(":") and #ks > 1 and ks[2] == "pass" then
        pass_t[ks[1]..ks[2]] = pass_t[k]
    end
end

return pass_t
