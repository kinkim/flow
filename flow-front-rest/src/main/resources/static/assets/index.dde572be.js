import{B as P}from"./TableImg.d5685aba.js";import"./useForm.ae28d85e.js";import{u as S}from"./useTable.91f058b1.js";import{P as y}from"./index.a7d13475.js";import{A as D,a_ as f,bb as b,ar as w,bv as i,ca as u,bq as p,ba as C,ap as I,a0 as a,B as m,a1 as j,a5 as e,w as r,H as o,ad as x,J as t,D as k,ao as E,aC as $,aa as R,ac as L}from"./vendor.5eb38889.js";/* empty css               *//* empty css               *//* empty css               *//* empty css               *//* empty css                *//* empty css                *//* empty css               */import{launchedTableSchema as N,searchFormSchema as V}from"./data.d8012443.js";import W from"./ProcessHeader.a8ef199e.js";import H from"./LaunchButton.e004ac5f.js";import{i as K,h as z}from"./process.b4fbb99a.js";import{_ as M}from"./index.eb81839e.js";/* empty css              *//* empty css                *//* empty css                */import"./useWindowSizeFn.e269959a.js";import"./index.df597b92.js";import"./useSortable.76e865c9.js";/* empty css                *//* empty css               */import"./index.a8dc01b1.js";import"./download.29d0d464.js";import"./index.3a95e68c.js";/* empty css               *//* empty css               */import"./useContentViewHeight.2add70b5.js";const q=D({components:{BasicTable:P,ProcessHeader:W,LaunchButton:H,PageWrapper:y,[f.name]:f,[b.name]:b,AEmpty:w,[i.name]:i,[i.Item.name]:i.Item,[u.name]:u,[u.Step.name]:u.Step,[p.name]:p,[p.TabPane.name]:p.TabPane,Tag:C,Popover:I},setup(){const[c,{getForm:d}]=S({api:K,title:"",columns:N,formConfig:{labelWidth:120,schemas:V,showAdvancedButton:!1,showResetButton:!1,autoSubmitOnEnter:!0},useSearchForm:!0,pagination:!0,showIndexColumn:!0,canResize:!1});return z().then(l=>{const{updateSchema:_}=d();_({field:"appSn",componentProps:{options:l}})}),{registerLaunchedTable:c}}}),J={class:"m-1 desc-wrap process"};function O(c,d,l,_,G,Q){const g=a("launch-button"),h=a("process-header"),F=a("router-link"),v=a("Tag"),B=a("Popover"),A=a("BasicTable"),T=a("PageWrapper");return m(),j(T,{title:"\u6D41\u7A0B\u4E2D\u5FC3",contentBackground:"",class:"!mt-4"},{extra:e(()=>[r(g)]),footer:e(()=>[r(h,{current:"launched"})]),default:e(()=>[o("div",J,[r(A,{onRegister:c.registerLaunchedTable},{nameRender:e(({record:s})=>[r(F,{to:`/process/view/${s.processDefinitionKey}?taskId=${s.taskId||""}&procInstId=${s.processInstanceId}&businessKey=${s.businessKey}`},{default:e(()=>[x(t(s.formName),1)]),_:2},1032,["to"])]),currentAssigneesRender:e(({record:s})=>[s.currentAssignees&&s.currentAssignees.length>0?(m(!0),k(R,{key:0},E(s.currentAssignees,n=>(m(),j(B,{title:n.type==="user"?"\u4EBA\u5458\u4FE1\u606F":"\u89D2\u8272\u4FE1\u606F"},$({default:e(()=>[r(v,{color:"warning"},{default:e(()=>[x(t(n.name),1)]),_:2},1024)]),_:2},[n.type==="user"?{name:"content",fn:e(()=>[o("div",null,"\u59D3\u540D\uFF1A"+t(n.name),1),o("div",null,"\u5DE5\u53F7\uFF1A"+t(n.code),1),o("div",null,"\u624B\u673A\uFF1A"+t(n.mobile),1)])}:{name:"content",fn:e(()=>[o("div",null,"\u540D\u79F0\uFF1A"+t(n.name),1),o("div",null,"\u6807\u8BC6\uFF1A"+t(n.code),1)])}]),1032,["title"]))),256)):L("",!0)]),_:1},8,["onRegister"])])]),_:1})}var Se=M(q,[["render",O]]);export{Se as default};