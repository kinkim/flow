import{_ as e}from"./TableImg.f5e002b4.js";import"./BasicForm.4f71108f.js";import"./index.56d7479c.js";import{c as o,d as t,a as s,b as a,e as i}from"./data.35473f47.js";import{_ as r}from"./PageWrapper.37b62bcf.js";import{k as n,K as d,o as m,n as p,Q as c,q as f,Y as j}from"./vendor.56d2c57f.js";/* empty css              *//* empty css              */import"./useForm.4c43bf99.js";import"./index.574e7466.js";/* empty css              *//* empty css              *//* empty css              */import"./uuid.c53863e7.js";import"./useWindowSizeFn.d0559e60.js";import"./useModal.919850c0.js";import"./onMountedOrActivated.1a8745f8.js";/* empty css              */import"./useSortable.97253202.js";import"./useExpose.46777d04.js";/* empty css              *//* empty css              *//* empty css              */import"./CountdownInput.8f20570f.js";/* empty css              *//* empty css              */import"./download.89f0e3be.js";import"./StrengthMeter.9b8cee4d.js";import"./createAsyncComponent.49468e34.js";import"./usePageContext.568cee97.js";/* empty css              *//* empty css              */var u=n({components:{BasicTable:e,PageWrapper:r},setup:()=>({aoaToExcel:function(){s({data:a,header:i,filename:"二维数组方式导出excel.xlsx"})},columns:o,data:t})});const l=j(" 导出 ");u.render=function(e,o,t,s,a,i){const r=d("a-button"),n=d("BasicTable"),j=d("PageWrapper");return m(),p(j,{title:"导出示例",content:"根据数组格式的数据进行导出"},{default:c((()=>[f(n,{title:"基础表格",columns:e.columns,dataSource:e.data},{toolbar:c((()=>[f(r,{onClick:e.aoaToExcel},{default:c((()=>[l])),_:1},8,["onClick"])])),_:1},8,["columns","dataSource"])])),_:1})};export default u;