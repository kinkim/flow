import{A as c,bb as l,r as f,a0 as n,B as p,a1 as I,a5 as _,H as e,w as a}from"./vendor.5eb38889.js";/* empty css               *//* empty css               *//* empty css               */import{P as u}from"./index.a7d13475.js";import C from"./DynamicInfo.4a09f2ff.js";import g from"./BannerInfo.cbdb8f77.js";import j from"./NoticeInfo.d90b282e.js";import b from"./ITWikiCard.94533e0f.js";import w from"./ITContactCard.7fee6273.js";import h from"./CommonDownCard.2bca2f5d.js";import{dynamicInfoItems as y,bannerList as v,noticeInfoItems as x}from"./data.a66a908e.js";import{_ as B}from"./index.eb81839e.js";/* empty css               *//* empty css               */import"./useWindowSizeFn.e269959a.js";import"./useContentViewHeight.2add70b5.js";/* empty css                *//* empty css                *//* empty css                */const D=c({components:{PageWrapper:u,DynamicInfo:C,BannerInfo:g,NoticeInfo:j,ITWikiCard:b,ITContactCard:w,CommonDownCard:h,Card:l},setup(){const o=f(!0);return setTimeout(()=>{o.value=!1},1500),{loading:o,dynamicInfoItems:y,bannerInfoItems:v,noticeInfoItems:x}}}),S={class:"flex mt-4"},T={class:"w-2/3"},N={class:"w-1/3 pl-4"},W={class:"flex mt-4"},k={class:"w-1/4 mr-4"},P={class:"w-3/4"};function $(o,V,H,z,A,F){const t=n("BannerInfo"),s=n("NoticeInfo"),i=n("ITContactCard"),r=n("DynamicInfo"),d=n("CommonDownCard"),m=n("PageWrapper");return p(),I(m,null,{default:_(()=>[e("div",S,[e("div",T,[a(t,{dataSource:o.bannerInfoItems,height:"270",class:"enter-y",loading:o.loading},null,8,["dataSource","loading"])]),e("div",N,[a(s,{dataSource:o.noticeInfoItems,loading:o.loading,class:"enter-y"},null,8,["dataSource","loading"])])]),e("div",W,[e("div",k,[a(i,{loading:o.loading,class:"enter-y"},null,8,["loading"])]),e("div",P,[a(r,{dataSource:o.dynamicInfoItems,loading:o.loading,class:"enter-y"},null,8,["dataSource","loading"]),a(d,{loading:o.loading,class:"enter-y !mt-4"},null,8,["loading"])])])]),_:1})}var io=B(D,[["render",$]]);export{io as default};