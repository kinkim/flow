import{_ as e}from"./TableImg.f5e002b4.js";import{f as t}from"./BasicForm.4f71108f.js";import{u as i}from"./useTable.38359fc9.js";import{d as o}from"./table.2a8a22a3.js";import{k as n,K as d,o as a,n as s,q as r,Q as l}from"./vendor.56d2c57f.js";/* empty css              *//* empty css              */import"./useForm.4c43bf99.js";import"./index.574e7466.js";/* empty css              *//* empty css              *//* empty css              */import"./uuid.c53863e7.js";import"./useWindowSizeFn.d0559e60.js";import"./useModal.919850c0.js";import"./onMountedOrActivated.1a8745f8.js";/* empty css              */import"./useSortable.97253202.js";import"./useExpose.46777d04.js";/* empty css              *//* empty css              *//* empty css              */import"./CountdownInput.8f20570f.js";/* empty css              *//* empty css              */import"./download.89f0e3be.js";import"./StrengthMeter.9b8cee4d.js";const c=[{title:"ID",dataIndex:"id",fixed:"left",width:280},{title:"姓名",dataIndex:"name",width:260},{title:"地址",dataIndex:"address"},{title:"编号",dataIndex:"no",width:300},{title:"开始时间",width:200,dataIndex:"beginTime"},{title:"结束时间",dataIndex:"endTime",width:200}];var m=n({components:{BasicTable:e,TableAction:t},setup(){const[e]=i({title:"TableAction组件及固定列示例",api:o,columns:c,rowSelection:{type:"radio"},bordered:!0,actionColumn:{width:160,title:"Action",dataIndex:"action",slots:{customRender:"action"}}});return{registerTable:e,handleDelete:function(e){},handleOpen:function(e){}}}});const p={class:"p-4"};m.render=function(e,t,i,o,n,c){const m=d("TableAction"),f=d("BasicTable");return a(),s("div",p,[r(f,{onRegister:e.registerTable},{action:l((({record:t})=>[r(m,{actions:[{label:"删除",icon:"ic:outline-delete-outline",onClick:e.handleDelete.bind(null,t)}],dropDownActions:[{label:"启用",popConfirm:{title:"是否启用？",confirm:e.handleOpen.bind(null,t)}}]},null,8,["actions","dropDownActions"])])),_:1},8,["onRegister"])])};export default m;