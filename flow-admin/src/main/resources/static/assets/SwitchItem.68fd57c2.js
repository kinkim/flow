import{az as s,a as p,c as m,e as d,h as l,aB as c,o as h,i as u,n as f,t as C,p as g,aC as _,r as v}from"./index.e1964776.js";import{S as y}from"./index.c8515968.js";import{b as S}from"./index.005651f6.js";import"./index.3e2966d0.js";import"./index.07aa88cb.js";import"./ArrowLeftOutlined.093ec11d.js";import"./index.41617e4d.js";import"./index.55b6628d.js";import"./FullscreenOutlined.449a4f2d.js";import"./index.7ad660ce.js";import"./useWindowSizeFn.a30c5409.js";import"./useContentViewHeight.f1248c0f.js";import"./useFrameKeepAlive.e733b5e2.js";import"./uniqBy.fd3e0b27.js";import"./_baseIteratee.ad9ab737.js";import"./get.6b7894e0.js";import"./index.e733a891.js";import"./useRefs.766f225b.js";import"./PlusOutlined.3d0e8918.js";import"./RedoOutlined.d4489345.js";import"./index.694d8568.js";import"./lock.cc6240c3.js";const B=p({name:"SwitchItem",components:{Switch:y},props:{event:{type:Number},disabled:{type:Boolean},title:{type:String},def:{type:Boolean}},setup(e){const{prefixCls:t}=m("setting-switch-item"),{t:o}=d(),n=l(()=>e.def?{checked:e.def}:{});function i(a){e.event&&S(e.event,a)}return{prefixCls:t,t:o,handleChange:i,getBindValue:n}}});function b(e,t,o,n,i,a){const r=c("Switch");return h(),u("div",{class:v(e.prefixCls)},[f("span",null,C(e.title),1),g(r,_(e.getBindValue,{onChange:e.handleChange,disabled:e.disabled,checkedChildren:e.t("layout.setting.on"),unCheckedChildren:e.t("layout.setting.off")}),null,16,["onChange","disabled","checkedChildren","unCheckedChildren"])],2)}var R=s(B,[["render",b],["__scopeId","data-v-fd7354e2"]]);export{R as default};