import{P as e}from"./index.eb6697bf.js";import{f as t}from"./index.081912a1.js";import"./account.687216b2.js";import{j as n,K as o,o as r,m as s,Q as i,n as a,Y as m}from"./vendor.686fd1d4.js";import"./useContentViewHeight.95769b80.js";import"./useWindowSizeFn.d82e06bf.js";/* empty css              *//* empty css              */import"./onMountedOrActivated.172ad1ec.js";var p=n({name:"TestSessionTimeout",components:{PageWrapper:e},setup(){const e=t();return{test:function(){return t=this,n=null,o=function*(){e.setToken(void 0),e.setSessionTimeout(!0)},new Promise(((e,r)=>{var s=e=>{try{a(o.next(e))}catch(t){r(t)}},i=e=>{try{a(o.throw(e))}catch(t){r(t)}},a=t=>t.done?e(t.value):Promise.resolve(t.value).then(s,i);a((o=o.apply(t,n)).next())}));var t,n,o}}}});const u=m("点击触发用户登录过期");p.render=function(e,t,n,m,p,c){const d=o("a-button"),f=o("PageWrapper");return r(),s(f,{title:"登录过期示例",content:"用户登录过期示例，不再跳转登录页，直接生成页面覆盖当前页面，方便保持过期前的用户状态！"},{default:i((()=>[a(d,{type:"primary",onClick:e.test},{default:i((()=>[u])),_:1},8,["onClick"])])),_:1})};export default p;