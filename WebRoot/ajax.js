function ajax(method,url,data='',dataType='json'){
return new Promise((resolve,reject)=>{
//��ȡxhr
var xhr=new XMLHttpRequest();
//�������� 
xhr.open(method,url,true);
//��������ͷ
if(method=='post'){
	xhr.setRequestHeader('Content-type','application/x-www-form-urlencoded');
}
//���ûص�
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
 //����
 xhr.send(data);
 })
}
/*  0: ����δ��ʼ��
   1: �����������ѽ���
   2: �����ѽ���
   3: �������� 
 4: ��������ɣ�����Ӧ�Ѿ���*/