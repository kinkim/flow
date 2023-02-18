import{az as O,a as $,I as k,x as _,aB as a,i as A,l as I,C as l,q as t,D as C,m as U,p as M,k as b,H as V}from"./index.e61ad282.js";import{T as W}from"./index.6e0a0264.js";import{S as H}from"./index.8ba0bfed.js";import{A as K}from"./index.17aa5270.js";import{B as L,S as q}from"./TableImg.8ad498cd.js";import{l as J}from"./BasicForm.027cbf67.js";import{u as j}from"./useTable.7536e350.js";import{g as G,a as x,d as Q,b as X}from"./role.13794e37.js";import{P as Y}from"./index.c79f76d5.js";import Z from"./CompanyTree.44ea415e.js";import{b as z}from"./index.a492e5cd.js";import{R as ee,s as N,c as oe,p as ne}from"./RoleModal.29b5df84.js";import te from"./index.f0880f77.js";import{b as ae}from"./personal.e4cf03c0.js";import"./useFlexGapSupport.ed2a5fc1.js";import"./throttleByAnimationFrame.7312e722.js";import"./index.ce1ab63a.js";import"./Checkbox.bb68ead3.js";import"./index.99ef178c.js";import"./index.d92fc3ac.js";import"./eagerComputed.d3c262c3.js";import"./useForm.81406efc.js";import"./index.8f86dec4.js";import"./index.9f299dd3.js";import"./uuid.2b29000c.js";import"./index.6749d186.js";import"./_baseIteratee.7ece590b.js";import"./get.bca7403a.js";import"./DeleteOutlined.3b47e95d.js";import"./index.114515de.js";import"./useRefs.0c428178.js";import"./Form.8b25370b.js";import"./Col.f72eb8d0.js";import"./useSize.5a37866d.js";import"./useWindowSizeFn.27de1b1b.js";import"./index.9f50e000.js";import"./sortable.esm.2632adaa.js";import"./RedoOutlined.5bbc1139.js";import"./FullscreenOutlined.3a424424.js";import"./index.e8295ad9.js";import"./fromPairs.84aabb58.js";import"./scrollTo.e9bc7999.js";import"./index.ba1457ae.js";/* empty css              *//* empty css               */import"./index.9233793b.js";import"./transButton.2c723edc.js";import"./index.dbdde179.js";import"./download.810571da.js";import"./base64Conver.08b9f4ec.js";import"./index.ebd81f61.js";import"./index.6d7de824.js";import"./uniqBy.8c214189.js";import"./index.769e0bcb.js";import"./index.f6c9d1b9.js";import"./useContentViewHeight.34702d2a.js";import"./ArrowLeftOutlined.0e95a5b3.js";import"./index.5621adef.js";import"./index.0ba11515.js";import"./useContextMenu.87346ca1.js";import"./company.adda1c4d.js";import"./constantEnum.bf6653fb.js";import"./OrgTree.099b5580.js";import"./dept.ee76c2af.js";const{createMessage:le}=V(),re=$({name:"RoleManagement",components:{BasicTable:L,PageWrapper:Y,CompanyTree:Z,RoleModal:ee,PersonalSelector:te,TableAction:J,Input:k,Tag:W,Affix:K,Space:H,Search:k.Search,SettingOutlined:q},setup(){const[n,{openModal:y}]=z(),[D,{openModal:F,setModalProps:v}]=z(),i=_({}),d=_([]),u=_({}),f=_({});N.forEach(e=>{e&&(e.componentProps.onkeypress=o=>{o.keyCode===13&&p()})});const[h,{reload:p}]=j({title:"\u5217\u8868",api:G,columns:oe,formConfig:{labelWidth:120,schemas:N,showAdvancedButton:!1,showResetButton:!1,autoSubmitOnEnter:!0},expandRowByClick:!0,useSearchForm:!0,showIndexColumn:!1,showTableSetting:!1,bordered:!1,pagination:!0,onExpand:(e,o)=>{e?(i.value=o,u.value[o.id]="",c(o.id,u.value[o.id])):d.value=[]},rowKey:"id",canResize:!1});function g(){y(!0,{isUpdate:!1})}function B(e,o){o.stopPropagation(),y(!0,{record:e,isUpdate:!0})}function c(e,o){x({roleId:e,personal:{keyword:o||""}}).then(r=>{f.value[e]=r})}function S(e,o){o.stopPropagation(),i.value=e,x({roleId:e.id}).then(r=>{F(!0,{selectorProps:{multiSelect:!0,selectedList:r.map(E=>({code:E.code,name:E.name}))}}),v({title:`\u8BBE\u7F6E\u89D2\u8272\u3010${e.name}\u3011\u4E0B\u7684\u4EBA\u5458`,bodyStyle:{padding:"0px",margin:"0px"},width:850,height:450,showOkBtn:!0,showCancelBtn:!1})}).finally(()=>{})}function w(e){if(e.children&&e.children.length>0){le.warning("\u6709\u5B50\u8282\u70B9\uFF0C\u4E0D\u80FD\u5220\u9664\uFF01");return}Q([e.id]).then(o=>{p()})}function R(e){ae({roleId:e.roleId,personalId:e.personalId}).then(()=>{c(e.roleId,"")})}function T(){p()}function s(e,o){c(e,o)}function m(e){JSON.stringify(e);const o=e.map(r=>({id:r.id,code:r.code}));X({roleId:b(i).id,personalList:o}).then(()=>{d.value=[b(i).id],c(b(i).id,u.value[b(i).id])})}function P(e){p({searchInfo:{companyId:e?e.id:""}})}return{personalColumns:ne,currentRole:i,rolePersonalData:f,onSearchPerson:s,searchPersonTxt:u,registerTable:h,registerModal:n,registerPersonalModal:D,handleCreate:g,handleEdit:B,handleAddPersonal:S,handleDelete:w,handleDeletePersonal:R,handleSuccess:T,handleSettingPersonalSuccess:m,handleSelect:P}}}),se={class:"manager-range",style:{"text-align":"right"}};function ie(n,y,D,F,v,i){const d=a("CompanyTree"),u=a("Affix"),f=a("a-button"),h=a("TableAction"),p=a("Search"),g=a("Tag"),B=a("Space"),c=a("SettingOutlined"),S=a("BasicTable"),w=a("RoleModal"),R=a("PersonalSelector"),T=a("PageWrapper");return A(),I(T,{dense:"",contentFullHeight:"",contentClass:"flex"},{default:l(()=>[t(u,{"offset-top":"8",class:"w-1/4 xl:w-1/5"},{default:l(()=>[t(d,{contentFullHeight:"",onSelect:n.handleSelect},null,8,["onSelect"])]),_:1}),t(S,{onRegister:n.registerTable,class:"personal w-3/4 xl:w-4/5"},{toolbar:l(()=>[t(f,{type:"primary",onClick:n.handleCreate},{default:l(()=>[C("\u65B0\u589E")]),_:1},8,["onClick"])]),bodyCell:l(({column:s,record:m})=>[s.key==="action"?(A(),I(h,{key:0,actions:[{tooltip:"\u6DFB\u52A0\u4EBA\u5458",icon:"ant-design:user-add",onClick:n.handleAddPersonal.bind(null,m)},{tooltip:"\u4FEE\u6539",icon:"clarity:note-edit-line",onClick:n.handleEdit.bind(null,m)},{tooltip:"\u5220\u9664",icon:"ant-design:delete-outlined",color:"error",onClick:P=>{P.stopPropagation()},popConfirm:{title:"\u662F\u5426\u786E\u8BA4\u5220\u9664",confirm:n.handleDelete.bind(null,m),placement:"left"}}]},null,8,["actions"])):U("",!0)]),expandedRowRender:l(({record:s,index:m,indent:P,expanded:e})=>[t(S,{title:"",size:"small",columns:n.personalColumns,useSearchForm:!1,immediate:!1,showIndexColumn:!0,showTableSetting:!1,bordered:!0,pagination:!1,actionColumn:`{
              align: 'center'
            }`,rowKey:"id",canResize:!1,searchInfo:{roleId:s.id},dataSource:n.rolePersonalData[s.id],class:"w-4/4 xl:w-5/5"},{customName:l(({rec:o})=>[M("span",null,[C(" \u59D3\u540D "),t(p,{value:n.searchPersonTxt[s.id],"onUpdate:value":r=>n.searchPersonTxt[s.id]=r,placeholder:"\u59D3\u540D/\u5DE5\u53F7/\u624B\u673A",style:{width:"150px"},size:"small",allowClear:"",onSearch:r=>{n.onSearchPerson(s.id,r)}},null,8,["value","onUpdate:value","onSearch"])])]),action:l(({record:o})=>[t(h,{actions:[{icon:"ant-design:delete-outlined",color:"error",popConfirm:{title:"\u662F\u5426\u786E\u8BA4\u5220\u9664",confirm:n.handleDeletePersonal.bind(null,o),placement:"left"}}]},null,8,["actions"])]),setManagerRange:l(({record:o})=>[M("div",se,[t(B,{size:"small"},{default:l(()=>[t(g,{color:"processing"},{default:l(()=>[C("\u4E2D\u56FD\u77F3\u5316")]),_:1}),t(g,{color:"processing"},{default:l(()=>[C("\u4E2D\u56FD\u77F3\u5316")]),_:1})]),_:1}),t(c,{class:"ant-btn-link"})])]),_:2},1032,["columns","searchInfo","dataSource"])]),_:1},8,["onRegister"]),t(w,{onRegister:n.registerModal,onSuccess:n.handleSuccess},null,8,["onRegister","onSuccess"]),t(R,{onRegister:n.registerPersonalModal,onSuccess:n.handleSettingPersonalSuccess},null,8,["onRegister","onSuccess"])]),_:1})}var Co=O(re,[["render",ie]]);export{Co as default};