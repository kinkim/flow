import{L as r,a as u,bA as i,aF as p,o as d,i as f,z as _,B as l}from"./index.bd2622a4.js";const m=u({name:"ActionButtons",components:{},setup(o,{emit:t}){const n=i();function e(){t("doLaunch")}function a(){}function c(){history.state.back?history.back():n("/process/launch")}return{doLaunch:e,doSave:a,doBack:c}}});function h(o,t,n,e,a,c){const s=p("a-button");return d(),f(s,{type:"primary",onClick:o.doLaunch},{default:_(()=>[l(" \u63D0\u4EA4 ")]),_:1},8,["onClick"])}var B=r(m,[["render",h]]);export{B as default};