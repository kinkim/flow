import{ag as e,a6 as l,h as a}from"./index.eb9d6ed9.js";import{P as s}from"./index.e083521e.js";import{j as t,ad as o,bB as r,r as n,K as i,o as c,m as d,Q as m,n as u,Y as f}from"./vendor.686fd1d4.js";/* empty css              */import"./useContentViewHeight.2141a994.js";import"./useWindowSizeFn.d82e06bf.js";/* empty css              *//* empty css              */import"./onMountedOrActivated.172ad1ec.js";var p=t({name:"TabsDemo",components:{CollapseContainer:e,PageWrapper:s,[o.name]:o,[r.name]:r},setup(){const e=n(""),{closeAll:s,closeLeft:t,closeRight:o,closeOther:r,closeCurrent:i,refreshPage:c,setTitle:d}=l(),{createMessage:m}=a();return{closeAll:s,closeLeft:t,closeRight:o,closeOther:r,closeCurrent:i,refreshPage:c,setTabTitle:function(){e.value?d(e.value):m.error("请输入要设置的Tab标题！")},title:e}}});const C={class:"mt-2 flex flex-grow-0"},k=f(" 设置Tab标题 "),g=f(" 关闭所有 "),b=f(" 关闭左侧 "),h=f(" 关闭右侧 "),j=f(" 关闭其他 "),_=f(" 关闭当前 "),v=f(" 刷新当前 ");p.render=function(e,l,a,s,t,o){const r=i("a-alert"),n=i("a-button"),f=i("a-input"),p=i("CollapseContainer"),T=i("PageWrapper");return c(),d(T,{title:"标签页操作示例"},{default:m((()=>[u(p,{title:"在下面输入框输入文本,切换后回来内容会保存"},{default:m((()=>[u(r,{banner:"",message:"该操作不会影响页面标题，仅修改Tab标题"}),u("div",C,[u(n,{class:"mr-2",onClick:e.setTabTitle,type:"primary"},{default:m((()=>[k])),_:1},8,["onClick"]),u(f,{placeholder:"请输入",value:e.title,"onUpdate:value":l[1]||(l[1]=l=>e.title=l),class:"mr-4 w-12"},null,8,["value"])])])),_:1}),u(p,{class:"mt-4",title:"标签页操作"},{default:m((()=>[u(n,{class:"mr-2",onClick:e.closeAll},{default:m((()=>[g])),_:1},8,["onClick"]),u(n,{class:"mr-2",onClick:e.closeLeft},{default:m((()=>[b])),_:1},8,["onClick"]),u(n,{class:"mr-2",onClick:e.closeRight},{default:m((()=>[h])),_:1},8,["onClick"]),u(n,{class:"mr-2",onClick:e.closeOther},{default:m((()=>[j])),_:1},8,["onClick"]),u(n,{class:"mr-2",onClick:e.closeCurrent},{default:m((()=>[_])),_:1},8,["onClick"]),u(n,{class:"mr-2",onClick:e.refreshPage},{default:m((()=>[v])),_:1},8,["onClick"])])),_:1})])),_:1})};export default p;