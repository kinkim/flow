import{_ as e}from"./TableImg.507e398b.js";import{f as o}from"./BasicForm.a98eb535.js";import{u as t}from"./useTable.54605782.js";import{g as i,d as a}from"./jobGrade.5a171a2b.js";import{P as n}from"./index.b3b6fdb5.js";import s from"./JobGradeTypeList.dac29bf4.js";import{b as r}from"./index.f287750a.js";import{_ as d,c as l,s as c}from"./JobGradeModal.8db1e0fa.js";import{j as m,ay as p,r as f,u as b,K as u,o as j,m as x,Q as h,n as g,Y as C}from"./vendor.686fd1d4.js";import{h as y}from"./index.7fecfddd.js";/* empty css              *//* empty css              */import"./useForm.7ff3fa79.js";/* empty css              *//* empty css              *//* empty css              */import"./uuid.2b29000c.js";import"./useWindowSizeFn.d82e06bf.js";import"./onMountedOrActivated.172ad1ec.js";/* empty css              */import"./useSortable.dc62f82e.js";/* empty css              *//* empty css              *//* empty css              *//* empty css              */import"./index.099c2235.js";/* empty css              *//* empty css              *//* empty css              */import"./download.c870abce.js";import"./base64Conver.bb012c73.js";import"./index.d2ff26f2.js";import"./useContentViewHeight.d2763f54.js";/* empty css              *//* empty css              */import"./Tree.vue_vue&type=style&index=0&lang.ae01db06.js";import"./useContextMenu.27a98d06.js";import"./jobGradeType.b7a6e21f.js";const{createMessage:T}=y();var w=m({name:"JobGrade",components:{BasicTable:e,PageWrapper:n,JobGradeTypeList:s,JobGradeModal:d,TableAction:o,Popconfirm:p},setup(){const[e,{openModal:o,setModalProps:n}]=r(),s=f({}),[d,{reload:m}]=t({title:"列表",api:i,immediate:!1,columns:l,formConfig:{labelWidth:120,schemas:c,showAdvancedButton:!1,showResetButton:!1,autoSubmitOnEnter:!0},canColDrag:!0,useSearchForm:!0,bordered:!0,pagination:!1,showIndexColumn:!1,actionColumn:{width:100,title:"操作",dataIndex:"action",slots:{customRender:"action"},fixed:!1}});function p(e){s.value=e;let o={typeId:e?e.id:""};m({searchInfo:o})}return{registerTable:d,registerModal:e,handleCreate:function(){b(s).code?(n({title:"新增职级"}),o(!0,{record:{typeId:b(s).id,typeCode:b(s).code},isUpdate:!0})):T.warning("请选择分类！",2)},handleEdit:function(e){n({title:"修改职级"}),o(!0,{record:e,isUpdate:!0})},handleDelete:function(e){a(e.id).then((()=>{m()}))},handleSuccess:function(){p(s.value)},handleSelect:p}}});const S=C("新增");w.render=function(e,o,t,i,a,n){const s=u("JobGradeTypeList"),r=u("a-button"),d=u("TableAction"),l=u("BasicTable"),c=u("JobGradeModal"),m=u("PageWrapper");return j(),x(m,{dense:"",contentFullHeight:"",fixedHeight:"",contentClass:"flex"},{default:h((()=>[g(s,{class:"w-1/4 xl:w-1/5",onSelect:e.handleSelect},null,8,["onSelect"]),g(l,{onRegister:e.registerTable,class:"w-3/4 xl:w-4/5"},{toolbar:h((()=>[g(r,{type:"primary",onClick:e.handleCreate},{default:h((()=>[S])),_:1},8,["onClick"])])),action:h((({record:o})=>[g(d,{actions:[{icon:"clarity:note-edit-line",onClick:e.handleEdit.bind(null,o)},{icon:"ant-design:delete-outlined",color:"error",popConfirm:{title:"是否确认删除",confirm:e.handleDelete.bind(null,o)}}]},null,8,["actions"])])),_:1},8,["onRegister"]),g(c,{onRegister:e.registerModal,onSuccess:e.handleSuccess},null,8,["onRegister","onSuccess"])])),_:1})};export default w;