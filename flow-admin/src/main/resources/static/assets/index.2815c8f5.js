import{ag as e}from"./index.5dab9bd2.js";import{r as t,u as n,a3 as a,a2 as r,j as o,K as s,o as l,m as i,Q as d,n as c,Y as m}from"./vendor.686fd1d4.js";import{P as u}from"./index.e2991800.js";import"./useContentViewHeight.e8047e09.js";import"./useWindowSizeFn.d82e06bf.js";/* empty css              *//* empty css              */import"./onMountedOrActivated.172ad1ec.js";const p=Symbol("watermark-dom");var f=o({components:{CollapseContainer:e,PageWrapper:u},setup(){const e=t(null),{setWatermark:o,clear:s}=function(e=t(document.body)){let o=()=>{};const s=p.toString(),l=()=>{const t=document.getElementById(s);if(t){const a=n(e);a&&a.removeChild(t)}window.removeEventListener("resize",o)},i=t=>{l();const a=document.createElement("canvas");a.width=300,a.height=240;const r=a.getContext("2d");r&&(r.rotate(-20*Math.PI/120),r.font="15px Vedana",r.fillStyle="rgba(0, 0, 0, 0.15)",r.textAlign="left",r.textBaseline="middle",r.fillText(t,a.width/20,a.height));const o=document.createElement("div");o.id=s,o.style.pointerEvents="none",o.style.top="0px",o.style.left="0px",o.style.position="absolute",o.style.zIndex="100000",o.style.width=document.documentElement.clientWidth+"px",o.style.height=document.documentElement.clientHeight+"px",o.style.background="url("+a.toDataURL("image/png")+") left top repeat";const i=n(e);return i&&i.appendChild(o),s};return{setWatermark:function(e){i(e),o=()=>{i(e)},window.addEventListener("resize",o),r()&&a((()=>{l()}))},clear:l}}();return{setWatermark:o,clear:s,areaRef:e}}});const g=m(" Create "),h=m(" Clear "),x=m(" Reset ");f.render=function(e,t,n,a,r,o){const m=s("a-button"),u=s("CollapseContainer"),p=s("PageWrapper");return l(),i(p,{title:"水印示例"},{default:d((()=>[c(u,{class:"w-full h-32 bg-white rounded-md",title:"Global WaterMark"},{default:d((()=>[c(m,{type:"primary",class:"mr-2",onClick:t[1]||(t[1]=t=>e.setWatermark("WaterMark Info"))},{default:d((()=>[g])),_:1}),c(m,{color:"error",class:"mr-2",onClick:e.clear},{default:d((()=>[h])),_:1},8,["onClick"]),c(m,{color:"warning",class:"mr-2",onClick:t[2]||(t[2]=t=>e.setWatermark("WaterMark Info New"))},{default:d((()=>[x])),_:1})])),_:1})])),_:1})};export default f;