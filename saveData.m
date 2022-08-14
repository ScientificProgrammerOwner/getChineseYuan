function saveData(con1,con2)

%{
    Author(作者): 巴山(bashan)
    WeChat Official Account(微信公众号): 懂科学的程序员(ScientificProgrammer)
    Github: https://github.com/ScientificProgrammerOwner
    Youtube: https://www.youtube.com/channel/UC4U9cwe6FxRKec_0s5z0Wkw
    ZhiHu(知乎): https://www.zhihu.com/people/67-93-61-26-8
    BiliBili(B站): https://space.bilibili.com/205153905
    Welcome to subscribe! 欢迎订阅！
    
%}

inputD = get(con1,'string');
outputD = get(con2,'string');
[fname,pname,fi]=uiputfile('*.txt','保存密码文件');
if fi == 1
   filename = [pname,fname];
   fid = fopen(filename,'wt');
   fprintf(fid,'%s\r',['输入金额:',inputD]); 
   fprintf(fid,'%s\r',['转换结果:',outputD]); 
   fprintf(fid,'%s',['保存时间:',datestr(now())]); 
   fclose(fid);
   msgbox('数据保存成功！') 
else
   msgbox('已取消保存！') 
end