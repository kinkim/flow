import{_ as e}from"./BasicForm.aa38e971.js";import{ag as i,h as t}from"./index.f9173908.js";import{T as a}from"./index.a84a211b.js";import{P as s}from"./index.c524f834.js";import{j as o,a1 as n,K as r,o as d,m,Q as p,n as l}from"./vendor.686fd1d4.js";/* empty css              *//* empty css              *//* empty css              *//* empty css              *//* empty css              *//* empty css              *//* empty css              */import"./index.d392ace2.js";/* empty css              *//* empty css              *//* empty css              */import"./index.7e2439d5.js";import"./useWindowSizeFn.d82e06bf.js";/* empty css              *//* empty css              */import"./uuid.2b29000c.js";import"./download.ac69f24d.js";import"./base64Conver.bb012c73.js";import"./index.ca1d35f5.js";import"./onMountedOrActivated.172ad1ec.js";import"./useContentViewHeight.1a732a79.js";/* empty css              *//* empty css              */const c=[{field:"title",component:"Input",label:"title",defaultValue:"defaultValue",rules:[{required:!0}]},{field:"tinymce",component:"Input",label:"tinymce",defaultValue:"defaultValue",rules:[{required:!0}],render:({model:e,field:i})=>n(a,{value:e[i],onChange:t=>{e[i]=t}})}];var f=o({components:{BasicForm:e,CollapseContainer:i,PageWrapper:s},setup(){const{createMessage:e}=t();return{schemas:c,handleSubmit:i=>{e.success("click search,values:"+JSON.stringify(i))}}}});f.render=function(e,i,t,a,s,o){const n=r("BasicForm"),c=r("CollapseContainer"),f=r("PageWrapper");return d(),m(f,{title:"富文本嵌入表单示例"},{default:p((()=>[l(c,{title:"富文本表单"},{default:p((()=>[l(n,{labelWidth:100,schemas:e.schemas,actionColOptions:{span:24},onSubmit:e.handleSubmit},null,8,["schemas","onSubmit"])])),_:1})])),_:1})};export default f;