import{k as e,bt as t,f as s,K as a,o as n,n as i,q as l,s as r,N as d,x as o}from"./vendor.9d9efc92.js";import{c as p}from"./index.6992208b.js";import{b as f}from"./index.5cf9eedb.js";import"./useDrawer.4612aefe.js";/* empty css              *//* empty css              */import"./createAsyncComponent.c931d453.js";import"./useFrameKeepAlive.0fd2dbc2.js";var c=e({name:"SelectItem",components:{Select:t},props:{event:{type:Number},disabled:{type:Boolean},title:{type:String},def:{type:[String,Number]},initValue:{type:[String,Number]},options:{type:Array,default:()=>[]}},setup(e){const{prefixCls:t}=p("setting-select-item");return{prefixCls:t,handleChange:function(t){e.event&&f(e.event,t)},getBindValue:s((()=>e.def?{value:e.def,defaultValue:e.initValue||e.def}:{}))}}});const m=o()(((e,t,s,o,p,f)=>{const c=a("Select");return n(),i("div",{class:e.prefixCls},[l("span",null,r(e.title),1),l(c,d(e.getBindValue,{class:`${e.prefixCls}-select`,onChange:e.handleChange,disabled:e.disabled,size:"small",options:e.options}),null,16,["class","onChange","disabled","options"])],2)}));c.render=m,c.__scopeId="data-v-2dba4940";export default c;