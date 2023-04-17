import{B as T}from"./TableImg.00c4ed04.js";import{l as y}from"./BasicForm.51e3eb56.js";import{u as E}from"./useTable.412b054f.js";import{a as k,d as _}from"./group.cf82a6a0.js";import{c as D,s as R}from"./group.data.bb7bdbc4.js";import U from"./GroupModal.4198a34a.js";import w from"./SetAccountModal.1aebcfd7.js";import P from"./SetAclModal.1662a7b9.js";import{b as h}from"./index.e8eb4b57.js";import{A as $}from"./index.b0586fd4.js";import{P as v}from"./perEnum.1877da10.js";import{az as F,a as G,aB as e,o as M,i as I,p as r,B as a,C as N,k as V,l as H}from"./index.da587afe.js";import"./index.492229cd.js";import"./Checkbox.9d75a86f.js";import"./index.5aab84c4.js";import"./index.a85fa86f.js";import"./eagerComputed.3bbb876f.js";import"./useForm.d201bd46.js";import"./index.c0d22213.js";import"./index.a0d7e8a1.js";import"./index.6d85aa5b.js";import"./useSize.dbee3c08.js";import"./useWindowSizeFn.3fdab581.js";import"./useContentViewHeight.f2db75e2.js";import"./ArrowLeftOutlined.8a04d10c.js";import"./index.25a87437.js";import"./transButton.1d3b575b.js";import"./index.447b3242.js";import"./index.d7c8b760.js";import"./index.9d0fc194.js";import"./uuid.2b29000c.js";import"./index.3c9c3a6f.js";import"./_baseIteratee.78d8c020.js";import"./get.40c34cfc.js";import"./DeleteOutlined.690086a4.js";import"./index.d1cda802.js";import"./useRefs.1aead304.js";import"./Form.f8b72655.js";import"./Col.4ac749bb.js";import"./useFlexGapSupport.caa26b6d.js";import"./index.a64c8a60.js";import"./sortable.esm.c081a59d.js";import"./RedoOutlined.46184af0.js";import"./FullscreenOutlined.3d903e0f.js";import"./index.813f510f.js";import"./fromPairs.daf93cb7.js";import"./scrollTo.37d32e36.js";import"./index.176a852f.js";/* empty css              *//* empty css               */import"./index.b3a5d1df.js";import"./index.5d1da0c4.js";import"./index.72d53e09.js";import"./download.75f04d3f.js";import"./base64Conver.08b9f4ec.js";import"./index.9912aa68.js";import"./index.36675b6e.js";import"./uniqBy.f906dabc.js";import"./account.4d139407.js";import"./AclCheckboxGroup.4f13fc7c.js";const O=G({name:"Group",components:{BasicTable:T,TableAction:y,GroupModal:U,SetAccountModal:w,SetAclModal:P,Authority:$},setup(){const[o,{openModal:s}]=h(),[A,{openModal:S}]=h(),[g,{openModal:b,setModalProps:l}]=h(),[u,{reload:n}]=E({title:"\u5217\u8868",api:k,columns:D,formConfig:{labelWidth:120,schemas:R,showAdvancedButton:!1,showResetButton:!1,autoSubmitOnEnter:!0},canColDrag:!0,useSearchForm:!0,bordered:!0,showIndexColumn:!1,actionColumn:{width:160,title:"\u64CD\u4F5C",dataIndex:"action",fixed:!1}});function m(){s(!0,{isUpdate:!1})}function p(t){b(!0,{record:t,isUpdate:!0}),l({bodyStyle:{padding:"0px",margin:"0px"},width:800,height:400,showOkBtn:!1,cancelText:"\u5173\u95ED"})}function c(t){S(!0,{record:t,isUpdate:!0})}function d(t){s(!0,{record:t,isUpdate:!0})}function f(t){_([t.id]).then(L=>{n()})}function i(){setTimeout(()=>{n()},200)}function C(){setTimeout(()=>{n()},200)}function B(){n()}return{PerEnum:v,registerTable:u,registerModal:o,registerSetAccountModal:A,registerSetAclModal:g,handleCreate:m,handleEdit:d,handleAcl:p,handleAddUser:c,handleDelete:f,handleSuccess:i,handleSetAccountSuccess:C,handleSetAclSuccess:B}}});function z(o,s,A,S,g,b){const l=e("a-button"),u=e("Authority"),n=e("TableAction"),m=e("BasicTable"),p=e("GroupModal"),c=e("SetAccountModal"),d=e("SetAclModal");return M(),I("div",null,[r(m,{onRegister:o.registerTable},{toolbar:a(()=>[r(u,{value:this.$options.name+":"+o.PerEnum.ADD},{default:a(()=>[r(l,{type:"primary",onClick:o.handleCreate},{default:a(()=>[N(" \u65B0\u589E")]),_:1},8,["onClick"])]),_:1},8,["value"])]),bodyCell:a(({column:f,record:i})=>[f.key==="action"?(M(),V(n,{key:0,actions:[{auth:this.$options.name+":"+o.PerEnum.AUTH,tooltip:"\u5206\u914D\u6743\u9650",icon:"ant-design:safety",onClick:o.handleAcl.bind(null,i)},{auth:this.$options.name+":"+o.PerEnum.AUTH,tooltip:"\u5206\u914D\u7528\u6237",icon:"ant-design:user-add",onClick:o.handleAddUser.bind(null,i)},{tooltip:"\u4FEE\u6539",icon:"clarity:note-edit-line",onClick:o.handleEdit.bind(null,i)},{tooltip:"\u5220\u9664",icon:"ant-design:delete-outlined",color:"error",popConfirm:{title:"\u662F\u5426\u786E\u8BA4\u5220\u9664",confirm:o.handleDelete.bind(null,i),placement:"left"}}]},null,8,["actions"])):H("",!0)]),_:1},8,["onRegister"]),r(p,{onRegister:o.registerModal,onSuccess:o.handleSuccess},null,8,["onRegister","onSuccess"]),r(c,{onRegister:o.registerSetAccountModal,onSuccess:o.handleSetAccountSuccess},null,8,["onRegister","onSuccess"]),r(d,{onRegister:o.registerSetAclModal,onSuccess:o.handleSetAclSuccess},null,8,["onRegister","onSuccess"])])}var Yo=F(O,[["render",z]]);export{Yo as default};