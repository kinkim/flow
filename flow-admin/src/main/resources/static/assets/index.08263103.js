var d=(t,i,o)=>new Promise((l,s)=>{var p=e=>{try{u(o.next(e))}catch(r){s(r)}},n=e=>{try{u(o.throw(e))}catch(r){s(r)}},u=e=>e.done?l(e.value):Promise.resolve(e.value).then(p,n);u((o=o.apply(t,i)).next())});import{B as b,a as w}from"./index.a492e5cd.js";import{B as h}from"./TableImg.8ad498cd.js";import{B as D,l as A}from"./BasicForm.027cbf67.js";import{u as y}from"./useTable.7536e350.js";import{g as C}from"./role.13794e37.js";import{P as I}from"./index.c79f76d5.js";import _ from"./CompanyTree.44ea415e.js";import{F as x}from"./constantEnum.bf6653fb.js";import{az as S,a as T,h as R,aB as m,i as P,l as q,C as F,q as c,aC as v}from"./index.e61ad282.js";import"./useWindowSizeFn.27de1b1b.js";import"./FullscreenOutlined.3a424424.js";import"./index.ce1ab63a.js";import"./Checkbox.bb68ead3.js";import"./index.99ef178c.js";import"./index.d92fc3ac.js";import"./eagerComputed.d3c262c3.js";import"./useForm.81406efc.js";import"./index.8f86dec4.js";import"./index.9f299dd3.js";import"./index.6e0a0264.js";import"./uuid.2b29000c.js";import"./index.6749d186.js";import"./_baseIteratee.7ece590b.js";import"./get.bca7403a.js";import"./DeleteOutlined.3b47e95d.js";import"./index.114515de.js";import"./useRefs.0c428178.js";import"./Form.8b25370b.js";import"./Col.f72eb8d0.js";import"./useFlexGapSupport.ed2a5fc1.js";import"./useSize.5a37866d.js";import"./index.9f50e000.js";import"./sortable.esm.2632adaa.js";import"./RedoOutlined.5bbc1139.js";import"./index.e8295ad9.js";import"./fromPairs.84aabb58.js";import"./scrollTo.e9bc7999.js";import"./index.ba1457ae.js";/* empty css              *//* empty css               */import"./index.9233793b.js";import"./transButton.2c723edc.js";import"./index.8ba0bfed.js";import"./index.dbdde179.js";import"./download.810571da.js";import"./base64Conver.08b9f4ec.js";import"./index.ebd81f61.js";import"./index.6d7de824.js";import"./uniqBy.8c214189.js";import"./index.769e0bcb.js";import"./index.f6c9d1b9.js";import"./useContentViewHeight.34702d2a.js";import"./ArrowLeftOutlined.0e95a5b3.js";import"./index.5621adef.js";import"./index.0ba11515.js";import"./useContextMenu.87346ca1.js";import"./company.adda1c4d.js";const k=[{title:"\u540D\u79F0",dataIndex:"name",width:150,align:"left"},{title:"\u6807\u8BC6",dataIndex:"sn",width:120,align:"left"},{title:"\u516C\u53F8",dataIndex:"companyName",width:120,align:"left"}],M=[{field:"keyword",label:"\u5173\u952E\u5B57",component:"Input",labelWidth:60,colProps:{span:12,lg:{span:12,offset:0},sm:{span:10,offset:0},xs:{span:16,offset:0}}}];new RegExp(x.SN),new RegExp("^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\\d{8}$"),new RegExp("^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$");const $=T({name:"RoleSelector",components:{BasicModal:b,BasicForm:D,BasicTable:h,PageWrapper:I,CompanyTree:_,TableAction:A},setup(t,{emit:i}){let o="";const[l,{setModalProps:s,closeModal:p}]=w(a=>d(this,null,function*(){s({wrapClassName:"selector-content"}),o=a.personalId,u({searchInfo:{personalId:o}})})),[n,{reload:u,getSelectRows:e}]=y({title:"",api:C,immediate:!1,columns:k,rowSelection:{type:"checkbox",columnWidth:30},formConfig:{labelWidth:60,schemas:M,showResetButton:!1,showAdvancedButton:!1,autoSubmitOnEnter:!0},size:"small",canResize:!1,useSearchForm:!0,showTableSetting:!1,showIndexColumn:!1,bordered:!0,scroll:{y:300}}),r=R(()=>"\u9009\u62E9\u89D2\u8272");function f(){u()}function g(){const a=e();i("success",a),p()}function B(a){let E={companyId:a?a.id:"",personalId:o};u({searchInfo:E})}return{registerTable:n,registerModal:l,getTitle:r,handleSubmit:g,handleSuccess:f,handleSelect:B}}});function W(t,i,o,l,s,p){const n=m("CompanyTree"),u=m("BasicTable"),e=m("PageWrapper"),r=m("BasicModal");return P(),q(r,v({wrapClassName:"selector-body"},t.$attrs,{onRegister:t.registerModal,title:t.getTitle,onOk:t.handleSubmit}),{default:F(()=>[c(e,{dense:"",contentClass:"flex"},{default:F(()=>[c(n,{class:"w-1/4 xl:w-3/10",onSelect:t.handleSelect},null,8,["onSelect"]),c(u,{onRegister:t.registerTable,class:"w-3/4 xl:w-7/10"},null,8,["onRegister"])]),_:1})]),_:1},16,["onRegister","title","onOk"])}var Ge=S($,[["render",W]]);export{Ge as default};