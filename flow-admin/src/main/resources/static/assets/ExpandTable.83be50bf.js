import{B as d}from"./TableImg.b1f3ef3e.js";import{l as F}from"./BasicForm.d2fa120b.js";import{u as B}from"./useTable.08d16777.js";import{P as C}from"./index.432b4215.js";import{getBasicColumns as f}from"./tableData.38d0f3c2.js";import{d as b}from"./table.2feb4b97.js";import{az as E,a as g,aB as i,o as a,k as m,B as r,p as _,n as T,t as A,l as D}from"./index.0280002f.js";import"./index.5c81bb10.js";import"./Checkbox.61b53ada.js";import"./index.c68c747e.js";import"./index.86a12b41.js";import"./eagerComputed.832d624f.js";import"./useForm.431e5593.js";import"./index.6db63b77.js";import"./index.81d6e7a6.js";import"./index.3486105d.js";import"./uuid.2b29000c.js";import"./index.9aa048a5.js";import"./_baseIteratee.9e690663.js";import"./get.742319ba.js";import"./DeleteOutlined.1c34c6c1.js";import"./index.a1c94158.js";import"./useRefs.f68e97c5.js";import"./Form.227e5499.js";import"./Col.32e8fee0.js";import"./useFlexGapSupport.f92812e7.js";import"./useSize.71621680.js";import"./useWindowSizeFn.c0eea5f2.js";import"./index.0e48118d.js";import"./FullscreenOutlined.d5490f36.js";import"./index.498da238.js";import"./sortable.esm.2632adaa.js";import"./RedoOutlined.59857f8a.js";import"./index.3dcb35e5.js";import"./fromPairs.84aabb58.js";import"./scrollTo.37a57864.js";import"./index.e5c4a097.js";/* empty css              *//* empty css               */import"./index.46b96662.js";import"./transButton.fa31f1ed.js";import"./index.85e9aa1e.js";import"./index.1d3f95d6.js";import"./download.f8a78464.js";import"./base64Conver.08b9f4ec.js";import"./index.e42b0536.js";import"./index.619bca12.js";import"./uniqBy.facde3d1.js";import"./index.4266ca8e.js";import"./index.02c8bfe1.js";import"./useContentViewHeight.084217e3.js";import"./ArrowLeftOutlined.e9ea5e65.js";import"./index.e0f520b3.js";const k=g({components:{BasicTable:d,TableAction:F,PageWrapper:C},setup(){const[o]=B({api:b,title:"\u53EF\u5C55\u5F00\u8868\u683C\u6F14\u793A",titleHelpMessage:["\u5DF2\u542F\u7528expandRowByClick","\u5DF2\u542F\u7528stopButtonPropagation"],columns:f(),rowKey:"id",canResize:!1,expandRowByClick:!0,actionColumn:{width:160,title:"Action",dataIndex:"action",fixed:"right"}});function p(t){}function n(t){}return{registerTable:o,handleDelete:p,handleOpen:n}}});function w(o,p,n,t,h,x){const l=i("TableAction"),s=i("BasicTable"),c=i("PageWrapper");return a(),m(c,{title:"\u53EF\u5C55\u5F00\u8868\u683C",content:"TableAction\u7EC4\u4EF6\u53EF\u914D\u7F6EstopButtonPropagation\u6765\u963B\u6B62\u64CD\u4F5C\u6309\u94AE\u7684\u70B9\u51FB\u4E8B\u4EF6\u5192\u6CE1\uFF0C\u4EE5\u4FBF\u914D\u5408Table\u7EC4\u4EF6\u7684expandRowByClick"},{default:r(()=>[_(s,{onRegister:o.registerTable},{expandedRowRender:r(({record:e})=>[T("span",null,"No: "+A(e.no),1)]),bodyCell:r(({column:e,record:u})=>[e.key==="action"?(a(),m(l,{key:0,stopButtonPropagation:"",actions:[{label:"\u5220\u9664",icon:"ic:outline-delete-outline",onClick:o.handleDelete.bind(null,u)}],dropDownActions:[{label:"\u542F\u7528",popConfirm:{title:"\u662F\u5426\u542F\u7528\uFF1F",confirm:o.handleOpen.bind(null,u)}}]},null,8,["actions","dropDownActions"])):D("",!0)]),_:1},8,["onRegister"])]),_:1})}var yo=E(k,[["render",w]]);export{yo as default};