import{D as f}from"./index.014f30bc.js";import{B as j}from"./TableImg.56f74f95.js";import"./BasicForm.bfb70ce4.js";import{u as p}from"./useTable.df715f1a.js";import{P as b}from"./index.37a89528.js";import{A as x,b0 as l,a0 as t,B as _,a1 as T,a6 as h,w as a}from"./vendor.5879c5ca.js";/* empty css               */import{refundSchema as g,refundData as B,personSchema as D,personData as S,refundTableData as v,refundTableSchema as C,refundTimeTableSchema as F,refundTimeTableData as w}from"./data.3c5583a7.js";import{_ as y}from"./index.aeb7d9f7.js";/* empty css                *//* empty css                *//* empty css              */import"./useForm.9d0149a6.js";/* empty css                *//* empty css                *//* empty css               */import"./uuid.2b29000c.js";import"./useWindowSizeFn.6a6adedd.js";import"./index.309f7e13.js";import"./useSortable.514a2720.js";/* empty css                *//* empty css                *//* empty css               *//* empty css               */import"./index.661e65ad.js";/* empty css                *//* empty css                *//* empty css                */import"./download.6c7231a4.js";import"./base64Conver.bb012c73.js";import"./index.77bdba74.js";/* empty css                *//* empty css                */import"./useContentViewHeight.6345b5e8.js";const R=x({components:{Description:f,BasicTable:j,PageWrapper:b,[l.name]:l},setup(){const[e]=p({title:"\u9000\u8D27\u5546\u54C1",dataSource:v,columns:C,pagination:!1,showIndexColumn:!1,scroll:{y:300},showSummary:!0,summaryFunc:d}),[n]=p({title:"\u9000\u8D27\u8FDB\u5EA6",columns:F,pagination:!1,dataSource:w,showIndexColumn:!1,scroll:{y:300}});function d(m){let r=0,s=0;return m.forEach(o=>{r+=o.t5,s+=o.t6}),[{t1:"\u603B\u8BA1",t5:r,t6:s}]}return{registerRefundTable:e,registerTimeTable:n,refundSchema:g,refundData:B,personSchema:D,personData:S}}});function E(e,n,d,m,r,s){const o=t("Description"),i=t("a-divider"),u=t("BasicTable"),c=t("PageWrapper");return _(),T(c,{title:"\u57FA\u7840\u8BE6\u60C5\u9875",contentBackground:""},{default:h(()=>[a(o,{size:"middle",title:"\u9000\u6B3E\u7533\u8BF7",bordered:!1,column:3,data:e.refundData,schema:e.refundSchema},null,8,["data","schema"]),a(i),a(o,{size:"middle",title:"\u7528\u6237\u4FE1\u606F",bordered:!1,column:3,data:e.personData,schema:e.personSchema},null,8,["data","schema"]),a(i),a(u,{onRegister:e.registerRefundTable},null,8,["onRegister"]),a(i),a(u,{onRegister:e.registerTimeTable},null,8,["onRegister"])]),_:1})}var le=y(R,[["render",E],["__scopeId","data-v-109959ad"]]);export{le as default};