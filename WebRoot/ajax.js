function ajax(method,url,data='',dataType='json'){
return new Promise((resolve,reject)=>{
//获取xhr
var xhr=new XMLHttpRequest();
//创建请求 
xhr.open(method,url,true);
//设置请求头
if(method=='post'){
	xhr.setRequestHeader('Content-type','application/x-www-form-urlencoded');
}
//设置回调
 xhr.onreadystatechange=function(){
	if(xhr.readyState==4)
		if(xhr.status==200){
			if(url.indexOf('.php')!=-1&&dataType.toLowerCase()=='json'){
				resolve(JSON.parse(xhr.responseText));

			}
			else
				resolve(xhr.responseText);
	
		}
		else
			reject('error'+xhr.status);
	 
 }
 //发送
 xhr.send(data);
 })
}
/*  0: 请求未初始化
   1: 服务器连接已建立
   2: 请求已接收
   3: 请求处理中 
 4: 请求已完成，且响应已就绪*/