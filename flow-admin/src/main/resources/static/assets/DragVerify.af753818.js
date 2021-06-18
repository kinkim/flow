var e=Object.defineProperty,t=Object.defineProperties,s=Object.getOwnPropertyDescriptors,i=Object.getOwnPropertySymbols,n=Object.prototype.hasOwnProperty,o=Object.prototype.propertyIsEnumerable,r=(t,s,i)=>s in t?e(t,s,{enumerable:!0,configurable:!0,writable:!0,value:i}):t[s]=i,a=(e,t)=>{for(var s in t||(t={}))n.call(t,s)&&r(e,s,t[s]);if(i)for(var s of i(t))o.call(t,s)&&r(e,s,t[s]);return e};import{d as l,n as c,m as u,ad as p}from"./index.574e7466.js";import{u as f}from"./useExpose.46777d04.js";import{k as d,A as y,r as g,D as m,a5 as h,f as v,u as b,q as x,bN as w,co as S}from"./vendor.56d2c57f.js";const{t:T}=l(),j={value:{type:Boolean,default:!1},isSlot:{type:Boolean,default:!1},text:{type:[String],default:T("component.verify.dragText")},successText:{type:[String],default:T("component.verify.successText")},height:{type:[Number,String],default:40},width:{type:[Number,String],default:220},circle:{type:Boolean,default:!1},wrapStyle:{type:Object,default:{}},contentStyle:{type:Object,default:{}},barStyle:{type:Object,default:{}},actionStyle:{type:Object,default:{}}},D=(O=a({},j),t(O,s({src:{type:String},imgWidth:{type:Number,default:260},imgWrapStyle:{type:Object,default:{}},minDegree:{type:Number,default:90},maxDegree:{type:Number,default:270},diffDegree:{type:Number,default:20}})));var O,P=d({name:"BaseDargVerify",props:j,emits:["success","update:value","change","start","move","end"],setup(e,{emit:t,slots:s}){const i=y({isMoving:!1,isPassing:!1,moveDistance:0,toLeft:!1,startTime:0,endTime:0}),n=g(null),o=g(null),r=g(null),l=g(null);m((()=>i.isPassing),(e=>{if(e){const{startTime:s,endTime:n}=i;t("success",{isPassing:e,time:((n-s)/1e3).toFixed(1)}),t("update:value",e),t("change",e)}})),h((()=>{i.isPassing=!!e.value}));const d=v((()=>{const{height:t,actionStyle:s}=e,i=`${parseInt(t)}px`;return a({left:0,width:i,height:i},s)})),T=v((()=>{const{height:t,width:s,circle:i,wrapStyle:n}=e,o=parseInt(t),r=`${parseInt(s)}px`;return a({width:r,height:`${o}px`,lineHeight:`${o}px`,borderRadius:i?o/2+"px":0},n)})),j=v((()=>{const{height:t,circle:s,barStyle:i}=e,n=parseInt(t);return a({height:`${n}px`,borderRadius:s?n/2+"px 0 0 "+n/2+"px":0},i)})),D=v((()=>{const{height:t,width:s,contentStyle:i}=e,n=`${parseInt(t)}px`,o=`${parseInt(s)}px`;return a({height:n,width:o},i)}));function O(e){return e.pageX||e.touches[0].pageX}function P(e){if(i.isPassing)return;const s=b(l);s&&(t("start",e),i.moveDistance=O(e)-parseInt(s.style.left.replace("px",""),10),i.startTime=(new Date).getTime(),i.isMoving=!0)}function M(t){const s=parseInt(t.style.width),{width:i}=e,n=parseInt(i);return{offset:n-s-6,widthNum:n,actionWidth:s}}function I(s){const{isMoving:n,moveDistance:r}=i;if(n){const i=b(l),n=b(o);if(!i||!n)return;const{offset:a,widthNum:c,actionWidth:u}=M(i),p=O(s)-r;t("move",{event:s,moveDistance:r,moveX:p}),p>0&&p<=a?(i.style.left=`${p}px`,n.style.width=`${p+u/2}px`):p>a&&(i.style.left=c-u+"px",n.style.width=c-u/2+"px",e.isSlot||$())}}function N(s){const{isMoving:n,isPassing:a,moveDistance:c}=i;if(n&&!a){t("end",s);const n=b(l),a=b(o);if(!n||!a)return;const u=O(s)-c,{offset:p,widthNum:f,actionWidth:d}=M(n);u<p?e.isSlot?setTimeout((()=>{if(e.value){const e=b(r);e&&(e.style.width=`${parseInt(a.style.width)}px`)}else L()}),0):L():(n.style.left=f-d+"px",a.style.width=f-d/2+"px",$()),i.isMoving=!1}}function $(){e.isSlot?L():(i.endTime=(new Date).getTime(),i.isPassing=!0,i.isMoving=!1)}function L(){i.isMoving=!1,i.isPassing=!1,i.moveDistance=0,i.toLeft=!1,i.startTime=0,i.endTime=0;const e=b(l),t=b(o),s=b(r);e&&t&&s&&(i.toLeft=!0,u((()=>{i.toLeft=!1,e.style.left="0",t.style.width="0"}),300),s.style.width=b(D).width)}return c({el:document,name:"mouseup",listener:()=>{i.isMoving&&L()}}),f({resume:L}),()=>x("div",{class:"darg-verify",ref:n,style:b(T),onMousemove:I,onTouchmove:I,onMouseleave:N,onMouseup:N,onTouchend:N},[(()=>{const e=["darg-verify-bar"];return i.toLeft&&e.push("to-left"),x("div",{class:e,ref:o,style:b(j)},null)})(),(()=>{const t=["darg-verify-content"],{isPassing:n}=i,{text:o,successText:a}=e;return n&&t.push("success"),x("div",{class:t,ref:r,style:b(D)},[p(s,"text",n)||(n?a:o)])})(),(()=>{const e=["darg-verify-action"],{toLeft:t,isPassing:n}=i;return t&&e.push("to-left"),x("div",{class:e,onMousedown:P,onTouchstart:P,style:b(d),ref:l},[p(s,"actionIcon",n)||x(n?w:S,{class:"darg-verify-action__icon"},null)])})()])}}),M=Object.freeze({__proto__:null,[Symbol.toStringTag]:"Module",default:P});export{P as B,M as D,D as r};