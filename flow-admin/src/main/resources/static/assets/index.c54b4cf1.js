import{B as x}from"./TableImg.b1df3b1e.js";import{l as V}from"./BasicForm.e5f615e6.js";import{u as O}from"./useTable.5fdb73d4.js";import{b as W,d as $,p as N,s as U}from"./modelInfo.2d391637.js";import{P as G}from"./index.7347be3d.js";import H from"./FlowCategoryTree.ea99e562.js";import{b as S}from"./index.88470e0c.js";import{M as K,c as j,s as z}from"./ModelInfoModal.145ae9ee.js";import L from"./index.2363afdb.js";import{az as q,a as J,fB as Q,b0 as X,w as m,an as Y,aB as r,bS as Z,y as ee,o as P,k as T,B as c,p as i,C as oe,l as te,j as A,G as ne}from"./index.e1964776.js";import{T as ae}from"./index.1b277829.js";import{A as re}from"./index.e2fe3f97.js";import{B as le}from"./index.2d431917.js";import{a as ie}from"./app.da06e2da.js";import{A as se}from"./index.de2ea945.js";import{D as ue}from"./DeleteOutlined.5791f905.js";import"./index.25019af6.js";import"./Checkbox.e5f92db0.js";import"./index.3a164815.js";import"./index.b3d10dbf.js";import"./eagerComputed.83fd49b0.js";import"./useForm.0cbae54a.js";import"./index.99ffc75a.js";import"./index.c8515968.js";import"./uuid.2b29000c.js";import"./index.fc9b4c53.js";import"./_baseIteratee.ad9ab737.js";import"./get.6b7894e0.js";import"./index.c908afe0.js";import"./useRefs.766f225b.js";import"./Form.e643baa9.js";import"./Col.e011966c.js";import"./useFlexGapSupport.5550da35.js";import"./useSize.5fbb5cc9.js";import"./useWindowSizeFn.a30c5409.js";import"./index.41617e4d.js";import"./sortable.esm.c081a59d.js";import"./RedoOutlined.d4489345.js";import"./FullscreenOutlined.449a4f2d.js";import"./index.657a2808.js";import"./fromPairs.daf93cb7.js";import"./scrollTo.23acaebd.js";/* empty css              *//* empty css               */import"./index.db622673.js";import"./transButton.2db6a2b1.js";import"./index.8373f7dc.js";import"./index.27e2f730.js";import"./download.6d3644ac.js";import"./base64Conver.08b9f4ec.js";import"./index.bc6756fd.js";import"./index.ec5c8d0f.js";import"./uniqBy.fd3e0b27.js";import"./index.59303775.js";import"./useContentViewHeight.f1248c0f.js";import"./ArrowLeftOutlined.093ec11d.js";import"./index.32320e40.js";import"./index.125a810f.js";import"./useContextMenu.97b7e9e2.js";import"./category.3b951e51.js";import"./index.7ad660ce.js";import"./index.0d18b7b2.js";import"./throttleByAnimationFrame.4d5351f6.js";import"./index.c833dd04.js";import"./index.esm.0355b274.js";const{createMessage:I}=ne(),pe=J({name:"Bpmn",components:{BasicTable:x,PageWrapper:G,FlowCategoryTree:H,ModelInfoModal:K,TableAction:V,Avatar:re,Badge:le,Popconfirm:Q,Tag:ae,DeleteOutlined:ue,Authority:se,BpmnPreviewModal:L},setup(){X();const[o,{openModal:d,setModalProps:f}]=S(),[w,{openModal:y,setModalProps:_}]=S();m({});const l=m({}),s=m(null),a=m(!1),[h,{getForm:g,reload:n}]=O({title:"\u5217\u8868",api:W,columns:j,formConfig:{labelWidth:120,schemas:z,showAdvancedButton:!1,showResetButton:!1,autoSubmitOnEnter:!0},searchInfo:{modelType:0},useSearchForm:!0,showIndexColumn:!1,bordered:!0,actionColumn:{width:210,align:"left",title:"\u64CD\u4F5C",dataIndex:"action"}});Y(()=>{const{updateSchema:e}=g();ie().then(t=>{e([{field:"appSn",componentProps:{options:t,labelField:"id"}}])})});function C(){if(!A(l).code){I.warning("\u8BF7\u9009\u62E9\u5206\u7C7B\uFF01",2);return}d(!0,{record:{categoryCode:A(l).code},isUpdate:!1}),f({maskClosable:!1,footer:null,width:"100%",canFullscreen:!1,destroyOnClose:!0,defaultFullscreen:!0,useWrapper:!0})}function b(e,t){const{status:B}=e;return[{icon:"ant-design:eye",tooltip:"\u6D41\u7A0B\u56FE\u9884\u89C8",label:"",onClick:u.bind(null,e)},{icon:"ant-design:play-circle-filled",tooltip:"\u53D1\u5E03",label:"",popConfirm:{title:"\u786E\u8BA4\u53D1\u5E03\u5417?",confirm:M.bind(null,e),placement:"left"},ifShow:B===2},{icon:"ant-design:stop-twotone",tooltip:"\u505C\u7528",label:"",popConfirm:{title:"\u786E\u8BA4\u505C\u7528\u5417?",confirm:F.bind(null,e),placement:"left"},ifShow:B===3||B===2},{icon:"clarity:note-edit-line",tooltip:"\u4FEE\u6539",label:"",onClick:p.bind(null,e)},{icon:"ant-design:delete-outlined",color:"error",tooltip:"\u5220\u9664",label:"",popConfirm:{title:"\u662F\u5426\u786E\u8BA4\u5220\u9664",confirm:v.bind(null,e),placement:"left"}}]}function u(e){y(!0,{modelKey:e.modelKey,isUpdate:!0}),_({title:`\u9884\u89C8-${e.name}`,bodyStyle:{padding:"0px",margin:"0px"},width:900,height:400,showOkBtn:!1,showCancelBtn:!0,cancelText:"\u5173\u95ED"})}function p(e){d(!0,{record:e,isUpdate:!0}),f({maskClosable:!1,footer:null,width:"100%",destroyOnClose:!0,canFullscreen:!1,defaultFullscreen:!0})}function v(e){$([e.id]).then(t=>{n()})}function M(e){a.value=!0,N(e.modelId).then(t=>{n(),I.success("\u53D1\u5E03\u6210\u529F\uFF01",2)}).finally(()=>{a.value=!1})}function F(e){a.value=!0,U(e.modelId).then(t=>{n()}).finally(()=>{a.value=!1})}function E(){n()}function k(){}function D(e){l.value=e,s.value=e.code;let t={categoryCode:e?e.code:""};n({searchInfo:t})}function R(e){if(!e)try{let t={categoryCode:s.value||""};setTimeout(()=>{n({searchInfo:t})},200)}catch(t){}}return{loadingRef:a,registerTable:h,registerBpmnPreviewModal:w,registerModal:o,handlePublish:M,handleStop:F,createActions:b,handleCreate:C,handleEdit:p,cancelDeleteRole:k,handleDelete:v,handleSuccess:E,handleSelect:D,handleModelInfoVisibleChange:R}}});function me(o,d,f,w,y,_){const l=r("FlowCategoryTree"),s=r("a-button"),a=r("TableAction"),h=r("BasicTable"),g=r("ModelInfoModal"),n=r("BpmnPreviewModal"),C=r("PageWrapper"),b=Z("loading");return ee((P(),T(C,{dense:"",contentFullHeight:"",fixedHeight:"",contentClass:"flex"},{default:c(()=>[i(l,{class:"w-1/4 xl:w-1/5",onSelect:o.handleSelect},null,8,["onSelect"]),i(h,{onRegister:o.registerTable,class:"w-3/4 xl:w-4/5"},{toolbar:c(()=>[i(s,{type:"primary",onClick:o.handleCreate},{default:c(()=>[oe(" \u65B0\u589E ")]),_:1},8,["onClick"])]),bodyCell:c(({column:u,record:p})=>[u.key==="action"?(P(),T(a,{key:0,actions:o.createActions(p,u)},null,8,["actions"])):te("",!0)]),_:1},8,["onRegister"]),i(g,{onRegister:o.registerModal,onSuccess:o.handleSuccess,onVisibleChange:o.handleModelInfoVisibleChange},null,8,["onRegister","onSuccess","onVisibleChange"]),i(n,{onRegister:o.registerBpmnPreviewModal,onSuccess:o.handleSuccess},null,8,["onRegister","onSuccess"])]),_:1})),[[b,o.loadingRef]])}var Fo=q(pe,[["render",me],["__scopeId","data-v-7121f513"]]);export{Fo as default};