import{_ as t}from"./useModal.8b30048f.js";import{_ as e}from"./Description.vue_vue&type=script&lang.0804f9cd.js";import{u as s}from"./useDescription.53c56ff2.js";import{d as o}from"./index.10276049.js";import{getDescSchema as r}from"./data.7e599592.js";import{k as i,K as a,o as n,n as d,Q as p,q as c,N as f}from"./vendor.9d9efc92.js";import"./useWindowSizeFn.0534066c.js";/* empty css              *//* empty css              */var m=i({name:"ErrorLogDetailModal",components:{BasicModal:t,Description:e},props:{info:{type:Object,default:null}},setup(){const{t:t}=o(),[e]=s({column:2,schema:r()});return{register:e,useI18n:o,t:t}}});m.render=function(t,e,s,o,r,i){const m=a("Description"),l=a("BasicModal");return n(),d(l,f({width:800,title:t.t("sys.errorLog.tableActionDesc")},t.$attrs),{default:p((()=>[c(m,{data:t.info,onRegister:t.register},null,8,["data","onRegister"])])),_:1},16,["title"])};export default m;