var O=Object.defineProperty,$=Object.defineProperties;var D=Object.getOwnPropertyDescriptors;var C=Object.getOwnPropertySymbols;var N=Object.prototype.hasOwnProperty,S=Object.prototype.propertyIsEnumerable;var _=(e,t,n)=>t in e?O(e,t,{enumerable:!0,configurable:!0,writable:!0,value:n}):e[t]=n,w=(e,t)=>{for(var n in t||(t={}))N.call(t,n)&&_(e,n,t[n]);if(C)for(var n of C(t))S.call(t,n)&&_(e,n,t[n]);return e},I=(e,t)=>$(e,D(t));import{a as F,w as g,h as P,O as A,an as H,c1 as E,j as v,p as c,ba as h,cF as R,F as V,b9 as W,f8 as z,f9 as B,aw as T}from"./index.e1964776.js";import{D as U}from"./index.41617e4d.js";function X(e){return typeof e=="function"||Object.prototype.toString.call(e)==="[object Object]"&&!R(e)}const b="context-menu",Y={width:{type:Number,default:156},customEvent:{type:Object,default:null},styles:{type:Object},showIcon:{type:Boolean,default:!0},axis:{type:Object,default(){return{x:0,y:0}}},items:{type:Array,default(){return[]}}},M=e=>{const{item:t}=e;return c("span",{style:"display: inline-block; width: 100%; ",class:"px-4",onClick:e.handler.bind(null,t)},[e.showIcon&&t.icon&&c(W,{class:"mr-2",icon:t.icon},null),c("span",null,[t.label])])};var q=F({name:"ContextMenu",props:Y,setup(e){const t=g(null),n=g(!1),r=P(()=>{const{axis:o,items:s,styles:l,width:i}=e,{x:a,y:d}=o||{x:0,y:0},y=(s||[]).length*40,p=i,x=document.body,L=x.clientWidth<a+p?a-p:a,j=x.clientHeight<d+y?d-y:d;return I(w({},l),{position:"absolute",width:`${i}px`,left:`${L+1}px`,top:`${j+1}px`,zIndex:9999})});A(()=>{H(()=>n.value=!0)}),E(()=>{const o=v(t);o&&document.body.removeChild(o)});function m(o,s){const{handler:l,disabled:i}=o;i||(n.value=!1,s==null||s.stopPropagation(),s==null||s.preventDefault(),l==null||l())}function u(o){return o.filter(l=>!l.hidden).map(l=>{const{disabled:i,label:a,children:d,divider:y=!1}=l,p={item:l,handler:m,showIcon:e.showIcon};return!d||d.length===0?c(V,null,[c(h.Item,{disabled:i,class:`${b}__item`,key:a},{default:()=>[c(M,p,null)]}),y?c(U,{key:`d-${a}`},null):null]):v(n)?c(h.SubMenu,{key:a,disabled:i,popupClassName:`${b}__popup`},{title:()=>c(M,p,null),default:()=>u(d)}):null})}return()=>{let o;if(!v(n))return null;const{items:s}=e;return c("div",{class:b},[c(h,{inlineIndent:12,mode:"vertical",ref:t,style:v(r)},X(o=u(s))?o:{default:()=>[o]})])}}});const f={domList:[],resolve:()=>{}},G=function(e){const{event:t}=e||{};if(t&&(t==null||t.preventDefault()),!!z)return new Promise(n=>{const r=document.body,m=document.createElement("div"),u={};e.styles&&(u.styles=e.styles),e.items&&(u.items=e.items),e.event&&(u.customEvent=t,u.axis={x:t.clientX,y:t.clientY});const o=c(q,u);B(o,m);const s=function(){f.resolve("")};f.domList.push(m);const l=function(){f.domList.forEach(i=>{try{i&&r.removeChild(i)}catch(a){}}),r.removeEventListener("click",s),r.removeEventListener("scroll",s)};f.resolve=function(i){l(),n(i)},l(),r.appendChild(m),r.addEventListener("click",s),r.addEventListener("scroll",s)})},k=function(){f&&(f.resolve(""),f.domList=[])};function Z(e=!0){return T()&&e&&E(()=>{k()}),[G,k]}export{Z as u};