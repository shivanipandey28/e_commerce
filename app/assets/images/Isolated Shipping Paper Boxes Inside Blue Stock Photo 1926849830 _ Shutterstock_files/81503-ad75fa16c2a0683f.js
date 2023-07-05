"use strict";(self.webpackChunk_N_E=self.webpackChunk_N_E||[]).push([[81503],{25455:function(e,t,n){var r=n(2784),o=n(84501),i=n(36855),l=n(52322);function a(e){let t=[],n=[];return Array.from(e.querySelectorAll('input,select,textarea,a[href],button,[tabindex],audio[controls],video[controls],[contenteditable]:not([contenteditable="false"])')).forEach((e,r)=>{let o=function(e){let t=parseInt(e.getAttribute("tabindex"),10);return Number.isNaN(t)?"true"===e.contentEditable||("AUDIO"===e.nodeName||"VIDEO"===e.nodeName||"DETAILS"===e.nodeName)&&null===e.getAttribute("tabindex")?0:e.tabIndex:t}(e);-1===o||e.disabled||"INPUT"===e.tagName&&"hidden"===e.type||function(e){if("INPUT"!==e.tagName||"radio"!==e.type||!e.name)return!1;let t=t=>e.ownerDocument.querySelector(`input[type="radio"]${t}`),n=t(`[name="${e.name}"]:checked`);return n||(n=t(`[name="${e.name}"]`)),n!==e}(e)||(0===o?t.push(e):n.push({documentOrder:r,tabIndex:o,node:e}))}),n.sort((e,t)=>e.tabIndex===t.tabIndex?e.documentOrder-t.documentOrder:e.tabIndex-t.tabIndex).map(e=>e.node).concat(t)}function s(){return!0}t.Z=function(e){let{children:t,disableAutoFocus:n=!1,disableEnforceFocus:u=!1,disableRestoreFocus:d=!1,getTabbable:c=a,isEnabled:p=s,open:f}=e,m=r.useRef(),h=r.useRef(null),b=r.useRef(null),v=r.useRef(null),E=r.useRef(null),y=r.useRef(!1),Z=r.useRef(null),x=(0,o.Z)(t.ref,Z),g=r.useRef(null);r.useEffect(()=>{f&&Z.current&&(y.current=!n)},[n,f]),r.useEffect(()=>{if(!f||!Z.current)return;let e=(0,i.Z)(Z.current);return!Z.current.contains(e.activeElement)&&(Z.current.hasAttribute("tabIndex")||Z.current.setAttribute("tabIndex",-1),y.current&&Z.current.focus()),()=>{d||(v.current&&v.current.focus&&(m.current=!0,v.current.focus()),v.current=null)}},[f]),r.useEffect(()=>{if(!f||!Z.current)return;let e=(0,i.Z)(Z.current),t=t=>{let{current:n}=Z;if(null!==n){if(!e.hasFocus()||u||!p()||m.current){m.current=!1;return}if(!n.contains(e.activeElement)){if(t&&E.current!==t.target||e.activeElement!==E.current)E.current=null;else if(null!==E.current)return;if(!y.current)return;let i=[];if((e.activeElement===h.current||e.activeElement===b.current)&&(i=c(Z.current)),i.length>0){var r,o;let e=Boolean((null==(r=g.current)?void 0:r.shiftKey)&&(null==(o=g.current)?void 0:o.key)==="Tab"),t=i[0],n=i[i.length-1];e?n.focus():t.focus()}else n.focus()}}},n=t=>{g.current=t,!u&&p()&&"Tab"===t.key&&e.activeElement===Z.current&&t.shiftKey&&(m.current=!0,b.current.focus())};e.addEventListener("focusin",t),e.addEventListener("keydown",n,!0);let r=setInterval(()=>{"BODY"===e.activeElement.tagName&&t()},50);return()=>{clearInterval(r),e.removeEventListener("focusin",t),e.removeEventListener("keydown",n,!0)}},[n,u,d,p,f,c]);let R=e=>{null===v.current&&(v.current=e.relatedTarget),y.current=!0,E.current=e.target;let n=t.props.onFocus;n&&n(e)},k=e=>{null===v.current&&(v.current=e.relatedTarget),y.current=!0};return(0,l.jsxs)(r.Fragment,{children:[(0,l.jsx)("div",{tabIndex:f?0:-1,onFocus:k,ref:h,"data-testid":"sentinelStart"}),r.cloneElement(t,{ref:x,onFocus:R}),(0,l.jsx)("div",{tabIndex:f?0:-1,onFocus:k,ref:b,"data-testid":"sentinelEnd"})]})}},38388:function(e,t,n){n.d(t,{Z:function(){return y}});var r=n(26831),o=n(28193),i=n(2784),l=n(6277),a=n(69075),s=n(65992),u=n(43853),d=n(17055),c=n(69222),p=n(15672);function f(e){return(0,p.Z)("MuiBackdrop",e)}(0,c.Z)("MuiBackdrop",["root","invisible"]);var m=n(52322);let h=["children","component","components","componentsProps","className","invisible","open","slotProps","slots","transitionDuration","TransitionComponent"],b=e=>{let{classes:t,invisible:n}=e;return(0,a.Z)({root:["root",n&&"invisible"]},f,t)},v=(0,s.ZP)("div",{name:"MuiBackdrop",slot:"Root",overridesResolver:(e,t)=>{let{ownerState:n}=e;return[t.root,n.invisible&&t.invisible]}})(({ownerState:e})=>(0,o.Z)({position:"fixed",display:"flex",alignItems:"center",justifyContent:"center",right:0,bottom:0,top:0,left:0,backgroundColor:"rgba(0, 0, 0, 0.5)",WebkitTapHighlightColor:"transparent"},e.invisible&&{backgroundColor:"transparent"})),E=i.forwardRef(function(e,t){var n,i,a;let s=(0,u.Z)({props:e,name:"MuiBackdrop"}),{children:c,component:p="div",components:f={},componentsProps:E={},className:y,invisible:Z=!1,open:x,slotProps:g={},slots:R={},transitionDuration:k,TransitionComponent:T=d.Z}=s,P=(0,r.Z)(s,h),w=(0,o.Z)({},s,{component:p,invisible:Z}),I=b(w),C=null!=(n=g.root)?n:E.root;return(0,m.jsx)(T,(0,o.Z)({in:x,timeout:k},P,{children:(0,m.jsx)(v,(0,o.Z)({"aria-hidden":!0},C,{as:null!=(i=null!=(a=R.root)?a:f.Root)?i:p,className:(0,l.Z)(I.root,y,null==C?void 0:C.className),ownerState:(0,o.Z)({},w,null==C?void 0:C.ownerState),classes:I,ref:t,children:c}))}))});var y=E},17055:function(e,t,n){var r=n(28193),o=n(26831),i=n(2784),l=n(37198),a=n(47746),s=n(84319),u=n(98659),d=n(52322);let c=["addEndListener","appear","children","easing","in","onEnter","onEntered","onEntering","onExit","onExited","onExiting","style","timeout","TransitionComponent"],p={entering:{opacity:1},entered:{opacity:1}},f=i.forwardRef(function(e,t){let n=(0,a.Z)(),f={enter:n.transitions.duration.enteringScreen,exit:n.transitions.duration.leavingScreen},{addEndListener:m,appear:h=!0,children:b,easing:v,in:E,onEnter:y,onEntered:Z,onEntering:x,onExit:g,onExited:R,onExiting:k,style:T,timeout:P=f,TransitionComponent:w=l.ZP}=e,I=(0,o.Z)(e,c),C=i.useRef(null),N=(0,u.Z)(C,b.ref,t),A=e=>t=>{if(e){let n=C.current;void 0===t?e(n):e(n,t)}},M=A(x),S=A((e,t)=>{(0,s.n)(e);let r=(0,s.C)({style:T,timeout:P,easing:v},{mode:"enter"});e.style.webkitTransition=n.transitions.create("opacity",r),e.style.transition=n.transitions.create("opacity",r),y&&y(e,t)}),O=A(Z),L=A(k),F=A(e=>{let t=(0,s.C)({style:T,timeout:P,easing:v},{mode:"exit"});e.style.webkitTransition=n.transitions.create("opacity",t),e.style.transition=n.transitions.create("opacity",t),g&&g(e)}),B=A(R),j=e=>{m&&m(C.current,e)};return(0,d.jsx)(w,(0,r.Z)({appear:h,in:E,nodeRef:C,onEnter:S,onEntered:O,onEntering:M,onExit:F,onExited:B,onExiting:L,addEndListener:j,timeout:P},I,{children:(e,t)=>i.cloneElement(b,(0,r.Z)({style:(0,r.Z)({opacity:0,visibility:"exited"!==e||E?void 0:"hidden"},p[e],T,b.props.style),ref:N},t))}))});t.Z=f},81503:function(e,t,n){n.d(t,{Z:function(){return K}});var r=n(26831),o=n(28193),i=n(2784),l=n(29172),a=n(93918),s=n(84501),u=n(36855),d=n(57817),c=n(78419),p=n(69075),f=n(83820),m=n(27270),h=n(41626);function b(e,t){t?e.setAttribute("aria-hidden","true"):e.removeAttribute("aria-hidden")}function v(e){return parseInt((0,m.Z)(e).getComputedStyle(e).paddingRight,10)||0}function E(e,t,n,r,o){let i=[t,n,...r];[].forEach.call(e.children,e=>{let t=-1===i.indexOf(e),n=!function(e){let t=-1!==["TEMPLATE","SCRIPT","STYLE","LINK","MAP","META","NOSCRIPT","PICTURE","COL","COLGROUP","PARAM","SLOT","SOURCE","TRACK"].indexOf(e.tagName),n="INPUT"===e.tagName&&"hidden"===e.getAttribute("type");return t||n}(e);t&&n&&b(e,o)})}function y(e,t){let n=-1;return e.some((e,r)=>!!t(e)&&(n=r,!0)),n}var Z=n(25455),x=n(69222),g=n(15672);function R(e){return(0,g.Z)("MuiModal",e)}(0,x.Z)("MuiModal",["root","hidden"]);var k=n(82057),T=n(52322);let P=["children","classes","closeAfterTransition","component","container","disableAutoFocus","disableEnforceFocus","disableEscapeKeyDown","disablePortal","disableRestoreFocus","disableScrollLock","hideBackdrop","keepMounted","manager","onBackdropClick","onClose","onKeyDown","open","onTransitionEnter","onTransitionExited","slotProps","slots"],w=e=>{let{open:t,exited:n,classes:r}=e;return(0,p.Z)({root:["root",!t&&n&&"hidden"]},R,r)},I=new class{constructor(){this.containers=void 0,this.modals=void 0,this.modals=[],this.containers=[]}add(e,t){let n=this.modals.indexOf(e);if(-1!==n)return n;n=this.modals.length,this.modals.push(e),e.modalRef&&b(e.modalRef,!1);let r=function(e){let t=[];return[].forEach.call(e.children,e=>{"true"===e.getAttribute("aria-hidden")&&t.push(e)}),t}(t);E(t,e.mount,e.modalRef,r,!0);let o=y(this.containers,e=>e.container===t);return -1!==o?(this.containers[o].modals.push(e),n):(this.containers.push({modals:[e],container:t,restore:null,hiddenSiblings:r}),n)}mount(e,t){let n=y(this.containers,t=>-1!==t.modals.indexOf(e)),r=this.containers[n];r.restore||(r.restore=function(e,t){let n=[],r=e.container;if(!t.disableScrollLock){let e;if(function(e){let t=(0,u.Z)(e);return t.body===e?(0,m.Z)(e).innerWidth>t.documentElement.clientWidth:e.scrollHeight>e.clientHeight}(r)){let e=(0,h.Z)((0,u.Z)(r));n.push({value:r.style.paddingRight,property:"padding-right",el:r}),r.style.paddingRight=`${v(r)+e}px`;let t=(0,u.Z)(r).querySelectorAll(".mui-fixed");[].forEach.call(t,t=>{n.push({value:t.style.paddingRight,property:"padding-right",el:t}),t.style.paddingRight=`${v(t)+e}px`})}if(r.parentNode instanceof DocumentFragment)e=(0,u.Z)(r).body;else{let t=r.parentElement,n=(0,m.Z)(r);e=(null==t?void 0:t.nodeName)==="HTML"&&"scroll"===n.getComputedStyle(t).overflowY?t:r}n.push({value:e.style.overflow,property:"overflow",el:e},{value:e.style.overflowX,property:"overflow-x",el:e},{value:e.style.overflowY,property:"overflow-y",el:e}),e.style.overflow="hidden"}let o=()=>{n.forEach(({value:e,el:t,property:n})=>{e?t.style.setProperty(n,e):t.style.removeProperty(n)})};return o}(r,t))}remove(e,t=!0){let n=this.modals.indexOf(e);if(-1===n)return n;let r=y(this.containers,t=>-1!==t.modals.indexOf(e)),o=this.containers[r];if(o.modals.splice(o.modals.indexOf(e),1),this.modals.splice(n,1),0===o.modals.length)o.restore&&o.restore(),e.modalRef&&b(e.modalRef,t),E(o.container,e.mount,e.modalRef,o.hiddenSiblings,!1),this.containers.splice(r,1);else{let e=o.modals[o.modals.length-1];e.modalRef&&b(e.modalRef,!1)}return n}isTopModal(e){return this.modals.length>0&&this.modals[this.modals.length-1]===e}},C=i.forwardRef(function(e,t){var n,r;let{children:o,classes:p,closeAfterTransition:m=!1,component:h,container:v,disableAutoFocus:E=!1,disableEnforceFocus:y=!1,disableEscapeKeyDown:x=!1,disablePortal:g=!1,disableRestoreFocus:R=!1,disableScrollLock:C=!1,hideBackdrop:N=!1,keepMounted:A=!1,manager:M=I,onBackdropClick:S,onClose:O,onKeyDown:L,open:F,onTransitionEnter:B,onTransitionExited:j,slotProps:D={},slots:K={}}=e,U=(0,a.Z)(e,P),[W,$]=i.useState(!F),H=i.useRef({}),Y=i.useRef(null),_=i.useRef(null),q=(0,s.Z)(_,t),z=!!e.children&&e.children.props.hasOwnProperty("in"),G=null==(n=e["aria-hidden"])||n,V=()=>(0,u.Z)(Y.current),X=()=>(H.current.modalRef=_.current,H.current.mountNode=Y.current,H.current),J=()=>{M.mount(X(),{disableScrollLock:C}),_.current.scrollTop=0},Q=(0,d.Z)(()=>{let e=("function"==typeof v?v():v)||V().body;M.add(X(),e),_.current&&J()}),ee=i.useCallback(()=>M.isTopModal(X()),[M]),et=(0,d.Z)(e=>{Y.current=e,e&&(F&&ee()?J():b(_.current,G))}),en=i.useCallback(()=>{M.remove(X(),G)},[M,G]);i.useEffect(()=>()=>{en()},[en]),i.useEffect(()=>{F?Q():z&&m||en()},[F,en,z,m,Q]);let er=(0,l.Z)({},e,{classes:p,closeAfterTransition:m,disableAutoFocus:E,disableEnforceFocus:y,disableEscapeKeyDown:x,disablePortal:g,disableRestoreFocus:R,disableScrollLock:C,exited:W,hideBackdrop:N,keepMounted:A}),eo=w(er),ei=()=>{$(!1),B&&B()},el=()=>{$(!0),j&&j(),m&&en()},ea=e=>{e.target===e.currentTarget&&(S&&S(e),O&&O(e,"backdropClick"))},es=e=>{L&&L(e),"Escape"===e.key&&ee()&&!x&&(e.stopPropagation(),O&&O(e,"escapeKeyDown"))},eu={};void 0===o.props.tabIndex&&(eu.tabIndex="-1"),z&&(eu.onEnter=(0,c.Z)(ei,o.props.onEnter),eu.onExited=(0,c.Z)(el,o.props.onExited));let ed=null!=(r=null!=h?h:K.root)?r:"div",ec=(0,k.Z)({elementType:ed,externalSlotProps:D.root,externalForwardedProps:U,additionalProps:{ref:q,role:"presentation",onKeyDown:es},className:eo.root,ownerState:er}),ep=K.backdrop,ef=(0,k.Z)({elementType:ep,externalSlotProps:D.backdrop,additionalProps:{"aria-hidden":!0,onClick:ea,open:F},className:eo.backdrop,ownerState:er});return A||F||z&&!W?(0,T.jsx)(f.Z,{ref:et,container:v,disablePortal:g,children:(0,T.jsxs)(ed,(0,l.Z)({},ec,{children:[!N&&ep?(0,T.jsx)(ep,(0,l.Z)({},ef)):null,(0,T.jsx)(Z.Z,{disableEnforceFocus:y,disableAutoFocus:E,disableRestoreFocus:R,isEnabled:ee,open:F,children:i.cloneElement(o,eu)})]}))}):null});var N=n(5584),A=n(65444),M=n(65992),S=n(43853),O=n(38388);let L=["BackdropComponent","BackdropProps","closeAfterTransition","children","component","components","componentsProps","disableAutoFocus","disableEnforceFocus","disableEscapeKeyDown","disablePortal","disableRestoreFocus","disableScrollLock","hideBackdrop","keepMounted","slotProps","slots","theme"],F=e=>e.classes,B=(0,M.ZP)("div",{name:"MuiModal",slot:"Root",overridesResolver:(e,t)=>{let{ownerState:n}=e;return[t.root,!n.open&&n.exited&&t.hidden]}})(({theme:e,ownerState:t})=>(0,o.Z)({position:"fixed",zIndex:(e.vars||e).zIndex.modal,right:0,bottom:0,top:0,left:0},!t.open&&t.exited&&{visibility:"hidden"})),j=(0,M.ZP)(O.Z,{name:"MuiModal",slot:"Backdrop",overridesResolver:(e,t)=>t.backdrop})({zIndex:-1}),D=i.forwardRef(function(e,t){var n,l,a,s,u,d;let c=(0,S.Z)({name:"MuiModal",props:e}),{BackdropComponent:p=j,BackdropProps:f,closeAfterTransition:m=!1,children:h,component:b,components:v={},componentsProps:E={},disableAutoFocus:y=!1,disableEnforceFocus:Z=!1,disableEscapeKeyDown:x=!1,disablePortal:g=!1,disableRestoreFocus:R=!1,disableScrollLock:k=!1,hideBackdrop:P=!1,keepMounted:w=!1,slotProps:I,slots:M,theme:O}=c,D=(0,r.Z)(c,L),[K,U]=i.useState(!0),W={closeAfterTransition:m,disableAutoFocus:y,disableEnforceFocus:Z,disableEscapeKeyDown:x,disablePortal:g,disableRestoreFocus:R,disableScrollLock:k,hideBackdrop:P,keepMounted:w},$=(0,o.Z)({},c,W,{exited:K}),H=F($),Y=null!=(n=null!=(l=null==M?void 0:M.root)?l:v.Root)?n:B,_=null!=(a=null!=(s=null==M?void 0:M.backdrop)?s:v.Backdrop)?a:p,q=null!=(u=null==I?void 0:I.root)?u:E.root,z=null!=(d=null==I?void 0:I.backdrop)?d:E.backdrop;return(0,T.jsx)(C,(0,o.Z)({slots:{root:Y,backdrop:_},slotProps:{root:()=>(0,o.Z)({},(0,N.Z)(q,$),!(0,A.Z)(Y)&&{as:b,theme:O}),backdrop:()=>(0,o.Z)({},f,(0,N.Z)(z,$))},onTransitionEnter:()=>U(!1),onTransitionExited:()=>U(!0),ref:t},D,{classes:H},W,{children:h}))});var K=D},78419:function(e,t,n){n.d(t,{Z:function(){return r}});function r(...e){return e.reduce((e,t)=>null==t?e:function(...n){e.apply(this,n),t.apply(this,n)},()=>{})}},41626:function(e,t,n){n.d(t,{Z:function(){return r}});function r(e){let t=e.documentElement.clientWidth;return Math.abs(window.innerWidth-t)}}}]);
//# sourceMappingURL=81503-ad75fa16c2a0683f.js.map