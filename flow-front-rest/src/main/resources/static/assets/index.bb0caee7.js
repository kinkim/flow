import{J as e,l as t,aL as o,c as s,$ as i}from"./index.06582e88.js";import{y as r,c7 as n,j as a,u as m,Z as d,B as p,F as g,v as u,a7 as c,a6 as j}from"./vendor.3dc066e5.js";import{c as f,u as l}from"./index.2fd70132.js";import x from"./SessionTimeoutLogin.7d18fc1b.js";import"./index.b26d0122.js";import"./useWindowSizeFn.308e6090.js";import"./useContentViewHeight.efd2f5af.js";/* empty css              */import"./useSortable.547027b2.js";import"./lock.28f145c1.js";import"./Login.6187485a.js";import"./LoginForm.3952ed41.js";/* empty css              *//* empty css              *//* empty css              *//* empty css              */import"./LoginFormTitle.7b15cfdd.js";import"./ForgetPasswordForm.813137c6.js";import"./index.4726e763.js";import"./RegisterForm.ca4ac6f4.js";import"./index.76adba59.js";import"./MobileForm.b4eb7e7b.js";import"./QrCodeForm.515459a2.js";import"./download.02309083.js";var T=r({name:"LayoutFeatures",components:{BackTop:n,LayoutLockPage:f((()=>e((()=>import("./index.8a59f599.js")),["assets/index.8a59f599.js","assets/LockPage.3e42c695.js","assets/LockPage.ee8eff52.css","assets/vendor.3dc066e5.js","assets/vendor.2b13549a.css","assets/index.06582e88.js","assets/index.3b3929f4.css","assets/lock.28f145c1.js","assets/header.d801b988.js"]))),SettingDrawer:f((()=>e((()=>import("./index.b5d73e0d.js").then((function(e){return e.i}))),["assets/index.b5d73e0d.js","assets/index.bc312a72.css","assets/index.4c61959e.css","assets/index.06582e88.js","assets/index.3b3929f4.css","assets/vendor.3dc066e5.js","assets/vendor.2b13549a.css","assets/index.2fd70132.js","assets/index.e3b45eef.css","assets/index.bfbdc44f.css","assets/index.b26d0122.js","assets/index.140aa9f4.css","assets/useWindowSizeFn.308e6090.js","assets/useContentViewHeight.efd2f5af.js","assets/useSortable.547027b2.js","assets/lock.28f145c1.js"]))),SessionTimeoutLogin:x},setup(){const{getUseOpenBackTop:e,getShowSettingButton:r,getSettingButtonPosition:n,getFullContent:d}=t(),p=o(),{prefixCls:g}=s("setting-drawer-fearure"),{getShowHeader:u}=l(),c=a((()=>p.getSessionTimeout));return{getTarget:()=>document.body,getUseOpenBackTop:e,getIsFixedSettingDrawer:a((()=>{if(!m(r))return!1;const e=m(n);return e===i.AUTO?!m(u)||m(d):e===i.FIXED})),prefixCls:g,getIsSessionTimeout:c}}});T.render=function(e,t,o,s,i,r){const n=d("LayoutLockPage"),a=d("BackTop"),m=d("SettingDrawer"),f=d("SessionTimeoutLogin");return p(),g(j,null,[u(n),e.getUseOpenBackTop?(p(),g(a,{key:0,target:e.getTarget},null,8,["target"])):c("",!0),e.getIsFixedSettingDrawer?(p(),g(m,{key:1,class:e.prefixCls},null,8,["class"])):c("",!0),e.getIsSessionTimeout?(p(),g(f,{key:2})):c("",!0)],64)};export default T;