import{B as e}from"./index.bf73380f.js";import{D as t}from"./index.69583309.js";import{e as s}from"./index.e99064e4.js";import{getDescSchema as r}from"./data.687abfda.js";import{u as o}from"./useDescription.489fc7f2.js";import{y as i,Z as a,B as n,F as c,a2 as d,v as m,a0 as f}from"./vendor.880b4c6c.js";import"./useWindowSizeFn.564cf32e.js";/* empty css              *//* empty css              */var p=i({name:"ErrorLogDetailModal",components:{BasicModal:e,Description:t},props:{info:{type:Object,default:null}},setup(){const{t:e}=s(),[t]=o({column:2,schema:r()});return{register:t,useI18n:s,t:e}}});p.render=function(e,t,s,r,o,i){const p=a("Description"),l=a("BasicModal");return n(),c(l,f({width:800,title:e.t("sys.errorLog.tableActionDesc")},e.$attrs),{default:d((()=>[m(p,{data:e.info,onRegister:e.register},null,8,["data","onRegister"])])),_:1},16,["title"])};export default p;