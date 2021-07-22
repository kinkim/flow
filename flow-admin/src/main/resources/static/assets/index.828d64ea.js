import{_ as e}from"./TableImg.507e398b.js";import{f as o}from"./BasicForm.a98eb535.js";import{u as t}from"./useTable.54605782.js";import{a as n,d as i}from"./group.47e0b4fd.js";import{c as s,s as r}from"./group.data.1c06824f.js";import d from"./GroupModal.badf05de.js";import a from"./SetAccountModal.bf3497e4.js";import c from"./SetAclModal.864fc321.js";import{b as l}from"./index.f287750a.js";import{A as u}from"./index.c736d6b2.js";import{P as m}from"./perEnum.9a5ef72f.js";import{j as p,K as f,o as b,m as j,n as h,Q as S,Y as A}from"./vendor.686fd1d4.js";/* empty css              *//* empty css              */import"./useForm.7ff3fa79.js";import"./index.7fecfddd.js";/* empty css              *//* empty css              *//* empty css              */import"./uuid.2b29000c.js";import"./useWindowSizeFn.d82e06bf.js";import"./onMountedOrActivated.172ad1ec.js";/* empty css              */import"./useSortable.dc62f82e.js";/* empty css              *//* empty css              *//* empty css              *//* empty css              */import"./index.099c2235.js";/* empty css              *//* empty css              *//* empty css              */import"./download.c870abce.js";import"./base64Conver.bb012c73.js";import"./index.d2ff26f2.js";import"./account.41789006.js";import"./AclCheckboxGroup.630e6c3c.js";var g=p({name:"Group",components:{BasicTable:e,TableAction:o,GroupModal:d,SetAccountModal:a,SetAclModal:c,Authority:u},setup(){const[e,{openModal:o}]=l(),[d,{openModal:a}]=l(),[c,{openModal:u,setModalProps:p}]=l(),[f,{reload:b}]=t({title:"列表",api:n,columns:s,formConfig:{labelWidth:120,schemas:r,showAdvancedButton:!1,showResetButton:!1,autoSubmitOnEnter:!0},canColDrag:!0,useSearchForm:!0,bordered:!0,showIndexColumn:!1,rowSelection:!1,actionColumn:{width:160,title:"操作",dataIndex:"action",slots:{customRender:"action"},fixed:!1}});return{PerEnum:m,registerTable:f,registerModal:e,registerSetAccountModal:d,registerSetAclModal:c,handleCreate:function(){o(!0,{isUpdate:!1})},handleEdit:function(e){o(!0,{record:e,isUpdate:!0})},handleAcl:function(e){u(!0,{record:e,isUpdate:!0}),p({bodyStyle:{padding:"0px",margin:"0px"},width:800,height:400,showOkBtn:!1,cancelText:"关闭"})},handleAddUser:function(e){a(!0,{record:e,isUpdate:!0})},handleDelete:function(e){i([e.id]).then((e=>{b()}))},handleSuccess:function(){b()},handleSetAccountSuccess:function(){b()},handleSetAclSuccess:function(){b()}}}});const x=A(" 新增");g.render=function(e,o,t,n,i,s){const r=f("a-button"),d=f("Authority"),a=f("TableAction"),c=f("BasicTable"),l=f("GroupModal"),u=f("SetAccountModal"),m=f("SetAclModal");return b(),j("div",null,[h(c,{onRegister:e.registerTable},{toolbar:S((()=>[h(d,{value:this.$options.name+":"+e.PerEnum.ADD},{default:S((()=>[h(r,{type:"primary",onClick:e.handleCreate},{default:S((()=>[x])),_:1},8,["onClick"])])),_:1},8,["value"])])),action:S((({record:o})=>[h(a,{actions:[{auth:this.$options.name+":"+e.PerEnum.AUTH,title:"分配权限",icon:"ant-design:safety",onClick:e.handleAcl.bind(null,o)},{auth:this.$options.name+":"+e.PerEnum.AUTH,title:"分配用户",icon:"ant-design:user-add",onClick:e.handleAddUser.bind(null,o)},{title:"修改",icon:"clarity:note-edit-line",onClick:e.handleEdit.bind(null,o)},{title:"删除",icon:"ant-design:delete-outlined",color:"error",popConfirm:{title:"是否确认删除",confirm:e.handleDelete.bind(null,o)}}]},null,8,["actions"])])),_:1},8,["onRegister"]),h(l,{onRegister:e.registerModal,onSuccess:e.handleSuccess},null,8,["onRegister","onSuccess"]),h(u,{onRegister:e.registerSetAccountModal,onSuccess:e.handleSetAccountSuccess},null,8,["onRegister","onSuccess"]),h(m,{onRegister:e.registerSetAclModal,onSuccess:e.handleSetAclSuccess},null,8,["onRegister","onSuccess"])])};export default g;