import{B as d}from"./TableImg.b1df3b1e.js";import"./BasicForm.e5f615e6.js";import{E as f}from"./index.75283313.js";import{c as _,d as s,j as B}from"./data.39881859.js";import{b as C}from"./index.88470e0c.js";import{P as E}from"./index.7347be3d.js";import{az as F,a as x,aB as t,o as b,k as g,B as r,p,C as M}from"./index.e1964776.js";import"./index.25019af6.js";import"./Checkbox.e5f92db0.js";import"./index.3a164815.js";import"./index.b3d10dbf.js";import"./eagerComputed.83fd49b0.js";import"./useForm.0cbae54a.js";import"./index.99ffc75a.js";import"./index.c8515968.js";import"./index.1b277829.js";import"./uuid.2b29000c.js";import"./index.fc9b4c53.js";import"./_baseIteratee.ad9ab737.js";import"./get.6b7894e0.js";import"./DeleteOutlined.5791f905.js";import"./index.c908afe0.js";import"./useRefs.766f225b.js";import"./Form.e643baa9.js";import"./Col.e011966c.js";import"./useFlexGapSupport.5550da35.js";import"./useSize.5fbb5cc9.js";import"./useWindowSizeFn.a30c5409.js";import"./index.41617e4d.js";import"./sortable.esm.c081a59d.js";import"./RedoOutlined.d4489345.js";import"./FullscreenOutlined.449a4f2d.js";import"./index.657a2808.js";import"./fromPairs.daf93cb7.js";import"./scrollTo.23acaebd.js";import"./index.2d431917.js";/* empty css              *//* empty css               */import"./index.db622673.js";import"./transButton.2db6a2b1.js";import"./index.8373f7dc.js";import"./index.27e2f730.js";import"./download.6d3644ac.js";import"./base64Conver.08b9f4ec.js";import"./index.bc6756fd.js";import"./index.ec5c8d0f.js";import"./uniqBy.fd3e0b27.js";import"./index.59303775.js";import"./index.e2fe3f97.js";import"./useContentViewHeight.f1248c0f.js";import"./ArrowLeftOutlined.093ec11d.js";import"./index.32320e40.js";const k=x({components:{BasicTable:d,ExpExcelModal:f,PageWrapper:E},setup(){function o({filename:i,bookType:a}){B({data:s,filename:i,write2excelOpts:{bookType:a}})}const[e,{openModal:m}]=C();return{defaultHeader:o,columns:_,data:s,register:e,openModal:m}}});function A(o,e,m,i,a,S){const n=t("a-button"),u=t("BasicTable"),c=t("ExpExcelModal"),l=t("PageWrapper");return b(),g(l,{title:"\u5BFC\u51FA\u793A\u4F8B",content:"\u53EF\u4EE5\u9009\u62E9\u5BFC\u51FA\u683C\u5F0F"},{default:r(()=>[p(u,{title:"\u57FA\u7840\u8868\u683C",columns:o.columns,dataSource:o.data},{toolbar:r(()=>[p(n,{onClick:o.openModal},{default:r(()=>[M(" \u5BFC\u51FA ")]),_:1},8,["onClick"])]),_:1},8,["columns","dataSource"]),p(c,{onRegister:o.register,onSuccess:o.defaultHeader},null,8,["onRegister","onSuccess"])]),_:1})}var So=F(k,[["render",A]]);export{So as default};