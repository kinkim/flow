import{p as u,s as $,V as j,a as F,K as H,w as N,x as R,a9 as U,an as O,O as z,cy as M,fc as W,N as Q,_ as T,U as w,d_ as X,y as q,z as G,bQ as J,dk as Y,az as Z,bv as D,bF as K,fE as tt,c as et,h as A,j as _,bN as L,aB as S,o as b,i as ot,k as P,l as B,r as rt,F as nt}from"./index.da587afe.js";import{c as V,u as it}from"./index.ba5e1116.js";import at from"./SessionTimeoutLogin.0f57a8b8.js";import{s as st,g as ct}from"./scrollTo.37d32e36.js";import{t as lt}from"./throttleByAnimationFrame.4b37e265.js";import"./FullscreenOutlined.3d903e0f.js";import"./index.a912e0ed.js";import"./useWindowSizeFn.3fdab581.js";import"./useContentViewHeight.f2db75e2.js";import"./useFrameKeepAlive.ec663918.js";import"./uniqBy.f906dabc.js";import"./_baseIteratee.78d8c020.js";import"./get.40c34cfc.js";import"./index.f277a2c9.js";import"./index.77df2807.js";import"./useRefs.1aead304.js";import"./PlusOutlined.3b3e37c8.js";import"./RedoOutlined.46184af0.js";import"./index.4b69e39b.js";import"./lock.25b84ca8.js";import"./Login.a85974f3.js";import"./LoginForm.93e9ee4b.js";import"./index.5aab84c4.js";import"./Checkbox.9d75a86f.js";/* empty css              *//* empty css               */import"./index.a64c8a60.js";import"./LoginFormTitle.9fe17931.js";import"./Form.f8b72655.js";import"./Col.4ac749bb.js";import"./useFlexGapSupport.caa26b6d.js";import"./useSize.dbee3c08.js";import"./GithubFilled.135d5f76.js";import"./WechatFilled.fae38d9a.js";import"./index.36675b6e.js";import"./ForgetPasswordForm.1aaa5bad.js";import"./index.b3a5d1df.js";import"./RegisterForm.65605291.js";import"./index.9912aa68.js";import"./MobileForm.28988774.js";import"./QrCodeForm.1817f27f.js";import"./index.ad7ae4b1.js";import"./download.75f04d3f.js";import"./base64Conver.08b9f4ec.js";var ut={icon:{tag:"svg",attrs:{viewBox:"64 64 896 896",focusable:"false"},children:[{tag:"path",attrs:{d:"M859.9 168H164.1c-4.5 0-8.1 3.6-8.1 8v60c0 4.4 3.6 8 8.1 8h695.8c4.5 0 8.1-3.6 8.1-8v-60c0-4.4-3.6-8-8.1-8zM518.3 355a8 8 0 00-12.6 0l-112 141.7a7.98 7.98 0 006.3 12.9h73.9V848c0 4.4 3.6 8 8 8h60c4.4 0 8-3.6 8-8V509.7H624c6.7 0 10.4-7.7 6.3-12.9L518.3 355z"}}]},name:"vertical-align-top",theme:"outlined"},pt=ut;function x(t){for(var e=1;e<arguments.length;e++){var o=arguments[e]!=null?Object(arguments[e]):{},r=Object.keys(o);typeof Object.getOwnPropertySymbols=="function"&&(r=r.concat(Object.getOwnPropertySymbols(o).filter(function(n){return Object.getOwnPropertyDescriptor(o,n).enumerable}))),r.forEach(function(n){mt(t,n,o[n])})}return t}function mt(t,e,o){return e in t?Object.defineProperty(t,e,{value:o,enumerable:!0,configurable:!0,writable:!0}):t[e]=o,t}var E=function(e,o){var r=x({},e,o.attrs);return u($,x({},r,{icon:pt}),null)};E.displayName="VerticalAlignTopOutlined";E.inheritAttrs=!1;var gt=E,vt=function(){return{visibilityHeight:{type:Number,default:400},duration:{type:Number,default:450},target:Function,prefixCls:String,onClick:Function}},ft=F({compatConfig:{MODE:3},name:"ABackTop",inheritAttrs:!1,props:vt(),setup:function(e,o){var r=o.slots,n=o.attrs,d=o.emit,p=H("back-top",e),c=p.prefixCls,g=p.direction,a=N(),v=R({visible:!1,scrollEvent:null}),C=function(){return a.value&&a.value.ownerDocument?a.value.ownerDocument:window},I=function(s){var l=e.target,m=l===void 0?C:l,f=e.duration;st(0,{getContainer:m,duration:f}),d("click",s)},h=lt(function(i){var s=e.visibilityHeight,l=ct(i.target,!0);v.visible=l>s}),y=function(){var s=e.target,l=s||C,m=l();v.scrollEvent=Y(m,"scroll",function(f){h(f)}),h({target:m})},k=function(){v.scrollEvent&&v.scrollEvent.remove(),h.cancel()};return U(function(){return e.target},function(){k(),O(function(){y()})}),z(function(){O(function(){y()})}),M(function(){O(function(){y()})}),W(function(){k()}),Q(function(){k()}),function(){var i,s,l=u("div",{class:"".concat(c.value,"-content")},[u("div",{class:"".concat(c.value,"-icon")},[u(gt,null,null)])]),m=T(T({},n),{},{onClick:I,class:(i={},w(i,"".concat(c.value),!0),w(i,"".concat(n.class),n.class),w(i,"".concat(c.value,"-rtl"),g.value==="rtl"),i)}),f=X("fade");return u(J,f,{default:function(){return[q(u("div",T(T({},m),{},{ref:a}),[((s=r.default)===null||s===void 0?void 0:s.call(r))||l]),[[G,v.visible]])]}})}}}),dt=j(ft);const Tt=F({name:"LayoutFeatures",components:{BackTop:dt,LayoutLockPage:V(()=>D(()=>import("./index.b8a40dbd.js"),["assets/index.b8a40dbd.js","assets/index.da587afe.js","assets/index.f0ae4520.css","assets/LockPage.c547fcf0.js","assets/LockPage.ad5cabd1.css","assets/lock.25b84ca8.js","assets/header.d801b988.js"])),SettingDrawer:V(()=>D(()=>import("./index.86b68c3c.js").then(function(t){return t.i}),["assets/index.86b68c3c.js","assets/index.a74219c4.js","assets/index.c39445e0.css","assets/index.da587afe.js","assets/index.f0ae4520.css","assets/index.f277a2c9.js","assets/index.464798c8.css","assets/ArrowLeftOutlined.8a04d10c.js","assets/index.a64c8a60.js","assets/index.3a3c1369.css","assets/index.ba5e1116.js","assets/index.d7032874.css","assets/FullscreenOutlined.3d903e0f.js","assets/index.a912e0ed.js","assets/index.39422f85.css","assets/useWindowSizeFn.3fdab581.js","assets/useContentViewHeight.f2db75e2.js","assets/useFrameKeepAlive.ec663918.js","assets/uniqBy.f906dabc.js","assets/_baseIteratee.78d8c020.js","assets/get.40c34cfc.js","assets/index.77df2807.js","assets/index.b34048aa.css","assets/useRefs.1aead304.js","assets/PlusOutlined.3b3e37c8.js","assets/RedoOutlined.46184af0.js","assets/index.4b69e39b.js","assets/lock.25b84ca8.js"])),SessionTimeoutLogin:at},setup(){const{getUseOpenBackTop:t,getShowSettingButton:e,getSettingButtonPosition:o,getFullContent:r}=K(),n=tt(),{prefixCls:d}=et("setting-drawer-feature"),{getShowHeader:p}=it(),c=A(()=>n.getSessionTimeout),g=A(()=>{if(!_(e))return!1;const a=_(o);return a===L.AUTO?!_(p)||_(r):a===L.FIXED});return{getTarget:()=>document.body,getUseOpenBackTop:t,getIsFixedSettingDrawer:g,prefixCls:d,getIsSessionTimeout:c}}});function _t(t,e,o,r,n,d){const p=S("LayoutLockPage"),c=S("BackTop"),g=S("SettingDrawer"),a=S("SessionTimeoutLogin");return b(),ot(nt,null,[u(p),t.getUseOpenBackTop?(b(),P(c,{key:0,target:t.getTarget},null,8,["target"])):B("",!0),t.getIsFixedSettingDrawer?(b(),P(g,{key:1,class:rt(t.prefixCls)},null,8,["class"])):B("",!0),t.getIsSessionTimeout?(b(),P(a,{key:2})):B("",!0)],64)}var ue=Z(Tt,[["render",_t]]);export{ue as default};