var B=(e,t,l)=>new Promise((s,r)=>{var c=o=>{try{i(l.next(o))}catch(a){r(a)}},u=o=>{try{i(l.throw(o))}catch(a){r(a)}},i=o=>o.done?s(o.value):Promise.resolve(o.value).then(c,u);i((l=l.apply(e,t)).next())});import{B as h}from"./BasicForm.027cbf67.js";import{u as f}from"./useForm.81406efc.js";import{az as C,a as F,cG as P,aB as m,i as g,l as _,C as p,p as k,q as n,D as d}from"./index.e61ad282.js";import{P as A}from"./index.c79f76d5.js";/* empty css              *//* empty css               */import"./index.9f50e000.js";import"./index.ce1ab63a.js";import"./Checkbox.bb68ead3.js";import"./index.99ef178c.js";import"./index.6e0a0264.js";import"./index.8f86dec4.js";import"./index.9f299dd3.js";import"./index.9233793b.js";import"./get.bca7403a.js";import"./index.d92fc3ac.js";import"./eagerComputed.d3c262c3.js";import"./index.6749d186.js";import"./_baseIteratee.7ece590b.js";import"./DeleteOutlined.3b47e95d.js";import"./index.114515de.js";import"./useRefs.0c428178.js";import"./Form.8b25370b.js";import"./Col.f72eb8d0.js";import"./useFlexGapSupport.ed2a5fc1.js";import"./useSize.5a37866d.js";import"./transButton.2c723edc.js";import"./index.8ba0bfed.js";import"./index.a492e5cd.js";import"./useWindowSizeFn.27de1b1b.js";import"./FullscreenOutlined.3a424424.js";import"./index.dbdde179.js";import"./index.e8295ad9.js";import"./uuid.2b29000c.js";import"./download.810571da.js";import"./base64Conver.08b9f4ec.js";import"./index.ebd81f61.js";import"./index.6d7de824.js";import"./uniqBy.8c214189.js";import"./index.769e0bcb.js";import"./index.f6c9d1b9.js";import"./useContentViewHeight.34702d2a.js";import"./ArrowLeftOutlined.0e95a5b3.js";import"./index.5621adef.js";const b=[{field:"field1",component:"Input",label:"\u5B57\u6BB51",colProps:{span:8},show:({values:e})=>!!e.field5},{field:"field2",component:"Input",label:"\u5B57\u6BB52",colProps:{span:8},ifShow:({values:e})=>!!e.field6},{field:"field3",component:"DatePicker",label:"\u5B57\u6BB53",colProps:{span:8},dynamicDisabled:({values:e})=>!!e.field7},{field:"field4",component:"Select",label:"\u5B57\u6BB54",colProps:{span:8},dynamicRules:({values:e})=>e.field8?[{required:!0,message:"\u5B57\u6BB54\u5FC5\u586B"}]:[],componentProps:{options:[{label:"\u9009\u98791",value:"1",key:"1"},{label:"\u9009\u98792",value:"2",key:"2"}]}},{field:"field11",component:"DatePicker",label:"\u5B57\u6BB511",colProps:{span:8}},{field:"field5",component:"Switch",label:"\u662F\u5426\u663E\u793A\u5B57\u6BB51(css\u63A7\u5236)",colProps:{span:8},labelWidth:200},{field:"field6",component:"Switch",label:"\u662F\u5426\u663E\u793A\u5B57\u6BB52(dom\u63A7\u5236)",colProps:{span:8},labelWidth:200},{field:"field7",component:"Switch",label:"\u662F\u5426\u7981\u7528\u5B57\u6BB53",colProps:{span:8},labelWidth:200},{field:"field8",component:"Switch",label:"\u5B57\u6BB54\u662F\u5426\u5FC5\u586B",colProps:{span:8},labelWidth:200}],W=[{field:"f1",component:"Input",label:"F1",colProps:{span:12},labelWidth:200,componentProps:({formModel:e})=>({placeholder:"\u540C\u6B65f2\u7684\u503C\u4E3Af1",onChange:t=>{e.f2=t.target.value}})},{field:"f2",component:"Input",label:"F2",colProps:{span:12},labelWidth:200,componentProps:{disabled:!0}},{field:"f3",component:"Input",label:"F3",colProps:{span:12},labelWidth:200,componentProps:({formActionType:e})=>({placeholder:"\u503C\u6539\u53D8\u65F6\u6267\u884C\u67E5\u8BE2,\u67E5\u770B\u63A7\u5236\u53F0",onChange:()=>B(void 0,null,function*(){const{validate:t}=e,l=yield t()})})}],w=F({components:{BasicForm:h,CollapseContainer:P,PageWrapper:A},setup(){const[e,{setProps:t,updateSchema:l,appendSchemaByField:s,removeSchemaByField:r}]=f({labelWidth:120,schemas:b,actionColOptions:{span:24}}),[c]=f({labelWidth:120,schemas:W,actionColOptions:{span:24}});function u(){l({field:"field3",label:"\u5B57\u6BB53 New"})}function i(){l([{field:"field3",label:"\u5B57\u6BB53 New++"},{field:"field4",label:"\u5B57\u6BB54 New++"}])}function o(){s({field:"field10",label:"\u5B57\u6BB510",component:"Input",colProps:{span:8}},"field3")}function a(){r("field11")}return{register:e,register1:c,schemas:b,setProps:t,changeLabel3:u,changeLabel34:i,appendField:o,deleteField:a}}}),D={class:"mb-4"};function E(e,t,l,s,r,c){const u=m("a-button"),i=m("BasicForm"),o=m("CollapseContainer"),a=m("PageWrapper");return g(),_(a,{title:"\u52A8\u6001\u8868\u5355\u793A\u4F8B"},{default:p(()=>[k("div",D,[n(u,{onClick:e.changeLabel3,class:"mr-2"},{default:p(()=>[d(" \u66F4\u6539\u5B57\u6BB53label ")]),_:1},8,["onClick"]),n(u,{onClick:e.changeLabel34,class:"mr-2"},{default:p(()=>[d(" \u540C\u65F6\u66F4\u6539\u5B57\u6BB53,4label ")]),_:1},8,["onClick"]),n(u,{onClick:e.appendField,class:"mr-2"},{default:p(()=>[d(" \u5F80\u5B57\u6BB53\u540E\u9762\u63D2\u5165\u5B57\u6BB510 ")]),_:1},8,["onClick"]),n(u,{onClick:e.deleteField,class:"mr-2"},{default:p(()=>[d(" \u5220\u9664\u5B57\u6BB511 ")]),_:1},8,["onClick"])]),n(o,{title:"\u52A8\u6001\u8868\u5355\u793A\u4F8B,\u52A8\u6001\u6839\u636E\u8868\u5355\u5185\u5176\u4ED6\u503C\u6539\u53D8"},{default:p(()=>[n(i,{onRegister:e.register},null,8,["onRegister"])]),_:1}),n(o,{class:"mt-5",title:"componentProps\u52A8\u6001\u6539\u53D8"},{default:p(()=>[n(i,{onRegister:e.register1},null,8,["onRegister"])]),_:1})]),_:1})}var Pe=C(w,[["render",E]]);export{Pe as default};