import{B as e,a as o}from"./index.7e2439d5.js";import{_ as i}from"./BasicForm.aa38e971.js";import{u as s}from"./useForm.8a322010.js";import{j as r,r as t,K as d,o as a,m as n,Q as m,n as p,N as f}from"./vendor.686fd1d4.js";import"./index.f9173908.js";import"./useWindowSizeFn.d82e06bf.js";/* empty css              *//* empty css              *//* empty css              *//* empty css              *//* empty css              *//* empty css              *//* empty css              */import"./index.d392ace2.js";/* empty css              *//* empty css              *//* empty css              *//* empty css              *//* empty css              */import"./uuid.2b29000c.js";import"./download.ac69f24d.js";import"./base64Conver.bb012c73.js";import"./index.ca1d35f5.js";const l=[{field:"field1",component:"Input",label:"字段1",colProps:{span:12},defaultValue:"111"},{field:"field2",component:"Input",label:"字段2",colProps:{span:12}}];var c=r({components:{BasicModal:e,BasicForm:i},setup(){const e=t({}),[i,{}]=s({labelWidth:120,schemas:l,showActionButtonGroup:!1,actionColOptions:{span:24}}),[r]=o((o=>{e.value={field2:o.data,field1:o.info}}));return{register:r,schemas:l,registerForm:i,model:e}}});c.render=function(e,o,i,s,r,t){const l=d("BasicForm"),c=d("BasicModal");return a(),n(c,f(e.$attrs,{onRegister:e.register,title:"Modal Title"}),{default:m((()=>[p(l,{onRegister:e.registerForm,model:e.model},null,8,["onRegister","model"])])),_:1},16,["onRegister"])};export default c;