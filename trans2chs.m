function rstr = trans2chs(str)

%{
    Author(作者): 巴山(bashan)
    WeChat Official Account(微信公众号): 懂科学的程序员(ScientificProgrammer)
    Github: https://github.com/ScientificProgrammerOwner
    Youtube: https://www.youtube.com/channel/UC4U9cwe6FxRKec_0s5z0Wkw
    ZhiHu(知乎): https://www.zhihu.com/people/67-93-61-26-8
    BiliBili(B站): https://space.bilibili.com/205153905
    Welcome to subscribe! 欢迎订阅！
    
%}

try
    str = strrep(str,'0','零');
catch
end
try
    str = strrep(str,'1','壹');
catch
end
try
    str = strrep(str,'2','贰');
catch
end
try
    str = strrep(str,'3','叁');
catch
end
try
    str = strrep(str,'4','肆');
end
try
    str = strrep(str,'5','伍');
catch
end
try
    str = strrep(str,'6','陆'); % 
catch
end
try
    str = strrep(str,'7','柒');
catch
end
try
    str = strrep(str,'8','捌');
catch
end
try
    str = strrep(str,'9','玖');
catch
end
rstr = strcat(str);