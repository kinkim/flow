var w=(x,n,i)=>new Promise((t,c)=>{var p=s=>{try{m(i.next(s))}catch(u){c(u)}},d=s=>{try{m(i.throw(s))}catch(u){c(u)}},m=s=>s.done?t(s.value):Promise.resolve(s.value).then(p,d);m((i=i.apply(x,n)).next())});import{u as I,a as S,L as z,_ as R,b as P}from"./LoginFormTitle.3c578754.js";import{a as B,I as g,e as U,w as k,x as L,h as E,j as e,o as N,i as V,p as o,B as r,C as y,t as v,D as C,F as D,l as T}from"./index.741c5d36.js";/* empty css              *//* empty css               */import{C as j}from"./index.5fb5b3b2.js";import{S as G}from"./index.2f746864.js";import{C as M}from"./index.249616b7.js";import{F as b}from"./Form.41e509ff.js";import"./Checkbox.2841bc84.js";import"./Col.ba611277.js";import"./useFlexGapSupport.28e961f9.js";import"./_baseIteratee.9655ef6b.js";import"./get.9f08d1a5.js";import"./useSize.aa4022ca.js";const ae=B({__name:"RegisterForm",setup(x){const n=b.Item,i=g.Password,{t}=U(),{handleBackLogin:c,getLoginState:p}=I(),d=k(),m=k(!1),s=L({account:"",password:"",confirmPassword:"",mobile:"",sms:"",policy:!1}),{getFormRules:u}=S(s),{validForm:F}=P(d),_=E(()=>e(p)===z.REGISTER);function h(){return w(this,null,function*(){const f=yield F()})}return(f,a)=>e(_)?(N(),V(D,{key:0},[o(R,{class:"enter-x"}),o(e(b),{class:"p-4 enter-x",model:s,rules:e(u),ref_key:"formRef",ref:d},{default:r(()=>[o(e(n),{name:"account",class:"enter-x"},{default:r(()=>[o(e(g),{class:"fix-auto-fill",size:"large",value:s.account,"onUpdate:value":a[0]||(a[0]=l=>s.account=l),placeholder:e(t)("sys.login.userName")},null,8,["value","placeholder"])]),_:1}),o(e(n),{name:"mobile",class:"enter-x"},{default:r(()=>[o(e(g),{size:"large",value:s.mobile,"onUpdate:value":a[1]||(a[1]=l=>s.mobile=l),placeholder:e(t)("sys.login.mobile"),class:"fix-auto-fill"},null,8,["value","placeholder"])]),_:1}),o(e(n),{name:"sms",class:"enter-x"},{default:r(()=>[o(e(M),{size:"large",class:"fix-auto-fill",value:s.sms,"onUpdate:value":a[2]||(a[2]=l=>s.sms=l),placeholder:e(t)("sys.login.smsCode")},null,8,["value","placeholder"])]),_:1}),o(e(n),{name:"password",class:"enter-x"},{default:r(()=>[o(e(G),{size:"large",value:s.password,"onUpdate:value":a[3]||(a[3]=l=>s.password=l),placeholder:e(t)("sys.login.password")},null,8,["value","placeholder"])]),_:1}),o(e(n),{name:"confirmPassword",class:"enter-x"},{default:r(()=>[o(e(i),{size:"large",visibilityToggle:"",value:s.confirmPassword,"onUpdate:value":a[4]||(a[4]=l=>s.confirmPassword=l),placeholder:e(t)("sys.login.confirmPassword")},null,8,["value","placeholder"])]),_:1}),o(e(n),{class:"enter-x",name:"policy"},{default:r(()=>[o(e(j),{checked:s.policy,"onUpdate:checked":a[5]||(a[5]=l=>s.policy=l),size:"small"},{default:r(()=>[y(v(e(t)("sys.login.policy")),1)]),_:1},8,["checked"])]),_:1}),o(e(C),{type:"primary",class:"enter-x",size:"large",block:"",onClick:h,loading:m.value},{default:r(()=>[y(v(e(t)("sys.login.registerButton")),1)]),_:1},8,["loading"]),o(e(C),{size:"large",block:"",class:"mt-4 enter-x",onClick:e(c)},{default:r(()=>[y(v(e(t)("sys.login.backSignIn")),1)]),_:1},8,["onClick"])]),_:1},8,["model","rules"])],64)):T("",!0)}});export{ae as default};