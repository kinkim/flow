var e=Object.defineProperty,t=Object.defineProperties,a=Object.getOwnPropertyDescriptors,n=Object.getOwnPropertySymbols,s=Object.prototype.hasOwnProperty,l=Object.prototype.propertyIsEnumerable,c=(t,a,n)=>a in t?e(t,a,{enumerable:!0,configurable:!0,writable:!0,value:n}):t[a]=n,r=(e,t)=>{for(var a in t||(t={}))s.call(t,a)&&c(e,a,t[a]);if(n)for(var a of n(t))l.call(t,a)&&c(e,a,t[a]);return e},o=(e,n)=>t(e,a(n)),i=(e,t,a)=>new Promise(((n,s)=>{var l=e=>{try{r(a.next(e))}catch(t){s(t)}},c=e=>{try{r(a.throw(e))}catch(t){s(t)}},r=e=>e.done?n(e.value):Promise.resolve(e.value).then(l,c);r((a=a.apply(e,t)).next())}));import{u as d,_ as u}from"./TableImg.95802092.js";import{f as p}from"./useForm.2f2fe7b8.js";import{a0 as y,k as h,at as m,au as f,ac as b,f as v,F as k,l as x,m as K,K as g,o as L,n as _,Q as C,W as S,X as A,s as j,q as E,ar as T,S as I,ag as w,x as N,a as D,al as P,r as M,I as B,J as O,$,aT as R,bj as U,aH as F,a1 as H,A as X,t as Y,aK as W,a4 as z,D as q,w as G,v as J,b$ as Q,N as V,af as Z,bk as ee,c0 as te,bJ as ae,bs as ne,aQ as se,aP as le,bm as ce,bi as re,b_ as oe,bd as ie}from"./vendor.59fe1062.js";import{i as de,m as ue,aq as pe,p as ye,d as he,aE as me,aF as fe,c as be,h as ve,aC as ke,L as xe,aG as Ke,ab as ge,z as Le}from"./index.21cfc268.js";/* empty css              */import{_ as _e}from"./PageWrapper.01f0bc61.js";/* empty css              *//* empty css              *//* empty css              *//* empty css              *//* empty css              *//* empty css              */import{searchFormSchema as Ce,cardList as Se}from"./data.b3b16d12.js";import Ae from"./ProcessHeader.eb457392.js";/* empty css              *//* empty css              *//* empty css              *//* empty css              */import"./useWindowSizeFn.cd99a382.js";import"./useModal.7ee8a690.js";import"./onMountedOrActivated.932ae6a7.js";import"./useSortable.782c794d.js";/* empty css              */import"./CountdownInput.ac1f5740.js";import"./download.a7e72615.js";import"./StrengthMeter.aa8057ae.js";import"./usePageContext.557e08ad.js";/* empty css              *//* empty css              *//* empty css              */import"./process.b37f0197.js";const je=({icon:e})=>e?de(e)?y(ue,{icon:e,class:"mr-1"}):ue:null;var Ee,Te;(Te=Ee||(Ee={}))[Te.SELECT_ALL=0]="SELECT_ALL",Te[Te.UN_SELECT_ALL=1]="UN_SELECT_ALL",Te[Te.EXPAND_ALL=2]="EXPAND_ALL",Te[Te.UN_EXPAND_ALL=3]="UN_EXPAND_ALL",Te[Te.CHECK_STRICTLY=4]="CHECK_STRICTLY",Te[Te.CHECK_UN_STRICTLY=5]="CHECK_UN_STRICTLY";var Ie=h({name:"BasicTreeHeader",components:{BasicTitle:pe,Icon:ue,Dropdown:m,Menu:f,MenuItem:f.Item,MenuDivider:f.Divider,InputSearch:b.Search},props:{helpMessage:{type:[String,Array],default:""},title:ye.string,toolbar:ye.bool,checkable:ye.bool,search:ye.bool,checkAll:ye.func,expandAll:ye.func},emits:["strictly-change","search"],setup(e,{emit:t}){const{t:a}=he(),n=v((()=>{const{checkable:t}=e,n=[{label:a("component.tree.expandAll"),value:Ee.EXPAND_ALL},{label:a("component.tree.unExpandAll"),value:Ee.UN_EXPAND_ALL,divider:t}];return t?[{label:a("component.tree.selectAll"),value:Ee.SELECT_ALL},{label:a("component.tree.unSelectAll"),value:Ee.UN_SELECT_ALL,divider:t},...n,{label:a("component.tree.checkStrictly"),value:Ee.CHECK_STRICTLY},{label:a("component.tree.checkUnStrictly"),value:Ee.CHECK_UN_STRICTLY}]:n}));const s=k((function(e){t("search",e)}),200);return{t:a,toolbarList:n,handleMenuClick:function(a){var n,s,l,c;const{key:r}=a;switch(r){case Ee.SELECT_ALL:null==(n=e.checkAll)||n.call(e,!0);break;case Ee.UN_SELECT_ALL:null==(s=e.checkAll)||s.call(e,!1);break;case Ee.EXPAND_ALL:null==(l=e.expandAll)||l.call(e,!0);break;case Ee.UN_EXPAND_ALL:null==(c=e.expandAll)||c.call(e,!1);break;case Ee.CHECK_STRICTLY:t("strictly-change",!1);break;case Ee.CHECK_UN_STRICTLY:t("strictly-change",!0)}},handleSearch:function(e){s(e.target.value)}}}});const we=N();x("data-v-c31eb57c");const Ne={class:"flex px-2 py-1.5 items-center basic-tree-header"},De={key:2,class:"flex flex-1 justify-end items-center cursor-pointer"},Pe={key:0,class:"mr-1 w-2/3"};K();const Me=we(((e,t,a,n,s,l)=>{const c=g("BasicTitle"),r=g("InputSearch"),o=g("Icon"),i=g("MenuItem"),d=g("MenuDivider"),u=g("Menu"),p=g("Dropdown");return L(),_("div",Ne,[e.$slots.headerTitle?C(e.$slots,"headerTitle",{key:0},void 0,!0):S("",!0),!e.$slots.headerTitle&&e.title?(L(),_(c,{key:1,helpMessage:e.helpMessage},{default:we((()=>[A(j(e.title),1)])),_:1},8,["helpMessage"])):S("",!0),e.search||e.toolbar?(L(),_("div",De,[e.search?(L(),_("div",Pe,[E(r,{placeholder:e.t("common.searchText"),size:"small",allowClear:"",onChange:e.handleSearch},null,8,["placeholder","onChange"])])):S("",!0),e.toolbar?(L(),_(p,{key:1,onClick:t[1]||(t[1]=T((()=>{}),["prevent"]))},{overlay:we((()=>[E(u,{onClick:e.handleMenuClick},{default:we((()=>[(L(!0),_(I,null,w(e.toolbarList,(e=>(L(),_(I,{key:e.value},[E(i,{key:e.value},{default:we((()=>[A(j(e.label),1)])),_:2},1040),e.divider?(L(),_(d,{key:0})):S("",!0)],64)))),128))])),_:1},8,["onClick"])])),default:we((()=>[E(o,{icon:"ion:ellipsis-vertical"})])),_:1})):S("",!0)])):S("",!0)])}));Ie.render=Me,Ie.__scopeId="data-v-c31eb57c";const Be={width:ye.number.def(156),customEvent:{type:Object,default:null},styles:ye.style,showIcon:ye.bool.def(!0),axis:{type:Object,default:()=>({x:0,y:0})},items:{type:Array,default:()=>[]}};const Oe=e=>{const{item:t}=e;return E("span",{style:"display: inline-block; width: 100%; ",class:"px-4",onClick:e.handler.bind(null,t)},[e.showIcon&&t.icon&&E(ue,{class:"mr-2",icon:t.icon},null),E("span",null,[t.label])])};var $e=h({name:"ContextMenu",props:Be,setup(e){const t=M(null),a=M(!1),n=v((()=>{const{axis:t,items:a,styles:n,width:s}=e,{x:l,y:c}=t||{x:0,y:0},i=40*(a||[]).length,d=s,u=document.body,p=u.clientWidth<l+d?l-d:l,y=u.clientHeight<c+i?c-i:c;return o(r({},n),{width:`${s}px`,left:`${p+1}px`,top:`${y+1}px`})}));function s(e,t){const{handler:n,disabled:s}=e;s||(a.value=!1,null==t||t.stopPropagation(),null==t||t.preventDefault(),null==n||n())}function l(t){return t.map((t=>{const{disabled:n,label:c,children:r,divider:o=!1}=t,i=o?E(R,{key:`d-${c}`},null):null;return r&&0!==r.length?D(a)?E(f.SubMenu,{key:c,disabled:n,popupClassName:"context-menu__popup"},{title:()=>E(Oe,{showIcon:e.showIcon,item:t,handler:s},null),default:()=>l(r)}):null:E(I,null,[E(f.Item,{disabled:n,class:"context-menu__item",key:c},{default:()=>[E(Oe,{showIcon:e.showIcon,item:t,handler:s},null)]}),i])}))}return B((()=>{O((()=>a.value=!0))})),$((()=>{const e=D(t);e&&document.body.removeChild(e)})),()=>{let s;const{items:c}=e;return D(a)?E(f,{inlineIndent:12,mode:"vertical",class:"context-menu",ref:t,style:D(n)},"function"==typeof(r=s=l(c))||"[object Object]"===Object.prototype.toString.call(r)&&!U(r)?s:{default:()=>[s]}):null;var r}}});const Re={domList:[],resolve:()=>{}},Ue=function(e){const{event:t}=e||{};if(t&&(null==t||t.preventDefault()),fe)return new Promise((a=>{const n=document.body,s=document.createElement("div"),l={};e.styles&&(l.styles=e.styles),e.items&&(l.items=e.items),e.event&&(l.customEvent=t,l.axis={x:t.clientX,y:t.clientY});const c=E($e,l);F(c,s);const r=function(){Re.resolve("")};Re.domList.push(s);const o=function(){Re.domList.forEach((e=>{try{e&&n.removeChild(e)}catch(t){}})),n.removeEventListener("click",r),n.removeEventListener("scroll",r)};Re.resolve=function(...e){o(),a(e[0])},o(),n.appendChild(s),n.addEventListener("click",r),n.addEventListener("scroll",r)}))},Fe=function(){Re&&(Re.resolve(""),Re.domList=[])};var He=h({name:"BasicTree",inheritAttrs:!1,props:{value:{type:[Object,Array]},renderIcon:{type:Function},helpMessage:{type:[String,Array],default:""},title:ye.string,toolbar:ye.bool,search:ye.bool,checkStrictly:ye.bool,clickRowToExpand:ye.bool.def(!0),checkable:ye.bool.def(!1),replaceFields:{type:Object},treeData:{type:Array},actionList:{type:Array,default:()=>[]},expandedKeys:{type:Array,default:()=>[]},selectedKeys:{type:Array,default:()=>[]},checkedKeys:{type:Array,default:()=>[]},beforeRightClick:{type:Function,default:null},rightMenuList:{type:Array}},emits:["update:expandedKeys","update:selectedKeys","update:value","change","check"],setup(e,{attrs:t,slots:a,emit:n}){const s=X({checkStrictly:e.checkStrictly,expandedKeys:e.expandedKeys||[],selectedKeys:e.selectedKeys||[],checkedKeys:e.checkedKeys||[]}),l=X({startSearch:!1,searchData:[]}),c=M([]),[u]=function(e=!0){return H()&&e&&$((()=>{Fe()})),[Ue,Fe]}(),{prefixCls:p}=be("basic-tree"),y=v((()=>{const{replaceFields:t}=e;return r({children:"children",title:"title",key:"key"},t)})),h=v((()=>{let a=o(r(r({blockNode:!0},t),e),{expandedKeys:s.expandedKeys,selectedKeys:s.selectedKeys,checkedKeys:s.checkedKeys,checkStrictly:s.checkStrictly,replaceFields:D(y),"onUpdate:expandedKeys":e=>{s.expandedKeys=e,n("update:expandedKeys",e)},"onUpdate:selectedKeys":e=>{s.selectedKeys=e,n("update:selectedKeys",e)},onCheck:(e,t)=>{s.checkedKeys=e;const a=Y(e);n("update:value",a),n("check",a,t)},onRightClick:L});return a=W(a,"treeData","class"),a})),m=v((()=>l.startSearch?l.searchData:D(c))),f=v((()=>{var e;return l.startSearch&&0===(null==(e=l.searchData)?void 0:e.length)})),{deleteNodeByKey:b,insertNodeByKey:k,filterByLevel:x,updateNodeByKey:K,getAllKeys:g}=function(e,t){return{deleteNodeByKey:function a(n,s){if(!n)return;const l=s||D(e),{key:c,children:r}=D(t);if(r&&c)for(let e=0;e<l.length;e++){const t=l[e],s=t[r];if(t[c]===n){l.splice(e,1);break}s&&s.length&&a(n,t[r])}},insertNodeByKey:function({parentKey:a=null,node:n,push:s="push"}){const l=P(D(e));if(!a)return l[s](n),void(e.value=l);const{key:c,children:r}=D(t);r&&c&&(me(l,(e=>{e[c]===a&&(e[r]=e[r]||[],e[r][s](n))})),e.value=l)},filterByLevel:function a(n=1,s,l=1){if(!n)return[];const c=[],r=s||D(e)||[];for(let e=0;e<r.length;e++){const s=r[e],{key:o,children:i}=D(t),d=o?s[o]:"",u=i?s[i]:[];c.push(d),u&&u.length&&l<n&&(l+=1,c.push(...a(n,u,l)))}return c},updateNodeByKey:function a(n,s,l){if(!n)return;const c=l||D(e),{key:o,children:i}=D(t);if(i&&o)for(let e=0;e<c.length;e++){const t=c[e],l=t[i];if(t[o]===n){c[e]=r(r({},c[e]),s);break}l&&l.length&&a(n,s,t[i])}},getAllKeys:function a(n){const s=[],l=n||D(e),{key:c,children:r}=D(t);if(!r||!c)return s;for(let e=0;e<l.length;e++){const t=l[e];s.push(t[c]);const n=t[r];n&&n.length&&s.push(...a(n))}return s}}}(c,y);function L(t){return i(this,arguments,(function*({event:t,node:a}){var n;const{rightMenuList:s=[],beforeRightClick:l}=e;let c={event:t,items:[]};if(l&&ve(l)){let e=yield l(a,t);Array.isArray(e)?c.items=e:Object.assign(c,e)}else c.items=s;(null==(n=c.items)?void 0:n.length)&&u(c)}))}function _(e){s.expandedKeys=e}function C(e){s.checkedKeys=e?g():[]}function S(e){s.expandedKeys=e?g():[]}function A(e){s.checkStrictly=e}function j(e){if(!e)return void(l.startSearch=!1);l.startSearch=!0;const{title:t}=D(y);l.searchData=Ke(D(c),(a=>{var n,s;return null!=(s=null==(n=a[t])?void 0:n.includes(e))&&s}),D(y))}function T(t,a){if(e.clickRowToExpand&&a&&0!==a.length)if(s.expandedKeys.includes(t)){const e=[...s.expandedKeys],a=e.findIndex((e=>e===t));-1!==a&&e.splice(a,1),_(e)}else _([...s.expandedKeys,t])}z((()=>{c.value=e.treeData})),z((()=>{s.expandedKeys=e.expandedKeys})),z((()=>{s.selectedKeys=e.selectedKeys})),z((()=>{s.checkedKeys=e.checkedKeys})),q((()=>e.value),(()=>{s.checkedKeys=Y(e.value||[])})),q((()=>s.checkedKeys),(()=>{const e=Y(s.checkedKeys);n("update:value",e),n("change",e)})),z((()=>{s.checkStrictly=e.checkStrictly}));function w(t){const{actionList:a}=e;if(a&&0!==a.length)return a.map(((e,a)=>{var n;let s=!0;return ve(e.show)?s=null==(n=e.show)?void 0:n.call(e,t):Le(e.show)&&(s=e.show),s?E("span",{key:a,class:`${p}__action`},[e.render(t)]):null}))}function N({data:t,level:n}){return t?t.map((t=>{const{title:s,key:l,children:c}=D(y),i=W(t,"title"),d=function(t,a){return!a&&e.renderIcon&&ve(e.renderIcon)?e.renderIcon(t):a}(o(r({},t),{level:n}),t.icon),u=ee(t,c)||[];return E(Q.TreeNode,V(i,{node:Y(t),key:ee(t,l)}),{title:()=>{var e;return E("span",{class:`${p}-title pl-2`,onClick:T.bind(null,t[l],t[c])},[(null==a?void 0:a.title)?ge(a,"title",t):E(I,null,[d&&E(je,{icon:d},null),E("span",{class:(null==(e=D(h))?void 0:e.blockNode)?`${p}__content`:""},[ee(t,s)]),E("span",{class:`${p}__actions`},[w(o(r({},t),{level:n}))])])])},default:()=>N({data:u,level:n+1})})})):null}return d({setExpandedKeys:_,getExpandedKeys:function(){return s.expandedKeys},setSelectedKeys:function(e){s.selectedKeys=e},getSelectedKeys:function(){return s.selectedKeys},setCheckedKeys:function(e){s.checkedKeys=e},getCheckedKeys:function(){return s.checkedKeys},insertNodeByKey:k,deleteNodeByKey:b,updateNodeByKey:K,checkAll:C,expandAll:S,filterByLevel:e=>{s.expandedKeys=x(e)}}),()=>{let n;const{title:s,helpMessage:l,toolbar:c,search:o,checkable:i}=e,d=s||c||o||a.headerTitle;return E("div",{class:[p,"h-full",t.class]},[d&&E(Ie,{checkable:i,checkAll:C,expandAll:S,title:s,search:o,toolbar:c,helpMessage:l,onStrictlyChange:A,onSearch:j},(u=n=ke(a),"function"==typeof u||"[object Object]"===Object.prototype.toString.call(u)&&!U(u)?n:{default:()=>[n]})),G(E(xe,{style:{height:"calc(100% - 38px)"}},{default:()=>[E(Q,V(D(h),{showIcon:!1}),r({default:()=>N({data:D(m),level:1})},ke(a)))]}),[[J,!D(f)]]),G(E(Z,{class:"!mt-4"},null),[[J,D(f)]])]);var u}}}),Xe=h({components:{Icon:te,Progress:ae,PageWrapper:_e,BasicForm:p,[ne.name]:ne,[ne.Item.name]:ne.Item,AListItemMeta:ne.Item.Meta,[se.name]:se,[le.name]:le,BasicTree:He,BasicTable:u,ProcessHeader:Ae,[R.name]:R,[ce.name]:ce,AEmpty:Z,[re.name]:re,[re.Item.name]:re.Item,[oe.name]:oe,[oe.Step.name]:oe.Step,[ie.name]:ie,[ie.TabPane.name]:ie.TabPane},setup(){const e=M([]),t=M();return e.value.push({id:"common",name:"通用流程",children:[{id:"hr",name:"HR通用流程"},{id:"finance",name:"发文流程"},{id:"fawu",name:"监管部流程"},{id:"gongguan",name:"工管流程"}]}),e.value.push({id:"jituan",name:"集团总部",children:[{id:"gongdi",name:"工地流程"}]}),{treeData:e,searchFormSchema:Ce,prefixCls:"list-basic",list:Se,categoryTree:t,pagination:{show:!0,pageSize:3}}}});const Ye=N();x("data-v-792431d4");const We={key:0,class:"extra"},ze={class:"description"};K();const qe=Ye(((e,t,a,n,s,l)=>{const c=g("process-header"),r=g("BasicTree"),o=g("BasicForm"),i=g("router-link"),d=g("a-list-item-meta"),u=g("a-list-item"),p=g("a-list"),y=g("PageWrapper");return L(),_(y,{title:"流程中心",contentClass:"flex",contentBackground:"",class:"!mt-4"},{footer:Ye((()=>[E(c,{current:"launch"})])),default:Ye((()=>[E(r,{title:"流程分类",clickRowToExpand:!0,treeData:e.treeData,replaceFields:{key:"id",title:"name"},onSelect:e.handleSelect,class:"w-1/4 xl:w-1/5 mt-2",ref:"categoryTree",expandedKeys:["jituan","common"],selectedKeys:["common"]},null,8,["treeData","onSelect"]),E("div",{class:["w-3/4 xl:w-4/5 !mt-4",`${e.prefixCls}__content`]},[E(o,{class:`${e.prefixCls}__header-form`,labelWidth:100,schemas:e.searchFormSchema,showActionButtonGroup:!1},null,8,["class","schemas"]),E(p,{pagination:e.pagination},{default:Ye((()=>[(L(!0),_(I,null,w(e.list,(e=>(L(),_(u,{key:e.id,class:"list"},{default:Ye((()=>[E(d,null,{title:Ye((()=>[E(i,{to:`/process/launch/${e.modelKey}`},{default:Ye((()=>[E("span",null,j(e.title),1),e.extra?(L(),_("div",We,j(e.extra),1)):S("",!0)])),_:2},1032,["to"])])),description:Ye((()=>[E("div",ze,j(e.description),1)])),_:2},1024)])),_:2},1024)))),128))])),_:1},8,["pagination"])],2)])),_:1})}));Xe.render=qe,Xe.__scopeId="data-v-792431d4";export default Xe;