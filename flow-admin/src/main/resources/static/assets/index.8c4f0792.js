import{_ as e}from"./Tree.vue_vue&type=style&index=0&lang.75a2cc0f.js";import{t}from"./data.2c592186.js";import{_ as a}from"./PageWrapper.37b62bcf.js";import{k as r,K as s,o,n,Q as c,q as i}from"./vendor.56d2c57f.js";import"./index.574e7466.js";import"./useContextMenu.7d6e6003.js";/* empty css              */import"./useExpose.46777d04.js";import"./usePageContext.568cee97.js";/* empty css              *//* empty css              */import"./onMountedOrActivated.1a8745f8.js";var p=r({components:{BasicTree:e,PageWrapper:a},setup:()=>({treeData:t,handleCheck:function(e,t){}})});const l={class:"flex"};p.render=function(e,t,a,r,p,d){const m=s("BasicTree"),f=s("PageWrapper");return o(),n(f,{title:"Tree基础示例"},{default:c((()=>[i("div",l,[i(m,{treeData:e.treeData,title:"基础示例",class:"w-1/3"},null,8,["treeData"]),i(m,{treeData:e.treeData,title:"可勾选",checkable:!0,class:"w-1/3 mx-4",onCheck:e.handleCheck},null,8,["treeData","onCheck"]),i(m,{title:"默认展开/勾选示例",treeData:e.treeData,checkable:!0,expandedKeys:["0-0"],checkedKeys:["0-0"],class:"w-1/3"},null,8,["treeData"])])])),_:1})};export default p;