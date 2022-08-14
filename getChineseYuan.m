function getChineseYuan(con1,con2)

%{
    Author(作者): 巴山(bashan)
    WeChat Official Account(微信公众号): 懂科学的程序员(ScientificProgrammer)
    Github: https://github.com/ScientificProgrammerOwner
    Youtube: https://www.youtube.com/channel/UC4U9cwe6FxRKec_0s5z0Wkw
    ZhiHu(知乎): https://www.zhihu.com/people/67-93-61-26-8
    BiliBili(B站): https://space.bilibili.com/205153905
    Welcome to subscribe! 欢迎订阅！
    
%}

str = get(con1,'string');
strDec = [];
loc =  strfind(str,'.');

nstr = [];
if ~isempty(loc)
    strInt = str(1:loc-1);   % 提取整数部分
    lenInt = length(strInt);
    strDec = str(loc+1:end); % 提取小数部分
else
    strInt = str;      % 提取整数部分
    lenInt = length(strInt);
end
%% 整数部分
nc = fix(lenInt/4);
if lenInt > 4
    locF  = mod(lenInt,4);
    if locF ~= 0
        switch(nc)
            case 1 % 万
                nstr = strcat(getChsInt(strInt(1:locF)),'万');
                nstr = strcat(nstr,getChsInt(strInt(locF+1:end)),'元');
            case 2 % 亿
                nstr = strcat(getChsInt(strInt(1:locF)),'亿');
                nstr = strcat(nstr,getChsInt(strInt(locF+1:locF+4)),'万');
                nstr = strcat(nstr,getChsInt(strInt(locF+5:end)),'元');
                
            case 3 % 兆
                nstr = strcat(getChsInt(strInt(1:locF)),'兆');
                nstr = strcat(nstr,getChsInt(strInt(locF+1:locF+4)),'亿');
                nstr = strcat(nstr,getChsInt(strInt(locF+5:locF+8)),'万');
                nstr = strcat(nstr,getChsInt(strInt(locF+9:end)),'元');
        end
    else
        switch(nc)
            case 2 % 万
                nstr = strcat(getChsInt(strInt(1:4)),'万');
                nstr = strcat(nstr,getChsInt(strInt(locF+5:end)),'元');
            case 3 % 亿
                nstr = strcat(getChsInt(strInt(1:4)),'亿');
                nstr = strcat(nstr,getChsInt(strInt(locF+5:locF+8)),'万');
                nstr = strcat(nstr,getChsInt(strInt(locF+9:end)),'元');
            case 4 % 兆
                nstr = strcat(getChsInt(strInt(1:4)),'兆');
                nstr = strcat(nstr,getChsInt(strInt(locF+5:locF+8)),'亿');
                nstr = strcat(nstr,getChsInt(strInt(locF+9:locF+12)),'万');
                nstr = strcat(nstr,getChsInt(strInt(locF+13:end)),'元');
        end
    end
else
    nstr = strcat(getChsInt(strInt),'元');
end

%% 小数部分
if ~isempty(strDec)
    dStr = getChsDec(strDec);
    nstr = strcat(nstr,dStr);
else
    nstr = strcat(nstr,'整');
end
set(con2,'string',nstr);
