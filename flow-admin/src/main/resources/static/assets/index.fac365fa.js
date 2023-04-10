import{B as I}from"./TableImg.b1f3ef3e.js";import{l as M}from"./BasicForm.d2fa120b.js";import{u as E}from"./useTable.08d16777.js";import{b as A,d as D,p as T,s as k}from"./modelInfo.f73175b7.js";import{P as R}from"./index.432b4215.js";import $ from"./FlowCategoryTree.3f8db1a8.js";import{b}from"./index.0e48118d.js";import{M as W,c as O,s as U}from"./ModelInfoModal.9eac0956.js";import j from"./index.be893940.js";import{az as z,a as G,fC as H,b0 as K,w as s,an as L,aB as N,bS as V,y as q,o as J,k as Q,B as Y,j as B,fj as Z,fk as ee,G as te,n as oe}from"./index.0280002f.js";import{T as ie}from"./index.3486105d.js";import{A as ne}from"./index.02c8bfe1.js";import{B as re}from"./index.e5c4a097.js";import{a as ae}from"./app.b6f9dd7b.js";import{A as le}from"./index.8511a0c7.js";import{D as se}from"./DeleteOutlined.1c34c6c1.js";import"./index.5c81bb10.js";import"./Checkbox.61b53ada.js";import"./index.c68c747e.js";import"./index.86a12b41.js";import"./eagerComputed.832d624f.js";import"./useForm.431e5593.js";import"./index.6db63b77.js";import"./index.81d6e7a6.js";import"./uuid.2b29000c.js";import"./index.9aa048a5.js";import"./_baseIteratee.9e690663.js";import"./get.742319ba.js";import"./index.a1c94158.js";import"./useRefs.f68e97c5.js";import"./Form.227e5499.js";import"./Col.32e8fee0.js";import"./useFlexGapSupport.f92812e7.js";import"./useSize.71621680.js";import"./useWindowSizeFn.c0eea5f2.js";import"./index.498da238.js";import"./sortable.esm.2632adaa.js";import"./RedoOutlined.59857f8a.js";import"./FullscreenOutlined.d5490f36.js";import"./index.3dcb35e5.js";import"./fromPairs.84aabb58.js";import"./scrollTo.37a57864.js";/* empty css              *//* empty css               */import"./index.46b96662.js";import"./transButton.fa31f1ed.js";import"./index.85e9aa1e.js";import"./index.1d3f95d6.js";import"./download.f8a78464.js";import"./base64Conver.08b9f4ec.js";import"./index.e42b0536.js";import"./index.619bca12.js";import"./uniqBy.facde3d1.js";import"./index.4266ca8e.js";import"./useContentViewHeight.084217e3.js";import"./ArrowLeftOutlined.e9ea5e65.js";import"./index.e0f520b3.js";import"./index.02f82ac6.js";import"./useContextMenu.802fa51b.js";import"./category.fb109489.js";import"./index.7ccafb7e.js";import"./throttleByAnimationFrame.f1be7cbd.js";import"./index.a9e6553e.js";import"./index.esm.01aeab01.js";const{createMessage:C}=te(),pe=G({name:"Bpmn",components:{BasicTable:I,PageWrapper:R,FlowCategoryTree:$,ModelInfoModal:W,TableAction:M,Avatar:ne,Badge:re,Popconfirm:H,Tag:ie,DeleteOutlined:se,Authority:le,BpmnPreviewModal:j},setup(){const t=K(),[p,{openModal:a}]=b(),[m,{openModal:u,setModalProps:c}]=b();s({});const n=s({}),o=s(!1),[_,{getForm:v,reload:r}]=E({title:"\u5217\u8868",api:A,columns:O,formConfig:{labelWidth:120,schemas:U,showAdvancedButton:!1,showResetButton:!1,autoSubmitOnEnter:!0},searchInfo:{modelType:0},useSearchForm:!0,showIndexColumn:!1,bordered:!0,actionColumn:{width:210,align:"left",title:"\u64CD\u4F5C",dataIndex:"action",slots:{customRender:"action"}}});L(()=>{const{updateSchema:e}=v();ae().then(i=>{e([{field:"appSn",componentProps:{options:i,labelField:"id"}}])})});function X(){if(!B(n).code){C.warning("\u8BF7\u9009\u62E9\u5206\u7C7B\uFF01",2);return}a(!0,{record:{categoryCode:B(n).code},isUpdate:!0})}function w(e,i){const{status:l}=e;return[{icon:"ant-design:eye",title:"\u9884\u89C8",label:"",onClick:y.bind(null,e)},{icon:"ant-design:play-circle-filled",title:"\u53D1\u5E03",label:"",popConfirm:{title:"\u786E\u8BA4\u53D1\u5E03\u5417?",confirm:h.bind(null,e),placement:"left"},ifShow:l===2},{icon:"ant-design:stop-twotone",title:"\u505C\u7528",label:"",popConfirm:{title:"\u786E\u8BA4\u505C\u7528\u5417?",confirm:g.bind(null,e),placement:"left"},ifShow:l===3||l===2},{icon:"clarity:note-edit-line",title:"\u4FEE\u6539",label:"",onClick:d.bind(null,e)},{icon:"ant-design:delete-outlined",color:"error",title:"\u5220\u9664",label:"",popConfirm:{title:"\u662F\u5426\u786E\u8BA4\u5220\u9664",confirm:f.bind(null,e),placement:"left"}}]}function y(e){u(!0,{modelKey:e.modelKey,isUpdate:!0}),c({title:`\u9884\u89C8-${e.name}`,bodyStyle:{padding:"0px",margin:"0px"},width:900,height:400,showOkBtn:!1,showCancelBtn:!0,cancelText:"\u5173\u95ED"})}function d(e){a(!0,{record:e,isUpdate:!0})}function F(){t("/flowable/bpmn/designer?modelId=XXXXXXXXXXXXXXXXXXXXXXXX")}function f(e){D([e.id]).then(i=>{r()})}function h(e){o.value=!0,T(e.modelId).then(i=>{r(),C.success("\u53D1\u5E03\u6210\u529F\uFF01",2)}).finally(()=>{o.value=!1})}function g(e){o.value=!0,k(e.modelId).then(i=>{r()}).finally(()=>{o.value=!1})}function x(){r()}function P(){}function S(e){n.value=e;let i={categoryCode:e?e.code:""};r({searchInfo:i})}return{loadingRef:o,registerTable:_,registerBpmnPreviewModal:m,registerModal:p,handlePublish:h,handleStop:g,createActions:w,handleCreate:X,handleEdit:d,cancelDeleteRole:P,handleDelete:f,handleSuccess:x,openTab:F,handleSelect:S}}}),me=t=>(Z("data-v-17001607"),t=t(),ee(),t),ue=me(()=>oe("div",{style:{"font-size":"30px",padding:"100px",color:"#aaa","text-align":"center"}}," \u656C\u8BF7\u671F\u5F85\uFF01 ",-1));function ce(t,p,a,m,u,c){const n=N("PageWrapper"),o=V("loading");return q((J(),Q(n,{dense:"",contentFullHeight:"",fixedHeight:""},{default:Y(()=>[ue]),_:1})),[[o,t.loadingRef]])}var yt=z(pe,[["render",ce],["__scopeId","data-v-17001607"]]);export{yt as default};