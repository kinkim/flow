import{_ as e}from"./TableImg.d975601e.js";import"./useForm.d555d56b.js";import{u as s}from"./useTable.b099d30d.js";import{P as a}from"./index.3e5e5108.js";import{y as n,aX as t,b6 as o,am as r,bn as i,c3 as d,bk as m,b5 as c,ak as p,Z as u,B as l,F as b,a1 as j,v as f,a8 as x,J as g,a6 as h,an as v,az as I,a7 as P}from"./vendor.3dc066e5.js";/* empty css              *//* empty css              *//* empty css              *//* empty css              *//* empty css              *//* empty css              *//* empty css              */import{launchedTableSchema as T,searchFormSchema as w}from"./data.da0edbf9.js";import y from"./ProcessHeader.d2074b3d.js";import B from"./LaunchButton.928a5d2e.js";import{i as S,h as k}from"./process.424afad8.js";/* empty css              */import"./index.b41e2c0e.js";/* empty css              *//* empty css              */import"./useWindowSizeFn.308e6090.js";import"./index.b437b00c.js";import"./onMountedOrActivated.c01d8630.js";import"./useSortable.be81b66a.js";/* empty css              *//* empty css              */import"./index.82d0d758.js";import"./download.55ddd36a.js";import"./index.c14dc721.js";/* empty css              *//* empty css              */import"./useContentViewHeight.16e0f08b.js";var A=n({components:{BasicTable:e,ProcessHeader:y,LaunchButton:B,PageWrapper:a,[t.name]:t,[o.name]:o,AEmpty:r,[i.name]:i,[i.Item.name]:i.Item,[d.name]:d,[d.Step.name]:d.Step,[m.name]:m,[m.TabPane.name]:m.TabPane,Tag:c,Popover:p},setup(){const[e,{getForm:a}]=s({api:S,title:"",columns:T,formConfig:{labelWidth:120,schemas:w,showAdvancedButton:!1,showResetButton:!1,autoSubmitOnEnter:!0},useSearchForm:!0,pagination:!0,showIndexColumn:!0,canResize:!1});return k().then((e=>{const{updateSchema:s}=a();s({field:"appSn",componentProps:{options:e}})})),{registerLaunchedTable:e}}});const R={class:"m-1 desc-wrap process"};A.render=function(e,s,a,n,t,o){const r=u("launch-button"),i=u("process-header"),d=u("router-link"),m=u("Tag"),c=u("Popover"),p=u("BasicTable"),T=u("PageWrapper");return l(),b(T,{title:"流程中心",contentBackground:"",class:"!mt-4"},{extra:j((()=>[f(r)])),footer:j((()=>[f(i,{current:"launched"})])),default:j((()=>[f("div",R,[f(p,{onRegister:e.registerLaunchedTable},{nameRender:j((({record:e})=>[f(d,{to:`/process/view/${e.processDefinitionKey}?taskId=${e.taskId||""}&procInstId=${e.processInstanceId}&businessKey=${e.businessKey}`},{default:j((()=>[x(g(e.formName),1)])),_:2},1032,["to"])])),currentAssigneesRender:j((({record:e})=>[e.currentAssignees&&e.currentAssignees.length>0?(l(!0),b(h,{key:0},v(e.currentAssignees,(e=>(l(),b(c,{title:"user"===e.type?"人员信息":"角色信息"},I({default:j((()=>[f(m,{color:"warning"},{default:j((()=>[x(g(e.name),1)])),_:2},1024)])),_:2},["user"===e.type?{name:"content",fn:j((()=>[f("div",null,"姓名："+g(e.name),1),f("div",null,"工号："+g(e.code),1),f("div",null,"手机："+g(e.mobile),1)]))}:{name:"content",fn:j((()=>[f("div",null,"名称："+g(e.name),1),f("div",null,"标识："+g(e.code),1)]))}]),1032,["title"])))),256)):P("",!0)])),_:1},8,["onRegister"])])])),_:1})};export default A;