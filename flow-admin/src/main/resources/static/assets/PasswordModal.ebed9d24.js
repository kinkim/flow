var e=Object.defineProperty,r=Object.getOwnPropertySymbols,o=Object.prototype.hasOwnProperty,t=Object.prototype.propertyIsEnumerable,s=(r,o,t)=>o in r?e(r,o,{enumerable:!0,configurable:!0,writable:!0,value:t}):r[o]=t,i=(e,r,o)=>new Promise(((t,s)=>{var i=e=>{try{n(o.next(e))}catch(r){s(r)}},a=e=>{try{n(o.throw(e))}catch(r){s(r)}},n=e=>e.done?t(e.value):Promise.resolve(e.value).then(i,a);n((o=o.apply(e,r)).next())}));import{_ as a,a as n}from"./useModal.14f2a57c.js";import{_ as d}from"./BasicForm.d23c40e0.js";import{u as l}from"./useForm.a6964f79.js";import{p as c}from"./account.data.05af2890.js";import{a as m}from"./account.f18c97e9.js";import{k as p,r as u,u as f,f as j,K as b,o as g,n as w,Q as x,q as h,N as v}from"./vendor.56d2c57f.js";import"./index.407e4786.js";import"./useWindowSizeFn.d0559e60.js";/* empty css              *//* empty css              *//* empty css              *//* empty css              *//* empty css              *//* empty css              *//* empty css              */import"./CountdownInput.3d5d9047.js";import"./uuid.c53863e7.js";/* empty css              *//* empty css              *//* empty css              *//* empty css              */import"./download.dd3a6468.js";import"./StrengthMeter.ca48504f.js";var y=p({name:"AccountModal",components:{BasicModal:a,BasicForm:d},emits:["success","register"],setup(e,{emit:a}){const d=u(!0),[p,{setFieldsValue:b,resetFields:g,validate:w}]=l({labelWidth:100,schemas:c,showActionButtonGroup:!1,actionColOptions:{span:23}}),[x,{setModalProps:h,closeModal:v}]=n((e=>i(this,null,(function*(){g(),h({confirmLoading:!1,title:`给账号【${e.record.realName}(${e.record.username})】设置密码`}),d.value=!!(null==e?void 0:e.isUpdate),f(d)&&b(((e,i)=>{for(var a in i||(i={}))o.call(i,a)&&s(e,a,i[a]);if(r)for(var a of r(i))t.call(i,a)&&s(e,a,i[a]);return e})({},e.record))}))));return{registerModal:x,registerForm:p,getTitle:j((()=>f(d)?"设置密码":"新增账号")),handleSubmit:function(){return i(this,null,(function*(){try{h({confirmLoading:!0});const e=yield w();e.password=e.passwordNew,delete e.passwordNew,delete e.confirmPassword,m(e),v()}finally{h({confirmLoading:!1})}}))}}}});y.render=function(e,r,o,t,s,i){const a=b("BasicForm"),n=b("BasicModal");return g(),w(n,v(e.$attrs,{onRegister:e.registerModal,title:e.getTitle,onOk:e.handleSubmit}),{default:x((()=>[h(a,{onRegister:e.registerForm},null,8,["onRegister"])])),_:1},16,["onRegister","title","onOk"])};export default y;