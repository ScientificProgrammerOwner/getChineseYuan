function nstr = getChsInt(str)

%{
    Author(作者): 巴山(bashan)
    WeChat Official Account(微信公众号): 懂科学的程序员(ScientificProgrammer)
    Github: https://github.com/ScientificProgrammerOwner
    Youtube: https://www.youtube.com/channel/UC4U9cwe6FxRKec_0s5z0Wkw
    ZhiHu(知乎): https://www.zhihu.com/people/67-93-61-26-8
    BiliBili(B站): https://space.bilibili.com/205153905
    Welcome to subscribe! 欢迎订阅！
    
%}

% 转换金额的整数部分 Convert integer part
nstr = [];           % 存储转换结果 Store the results of conversion 
nzeroFlag = true;    % 是否为零的标识 the flag of whether it is zero or not
lenS = length(str);  
switch(lenS)
    case 1
        nstr = strcat(nstr, trans2chs(str(1)));
    case 2
        if str2num(str(1)) ~= 0
            nstr = strcat(nstr, trans2chs(str(1)),'拾');
        end
        if str2num(str(2)) ~= 0
            nstr = strcat(nstr, trans2chs(str(2)));
        end
    case 3
       if str2num(str(1)) ~= 0
            nstr = strcat(nstr, trans2chs(str(1)),'佰');
            nzeroFlag = true;
        else
            if nzeroFlag
                nstr = strcat(nstr, trans2chs(str(1)));
                nzeroFlag = false;
            end
        end
        if str2num(str(2)) ~= 0
            nstr = strcat(nstr, trans2chs(str(2)),'拾');
            nzeroFlag = true;
        else
            if nzeroFlag
                nstr = strcat(nstr, trans2chs(str(2)));
                nzeroFlag = false;
            end
        end
        if str2num(str(3)) ~= 0
            nstr = strcat(nstr, trans2chs(str(3)));
            nzeroFlag = true;
        else
            if nzeroFlag
                nstr = strcat(nstr, trans2chs(str(3)));
                nzeroFlag = false;
            end
        end
    case 4
        if str2num(str(1)) ~= 0
            nstr = strcat(nstr, trans2chs(str(1)),'仟');
            nzeroFlag = true;
        else
            if nzeroFlag
                nstr = strcat(nstr, trans2chs(str(1)));
                nzeroFlag = false;
            end
        end
        if str2num(str(2)) ~= 0
            nstr = strcat(nstr, trans2chs(str(2)),'佰');
            nzeroFlag = true;
        else
            if nzeroFlag
                nstr = strcat(nstr, trans2chs(str(2)));
                nzeroFlag = false;
            end
        end
        if str2num(str(3)) ~= 0
            nstr = strcat(nstr, trans2chs(str(3)),'拾');
            nzeroFlag = true;
        else
            if nzeroFlag
                nstr = strcat(nstr, trans2chs(str(3)));
                nzeroFlag = false;
            end
        end
        if str2num(str(4)) ~= 0
            nstr = strcat(nstr, trans2chs(str(4)));
            nzeroFlag = true;
        else
            if nzeroFlag
                nstr = strcat(nstr, trans2chs(str(4)));
                nzeroFlag = false;
            end
        end
end
lenns = length(nstr);
loc = strfind(nstr,'零');
if ~isempty(loc)
    if loc(end) == lenns
        nstr = nstr(1:end-1);
    end
end

