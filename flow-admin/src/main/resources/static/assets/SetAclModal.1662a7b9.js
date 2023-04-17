var O=Object.defineProperty,P=Object.defineProperties;var W=Object.getOwnPropertyDescriptors;var M=Object.getOwnPropertySymbols;var j=Object.prototype.hasOwnProperty,H=Object.prototype.propertyIsEnumerable;var _=(e,t,r)=>t in e?O(e,t,{enumerable:!0,configurable:!0,writable:!0,value:r}):e[t]=r,R=(e,t)=>{for(var r in t||(t={}))j.call(t,r)&&_(e,r,t[r]);if(M)for(var r of M(t))H.call(t,r)&&_(e,r,t[r]);return e},w=(e,t)=>P(e,W(t));var S=(e,t,r)=>new Promise((d,m)=>{var l=s=>{try{n(r.next(s))}catch(p){m(p)}},i=s=>{try{n(r.throw(s))}catch(p){m(p)}},n=s=>s.done?d(s.value):Promise.resolve(s.value).then(l,i);n((r=r.apply(e,t)).next())});import{B as X,a as q}from"./index.e8eb4b57.js";import{B as J}from"./TableImg.00c4ed04.js";import{B as K}from"./BasicForm.51e3eb56.js";import{u as Q}from"./useTable.412b054f.js";import{u as Y}from"./useForm.d201bd46.js";import{b as Z,d as ee}from"./group.data.bb7bdbc4.js";import{b as oe}from"./account.4d139407.js";import{A as te,g as E,s as re}from"./AclCheckboxGroup.4f13fc7c.js";import{az as ae,a as se,cX as le,w as f,j as G,f5 as z,aB as g,o as ie,k as ne,B as k,p as B,n as ce,C as me,aC as pe}from"./index.da587afe.js";import{C as L}from"./index.5aab84c4.js";import"./useWindowSizeFn.3fdab581.js";import"./FullscreenOutlined.3d903e0f.js";import"./index.492229cd.js";import"./Checkbox.9d75a86f.js";import"./index.a85fa86f.js";import"./eagerComputed.3bbb876f.js";import"./index.c0d22213.js";import"./index.a0d7e8a1.js";import"./index.6d85aa5b.js";import"./useSize.dbee3c08.js";import"./useContentViewHeight.f2db75e2.js";import"./ArrowLeftOutlined.8a04d10c.js";import"./index.25a87437.js";import"./transButton.1d3b575b.js";import"./index.447b3242.js";import"./index.d7c8b760.js";import"./index.9d0fc194.js";import"./uuid.2b29000c.js";import"./index.3c9c3a6f.js";import"./_baseIteratee.78d8c020.js";import"./get.40c34cfc.js";import"./DeleteOutlined.690086a4.js";import"./index.d1cda802.js";import"./useRefs.1aead304.js";import"./Form.f8b72655.js";import"./Col.4ac749bb.js";import"./useFlexGapSupport.caa26b6d.js";import"./index.a64c8a60.js";import"./sortable.esm.c081a59d.js";import"./RedoOutlined.46184af0.js";import"./index.813f510f.js";import"./fromPairs.daf93cb7.js";import"./scrollTo.37d32e36.js";import"./index.176a852f.js";/* empty css              *//* empty css               */import"./index.b3a5d1df.js";import"./index.5d1da0c4.js";import"./index.72d53e09.js";import"./download.75f04d3f.js";import"./base64Conver.08b9f4ec.js";import"./index.9912aa68.js";import"./index.36675b6e.js";import"./uniqBy.f906dabc.js";const ue=L.Group,de=se({name:"SetAclModal",components:{BasicModal:X,BasicTable:J,BasicForm:K,Select:le,Checkbox:L,CheckboxGroup:ue,AclCheckboxGroup:te},emits:["success","register"],setup(e,{emit:t}){const r=f(!0),d=f(""),m=f([]),l=f(!0),i=f(!1),n=f(!1),[s,{setFieldsValue:p,updateSchema:T,resetFields:h,validate:v}]=Y({labelWidth:100,schemas:Z,showActionButtonGroup:!1,actionColOptions:{span:0}}),[c,{getDataSource:C,setTableData:y,reload:he,expandAll:I}]=Q({title:"",size:"small",dataSource:m,loading:l,immediate:!1,searchInfo:{},columns:ee,formConfig:{labelWidth:120},canResize:!0,maxHeight:400,isTreeTable:!0,useSearchForm:!1,showTableSetting:!1,bordered:!1,showIndexColumn:!1,pagination:!1}),[U,{setModalProps:A,closeModal:$}]=q(o=>S(this,null,function*(){if(h(),A({confirmLoading:!1,title:"\u7ED9\u7EC4\u3010"+o.record.name+"("+o.record.sn+")\u3011\u8BBE\u7F6E\u6743\u9650"}),r.value=!!(o!=null&&o.isUpdate),G(r)){let a=o.record.groups||[];a=a.map(u=>u.id),p(w(R({},o.record),{groups:a})),d.value=o.record.id}l.value=!0,E({groupId:o.record.id}).then(a=>{x(a),m.value=a,l.value=!1,setTimeout(()=>{I()})})}));function x(o){let a=0,u=0,b=0;z(o,F=>{F.pvs&&F.pvs.forEach(N=>{a++,N.flag?u++:b++})}),u===a?(n.value=!0,i.value=!1):b===a?(n.value=!1,i.value=!1):i.value=!0}function V(){return S(this,null,function*(){try{A({confirmLoading:!0});const o=yield v();o.groups=o.groups.map(a=>({id:a})),o.userId=o.id,delete o.id,yield oe(o),$(),t("success")}finally{A({confirmLoading:!1})}})}function D(){E({groupId:d.value}).then(o=>{x(o)})}return{registerTable:c,registerModal:U,indeterminate:i,registerForm:s,checkAllBox:n,handelChangeCheckAllStatus:D,checkAll:o=>{l.value=!0,i.value=!1,re({checked:o.target.checked?1:0,aclInfo:{releaseId:G(d)}}).then(a=>{z(m.value,u=>{u.pvs&&u.pvs.forEach(b=>{b.flag=o.target.checked})}),y(m.value),l.value=!1,setTimeout(()=>{I()})}).catch(()=>{l.value=!1})},handleSubmit:V}}});function fe(e,t,r,d,m,l){const i=g("Checkbox"),n=g("AclCheckboxGroup"),s=g("BasicTable"),p=g("BasicForm"),T=g("BasicModal");return ie(),ne(T,pe(e.$attrs,{onRegister:e.registerModal,onOk:e.handleSubmit}),{default:k(()=>[B(p,{onRegister:e.registerForm},{acls:k(({model:h,field:v})=>[B(s,{value:h[v],"onUpdate:value":c=>h[v]=c,onRegister:e.registerTable},{customTitle:k(()=>[ce("span",null,[B(i,{checked:e.checkAllBox,"onUpdate:checked":t[0]||(t[0]=c=>e.checkAllBox=c),indeterminate:e.indeterminate,onClick:e.checkAll},{default:k(()=>[me("\u5168\u9009")]),_:1},8,["checked","indeterminate","onClick"])])]),pvs:k(({record:c})=>[B(n,{onChangeCheckAllStatus:e.handelChangeCheckAllStatus,checkboxList:c.pvs.map(C=>({label:C.name,value:C.position,checked:C.flag})),groupId:h.id,moduleSn:c.sn,moduleId:c.id},null,8,["onChangeCheckAllStatus","checkboxList","groupId","moduleSn","moduleId"])]),_:2},1032,["value","onUpdate:value","onRegister"])]),_:1},8,["onRegister"])]),_:1},16,["onRegister","onOk"])}var Co=ae(de,[["render",fe]]);export{Co as default};