import{_ as e}from"./TableImg.c292f6c6.js";import{g as o}from"./BasicForm.8dd34761.js";import{u as i}from"./useTable.28113166.js";import{g as t,d as n}from"./appPrivilegeValue.d3e6bcb6.js";import{P as a}from"./perEnum.9a5ef72f.js";import{_ as r,c as s}from"./AppPrivilegeValueModal.9bc74dc0.js";import{b as d}from"./index.0433a71f.js";import{A as c}from"./index.cd5c6d4a.js";import{y as l,Z as m,B as p,F as u,v as f,a2 as b,a9 as j}from"./vendor.880b4c6c.js";/* empty css              *//* empty css              */import"./useForm.ba0f60da.js";import"./index.63ccfb82.js";/* empty css              *//* empty css              *//* empty css              */import"./uuid.2b29000c.js";import"./useWindowSizeFn.564cf32e.js";import"./onMountedOrActivated.8f899bfb.js";/* empty css              */import"./useSortable.7fdc4a8b.js";/* empty css              *//* empty css              *//* empty css              *//* empty css              */import"./index.b3d678de.js";/* empty css              *//* empty css              *//* empty css              */import"./download.41df5c96.js";import"./base64Conver.bb012c73.js";import"./index.c6f733ce.js";var x=l({name:"AppPrivilegeValue",components:{BasicTable:e,TableAction:o,AppModal:r,Authority:c},setup(){const[e,{openModal:o}]=d(),[r,{reload:c}]=i({title:"列表",api:t,columns:s,canColDrag:!0,useSearchForm:!1,pagination:!1,bordered:!0,showIndexColumn:!0,actionColumn:{width:100,title:"操作",dataIndex:"action",slots:{customRender:"action"},fixed:!1}});return{PerEnum:a,registerTable:r,registerModal:e,handleCreate:function(){o(!0,{isUpdate:!1})},handleEdit:function(e){o(!0,{record:e,isUpdate:!0})},handleDelete:function(e){n([e.id]).then((e=>{c()}))},handleSuccess:function(){c()}}}});const h=j(" 新增 ");x.render=function(e,o,i,t,n,a){const r=m("a-button"),s=m("Authority"),d=m("TableAction"),c=m("BasicTable"),l=m("AppModal");return p(),u("div",null,[f(c,{onRegister:e.registerTable},{toolbar:b((()=>[f(s,{value:this.$options.name+":"+e.PerEnum.ADD},{default:b((()=>[f(r,{type:"primary",onClick:e.handleCreate},{default:b((()=>[h])),_:1},8,["onClick"])])),_:1},8,["value"])])),action:b((({record:o})=>[f(d,{actions:[{auth:this.$options.name+":"+e.PerEnum.UPDATE,tooltip:"修改",icon:"clarity:note-edit-line",onClick:e.handleEdit.bind(null,o)},{auth:this.$options.name+":"+e.PerEnum.DELETE,tooltip:"删除",icon:"ant-design:delete-outlined",color:"error",popConfirm:{title:"是否确认删除",confirm:e.handleDelete.bind(null,o)}}]},null,8,["actions"])])),_:1},8,["onRegister"]),f(l,{onRegister:e.registerModal,onSuccess:e.handleSuccess},null,8,["onRegister","onSuccess"])])};export default x;