//>>built
define("dijit/_editor/RichText",["dojo/_base/array","dojo/_base/config","dojo/_base/declare","dojo/_base/Deferred","dojo/dom","dojo/dom-attr","dojo/dom-class","dojo/dom-construct","dojo/dom-geometry","dojo/dom-style","dojo/_base/event","dojo/_base/kernel","dojo/keys","dojo/_base/lang","dojo/on","dojo/query","dojo/ready","dojo/sniff","dojo/topic","dojo/_base/unload","dojo/_base/url","dojo/_base/window","../_Widget","../_CssStateMixin","./selection","./range","./html","../focus",".."],function(_1,_2,_3,_4,_5,_6,_7,_8,_9,_a,_b,_c,_d,_e,on,_f,_10,has,_11,_12,_13,win,_14,_15,_16,_17,_18,_19,_1a){var _1b=_3("dijit._editor.RichText",[_14,_15],{constructor:function(_1c){this.contentPreFilters=[];this.contentPostFilters=[];this.contentDomPreFilters=[];this.contentDomPostFilters=[];this.editingAreaStyleSheets=[];this.events=[].concat(this.events);this._keyHandlers={};if(_1c&&_e.isString(_1c.value)){this.value=_1c.value;}this.onLoadDeferred=new _4();},baseClass:"dijitEditor",inheritWidth:false,focusOnLoad:false,name:"",styleSheets:"",height:"300px",minHeight:"1em",isClosed:true,isLoaded:false,_SEPARATOR:"@@**%%__RICHTEXTBOUNDRY__%%**@@",_NAME_CONTENT_SEP:"@@**%%:%%**@@",onLoadDeferred:null,isTabIndent:false,disableSpellCheck:false,postCreate:function(){if("textarea"===this.domNode.tagName.toLowerCase()){console.warn("RichText should not be used with the TEXTAREA tag.  See dijit._editor.RichText docs.");}this.contentPreFilters=[_e.hitch(this,"_preFixUrlAttributes")].concat(this.contentPreFilters);if(has("mozilla")){this.contentPreFilters=[this._normalizeFontStyle].concat(this.contentPreFilters);this.contentPostFilters=[this._removeMozBogus].concat(this.contentPostFilters);}if(has("webkit")){this.contentPreFilters=[this._removeWebkitBogus].concat(this.contentPreFilters);this.contentPostFilters=[this._removeWebkitBogus].concat(this.contentPostFilters);}if(has("ie")){this.contentPostFilters=[this._normalizeFontStyle].concat(this.contentPostFilters);this.contentDomPostFilters=[_e.hitch(this,this._stripBreakerNodes)].concat(this.contentDomPostFilters);}this.inherited(arguments);_11.publish(_1a._scopeName+"._editor.RichText::init",this);this.open();this.setupDefaultShortcuts();},setupDefaultShortcuts:function(){var _1d=_e.hitch(this,function(cmd,arg){return function(){return !this.execCommand(cmd,arg);};});var _1e={b:_1d("bold"),i:_1d("italic"),u:_1d("underline"),a:_1d("selectall"),s:function(){this.save(true);},m:function(){this.isTabIndent=!this.isTabIndent;},"1":_1d("formatblock","h1"),"2":_1d("formatblock","h2"),"3":_1d("formatblock","h3"),"4":_1d("formatblock","h4"),"\\":_1d("insertunorderedlist")};if(!has("ie")){_1e.Z=_1d("redo");}var key;for(key in _1e){this.addKeyHandler(key,true,false,_1e[key]);}},events:["onKeyPress","onKeyDown","onKeyUp"],captureEvents:[],_editorCommandsLocalized:false,_localizeEditorCommands:function(){if(_1b._editorCommandsLocalized){this._local2NativeFormatNames=_1b._local2NativeFormatNames;this._native2LocalFormatNames=_1b._native2LocalFormatNames;return;}_1b._editorCommandsLocalized=true;_1b._local2NativeFormatNames={};_1b._native2LocalFormatNames={};this._local2NativeFormatNames=_1b._local2NativeFormatNames;this._native2LocalFormatNames=_1b._native2LocalFormatNames;var _1f=["div","p","pre","h1","h2","h3","h4","h5","h6","ol","ul","address"];var _20="",_21,i=0;while((_21=_1f[i++])){if(_21.charAt(1)!=="l"){_20+="<"+_21+"><span>content</span></"+_21+"><br/>";}else{_20+="<"+_21+"><li>content</li></"+_21+"><br/>";}}var _22={position:"absolute",top:"0px",zIndex:10,opacity:0.01};var div=_8.create("div",{style:_22,innerHTML:_20});win.body().appendChild(div);var _23=_e.hitch(this,function(){var _24=div.firstChild;while(_24){try{_16.selectElement(_24.firstChild);var _25=_24.tagName.toLowerCase();this._local2NativeFormatNames[_25]=document.queryCommandValue("formatblock");this._native2LocalFormatNames[this._local2NativeFormatNames[_25]]=_25;_24=_24.nextSibling.nextSibling;}catch(e){}}div.parentNode.removeChild(div);div.innerHTML="";});setTimeout(_23,0);},open:function(_26){if(!this.onLoadDeferred||this.onLoadDeferred.fired>=0){this.onLoadDeferred=new _4();}if(!this.isClosed){this.close();}_11.publish(_1a._scopeName+"._editor.RichText::open",this);if(arguments.length===1&&_26.nodeName){this.domNode=_26;}var dn=this.domNode;var _27;if(_e.isString(this.value)){_27=this.value;delete this.value;dn.innerHTML="";}else{if(dn.nodeName&&dn.nodeName.toLowerCase()=="textarea"){var ta=(this.textarea=dn);this.name=ta.name;_27=ta.value;dn=this.domNode=win.doc.createElement("div");dn.setAttribute("widgetId",this.id);ta.removeAttribute("widgetId");dn.cssText=ta.cssText;dn.className+=" "+ta.className;_8.place(dn,ta,"before");var _28=_e.hitch(this,function(){_a.set(ta,{display:"block",position:"absolute",top:"-1000px"});if(has("ie")){var s=ta.style;this.__overflow=s.overflow;s.overflow="hidden";}});if(has("ie")){setTimeout(_28,10);}else{_28();}if(ta.form){var _29=ta.value;this.reset=function(){var _2a=this.getValue();if(_2a!==_29){this.replaceValue(_29);}};on(ta.form,"submit",_e.hitch(this,function(){_6.set(ta,"disabled",this.disabled);ta.value=this.getValue();}));}}else{_27=_18.getChildrenHtml(dn);dn.innerHTML="";}}this.value=_27;if(dn.nodeName&&dn.nodeName==="LI"){dn.innerHTML=" <br>";}this.header=dn.ownerDocument.createElement("div");dn.appendChild(this.header);this.editingArea=dn.ownerDocument.createElement("div");dn.appendChild(this.editingArea);this.footer=dn.ownerDocument.createElement("div");dn.appendChild(this.footer);if(!this.name){this.name=this.id+"_AUTOGEN";}if(this.name!==""&&(!_2["useXDomain"]||_2["allowXdRichTextSave"])){var _2b=_5.byId(_1a._scopeName+"._editor.RichText.value");if(_2b&&_2b.value!==""){var _2c=_2b.value.split(this._SEPARATOR),i=0,dat;while((dat=_2c[i++])){var _2d=dat.split(this._NAME_CONTENT_SEP);if(_2d[0]===this.name){_27=_2d[1];_2c=_2c.splice(i,1);_2b.value=_2c.join(this._SEPARATOR);break;}}}if(!_1b._globalSaveHandler){_1b._globalSaveHandler={};_12.addOnUnload(function(){var id;for(id in _1b._globalSaveHandler){var f=_1b._globalSaveHandler[id];if(_e.isFunction(f)){f();}}});}_1b._globalSaveHandler[this.id]=_e.hitch(this,"_saveContent");}this.isClosed=false;var ifr=(this.editorObject=this.iframe=win.doc.createElement("iframe"));ifr.id=this.id+"_iframe";ifr.style.border="none";ifr.style.width="100%";if(this._layoutMode){ifr.style.height="100%";}else{if(has("ie")>=7){if(this.height){ifr.style.height=this.height;}if(this.minHeight){ifr.style.minHeight=this.minHeight;}}else{ifr.style.height=this.height?this.height:this.minHeight;}}ifr.frameBorder=0;ifr._loadFunc=_e.hitch(this,function(w){this.window=w;this.document=this.window.document;if(has("ie")){this._localizeEditorCommands();}this.onLoad(_27);});var src=this._getIframeDocTxt(),s="javascript: '"+src.replace(/\\/g,"\\\\").replace(/'/g,"\\'")+"'";ifr.setAttribute("src",s);this.editingArea.appendChild(ifr);if(has("safari")<=4){src=ifr.getAttribute("src");if(!src||src.indexOf("javascript")===-1){setTimeout(function(){ifr.setAttribute("src",s);},0);}}if(dn.nodeName==="LI"){dn.lastChild.style.marginTop="-1.2em";}_7.add(this.domNode,this.baseClass);},_local2NativeFormatNames:{},_native2LocalFormatNames:{},_getIframeDocTxt:function(){var _2e=_a.getComputedStyle(this.domNode);var _2f="";var _30=true;if(has("ie")||has("webkit")||(!this.height&&!has("mozilla"))){_2f="<div id='dijitEditorBody'></div>";_30=false;}else{if(has("mozilla")){this._cursorToStart=true;_2f="&#160;";}}var _31=[_2e.fontWeight,_2e.fontSize,_2e.fontFamily].join(" ");var _32=_2e.lineHeight;if(_32.indexOf("px")>=0){_32=parseFloat(_32)/parseFloat(_2e.fontSize);}else{if(_32.indexOf("em")>=0){_32=parseFloat(_32);}else{_32="normal";}}var _33="";var _34=this;this.style.replace(/(^|;)\s*(line-|font-?)[^;]+/ig,function(_35){_35=_35.replace(/^;/ig,"")+";";var s=_35.split(":")[0];if(s){s=_e.trim(s);s=s.toLowerCase();var i;var sC="";for(i=0;i<s.length;i++){var c=s.charAt(i);switch(c){case "-":i++;c=s.charAt(i).toUpperCase();default:sC+=c;}}_a.set(_34.domNode,sC,"");}_33+=_35+";";});var _36=_f("label[for=\""+this.id+"\"]");return [this.isLeftToRight()?"<html>\n<head>\n":"<html dir='rtl'>\n<head>\n",(has("mozilla")&&_36.length?"<title>"+_36[0].innerHTML+"</title>\n":""),"<meta http-equiv='Content-Type' content='text/html'>\n","<style>\n","\tbody,html {\n","\t\tbackground:transparent;\n","\t\tpadding: 1px 0 0 0;\n","\t\tmargin: -1px 0 0 0;\n",((has("webkit"))?"\t\twidth: 100%;\n":""),((has("webkit"))?"\t\theight: 100%;\n":""),"\t}\n","\tbody{\n","\t\ttop:0px;\n","\t\tleft:0px;\n","\t\tright:0px;\n","\t\tfont:",_31,";\n",((this.height||has("opera"))?"":"\t\tposition: fixed;\n"),"\t\tmin-height:",this.minHeight,";\n","\t\tline-height:",_32,";\n","\t}\n","\tp{ margin: 1em 0; }\n",(!_30&&!this.height?"\tbody,html {overflow-y: hidden;}\n":""),"\t#dijitEditorBody{overflow-x: auto; overflow-y:"+(this.height?"auto;":"hidden;")+" outline: 0px;}\n","\tli > ul:-moz-first-node, li > ol:-moz-first-node{ padding-top: 1.2em; }\n",(!has("ie")?"\tli{ min-height:1.2em; }\n":""),"</style>\n",this._applyEditingAreaStyleSheets(),"\n","</head>\n<body ",(_30?"id='dijitEditorBody' ":""),"onload='frameElement && frameElement._loadFunc(window,document)' ","style='"+_33+"'>",_2f,"</body>\n</html>"].join("");},_applyEditingAreaStyleSheets:function(){var _37=[];if(this.styleSheets){_37=this.styleSheets.split(";");this.styleSheets="";}_37=_37.concat(this.editingAreaStyleSheets);this.editingAreaStyleSheets=[];var _38="",i=0,url;while((url=_37[i++])){var _39=(new _13(win.global.location,url)).toString();this.editingAreaStyleSheets.push(_39);_38+="<link rel=\"stylesheet\" type=\"text/css\" href=\""+_39+"\"/>";}return _38;},addStyleSheet:function(uri){var url=uri.toString();if(url.charAt(0)==="."||(url.charAt(0)!=="/"&&!uri.host)){url=(new _13(win.global.location,url)).toString();}if(_1.indexOf(this.editingAreaStyleSheets,url)>-1){return;}this.editingAreaStyleSheets.push(url);this.onLoadDeferred.addCallback(_e.hitch(this,function(){if(this.document.createStyleSheet){this.document.createStyleSheet(url);}else{var _3a=this.document.getElementsByTagName("head")[0];var _3b=this.document.createElement("link");_3b.rel="stylesheet";_3b.type="text/css";_3b.href=url;_3a.appendChild(_3b);}}));},removeStyleSheet:function(uri){var url=uri.toString();if(url.charAt(0)==="."||(url.charAt(0)!=="/"&&!uri.host)){url=(new _13(win.global.location,url)).toString();}var _3c=_1.indexOf(this.editingAreaStyleSheets,url);if(_3c===-1){return;}delete this.editingAreaStyleSheets[_3c];_f("link:[href=\""+url+"\"]",this.window.document).orphan();},disabled:false,_mozSettingProps:{"styleWithCSS":false},_setDisabledAttr:function(_3d){_3d=!!_3d;this._set("disabled",_3d);if(!this.isLoaded){return;}if(has("ie")||has("webkit")||has("opera")){var _3e=has("ie")&&(this.isLoaded||!this.focusOnLoad);if(_3e){this.editNode.unselectable="on";}this.editNode.contentEditable=!_3d;if(_3e){var _3f=this;setTimeout(function(){if(_3f.editNode){_3f.editNode.unselectable="off";}},0);}}else{try{this.document.designMode=(_3d?"off":"on");}catch(e){return;}if(!_3d&&this._mozSettingProps){var ps=this._mozSettingProps;var n;for(n in ps){if(ps.hasOwnProperty(n)){try{this.document.execCommand(n,false,ps[n]);}catch(e2){}}}}}this._disabledOK=true;},onLoad:function(_40){if(!this.window.__registeredWindow){this.window.__registeredWindow=true;this._iframeRegHandle=_19.registerIframe(this.iframe);}if(!has("ie")&&!has("webkit")&&(this.height||has("mozilla"))){this.editNode=this.document.body;}else{this.editNode=this.document.body.firstChild;var _41=this;if(has("ie")){this.tabStop=_8.create("div",{tabIndex:-1},this.editingArea);this.iframe.onfocus=function(){_41.editNode.setActive();};}}this.focusNode=this.editNode;var _42=this.events.concat(this.captureEvents);var ap=this.iframe?this.document:this.editNode;_1.forEach(_42,function(_43){this.connect(ap,_43.toLowerCase(),_43);},this);this.connect(ap,"onmouseup","onClick");if(has("ie")){this.connect(this.document,"onmousedown","_onIEMouseDown");this.editNode.style.zoom=1;}else{this.connect(this.document,"onmousedown",function(){delete this._cursorToStart;});}if(has("webkit")){this._webkitListener=this.connect(this.document,"onmouseup","onDisplayChanged");this.connect(this.document,"onmousedown",function(e){var t=e.target;if(t&&(t===this.document.body||t===this.document)){setTimeout(_e.hitch(this,"placeCursorAtEnd"),0);}});}if(has("ie")){try{this.document.execCommand("RespectVisibilityInDesign",true,null);}catch(e){}}this.isLoaded=true;this.set("disabled",this.disabled);var _44=_e.hitch(this,function(){this.setValue(_40);if(this.onLoadDeferred){this.onLoadDeferred.callback(true);}this.onDisplayChanged();if(this.focusOnLoad){_10(_e.hitch(this,function(){setTimeout(_e.hitch(this,"focus"),this.updateInterval);}));}this.value=this.getValue(true);});if(this.setValueDeferred){this.setValueDeferred.addCallback(_44);}else{_44();}},onKeyDown:function(e){if(e.keyCode===_d.TAB&&this.isTabIndent){_b.stop(e);if(this.queryCommandEnabled((e.shiftKey?"outdent":"indent"))){this.execCommand((e.shiftKey?"outdent":"indent"));}}if(has("ie")){if(e.keyCode==_d.TAB&&!this.isTabIndent){if(e.shiftKey&&!e.ctrlKey&&!e.altKey){this.iframe.focus();}else{if(!e.shiftKey&&!e.ctrlKey&&!e.altKey){this.tabStop.focus();}}}else{if(e.keyCode===_d.BACKSPACE&&this.document.selection.type==="Control"){_b.stop(e);this.execCommand("delete");}else{if((65<=e.keyCode&&e.keyCode<=90)||(e.keyCode>=37&&e.keyCode<=40)){e.charCode=e.keyCode;this.onKeyPress(e);}}}}if(has("ff")){if(e.keyCode===_d.PAGE_UP||e.keyCode===_d.PAGE_DOWN){if(this.editNode.clientHeight>=this.editNode.scrollHeight){e.preventDefault();}}}return true;},onKeyUp:function(){},setDisabled:function(_45){_c.deprecated("dijit.Editor::setDisabled is deprecated","use dijit.Editor::attr(\"disabled\",boolean) instead",2);this.set("disabled",_45);},_setValueAttr:function(_46){this.setValue(_46);},_setDisableSpellCheckAttr:function(_47){if(this.document){_6.set(this.document.body,"spellcheck",!_47);}else{this.onLoadDeferred.addCallback(_e.hitch(this,function(){_6.set(this.document.body,"spellcheck",!_47);}));}this._set("disableSpellCheck",_47);},onKeyPress:function(e){var c=(e.keyChar&&e.keyChar.toLowerCase())||e.keyCode,_48=this._keyHandlers[c],_49=arguments;if(_48&&!e.altKey){_1.some(_48,function(h){if(!(h.shift^e.shiftKey)&&!(h.ctrl^(e.ctrlKey||e.metaKey))){if(!h.handler.apply(this,_49)){e.preventDefault();}return true;}},this);}if(!this._onKeyHitch){this._onKeyHitch=_e.hitch(this,"onKeyPressed");}setTimeout(this._onKeyHitch,1);return true;},addKeyHandler:function(key,_4a,_4b,_4c){if(!_e.isArray(this._keyHandlers[key])){this._keyHandlers[key]=[];}this._keyHandlers[key].push({shift:_4b||false,ctrl:_4a||false,handler:_4c});},onKeyPressed:function(){this.onDisplayChanged();},onClick:function(e){this.onDisplayChanged(e);},_onIEMouseDown:function(){if(!this.focused&&!this.disabled){this.focus();}},_onBlur:function(e){this.inherited(arguments);var _4d=this.getValue(true);if(_4d!==this.value){this.onChange(_4d);}this._set("value",_4d);},_onFocus:function(e){if(!this.disabled){if(!this._disabledOK){this.set("disabled",false);}this.inherited(arguments);}},blur:function(){if(!has("ie")&&this.window.document.documentElement&&this.window.document.documentElement.focus){this.window.document.documentElement.focus();}else{if(win.doc.body.focus){win.doc.body.focus();}}},focus:function(){if(!this.isLoaded){this.focusOnLoad=true;return;}if(this._cursorToStart){delete this._cursorToStart;if(this.editNode.childNodes){this.placeCursorAtStart();return;}}if(!has("ie")){_19.focus(this.iframe);}else{if(this.editNode&&this.editNode.focus){this.iframe.fireEvent("onfocus",document.createEventObject());}}},updateInterval:200,_updateTimer:null,onDisplayChanged:function(){if(this._updateTimer){clearTimeout(this._updateTimer);}if(!this._updateHandler){this._updateHandler=_e.hitch(this,"onNormalizedDisplayChanged");}this._updateTimer=setTimeout(this._updateHandler,this.updateInterval);},onNormalizedDisplayChanged:function(){delete this._updateTimer;},onChange:function(){},_normalizeCommand:function(cmd,_4e){var _4f=cmd.toLowerCase();if(_4f==="formatblock"){if(has("safari")&&_4e===undefined){_4f="heading";}}else{if(_4f==="hilitecolor"&&!has("mozilla")){_4f="backcolor";}}return _4f;},_qcaCache:{},queryCommandAvailable:function(_50){var ca=this._qcaCache[_50];if(ca!==undefined){return ca;}return (this._qcaCache[_50]=this._queryCommandAvailable(_50));},_queryCommandAvailable:function(_51){var ie=1;var _52=1<<1;var _53=1<<2;var _54=1<<3;function _55(_56){return {ie:Boolean(_56&ie),mozilla:Boolean(_56&_52),webkit:Boolean(_56&_53),opera:Boolean(_56&_54)};};var _57=null;switch(_51.toLowerCase()){case "bold":case "italic":case "underline":case "subscript":case "superscript":case "fontname":case "fontsize":case "forecolor":case "hilitecolor":case "justifycenter":case "justifyfull":case "justifyleft":case "justifyright":case "delete":case "selectall":case "toggledir":_57=_55(_52|ie|_53|_54);break;case "createlink":case "unlink":case "removeformat":case "inserthorizontalrule":case "insertimage":case "insertorderedlist":case "insertunorderedlist":case "indent":case "outdent":case "formatblock":case "inserthtml":case "undo":case "redo":case "strikethrough":case "tabindent":_57=_55(_52|ie|_54|_53);break;case "blockdirltr":case "blockdirrtl":case "dirltr":case "dirrtl":case "inlinedirltr":case "inlinedirrtl":_57=_55(ie);break;case "cut":case "copy":case "paste":_57=_55(ie|_52|_53|_54);break;case "inserttable":_57=_55(_52|ie);break;case "insertcell":case "insertcol":case "insertrow":case "deletecells":case "deletecols":case "deleterows":case "mergecells":case "splitcell":_57=_55(ie|_52);break;default:return false;}return (has("ie")&&_57.ie)||(has("mozilla")&&_57.mozilla)||(has("webkit")&&_57.webkit)||(has("opera")&&_57.opera);},execCommand:function(_58,_59){var _5a;this.focus();_58=this._normalizeCommand(_58,_59);if(_59!==undefined){if(_58==="heading"){throw new Error("unimplemented");}else{if((_58==="formatblock")&&has("ie")){_59="<"+_59+">";}}}var _5b="_"+_58+"Impl";if(this[_5b]){_5a=this[_5b](_59);}else{_59=arguments.length>1?_59:null;if(_59||_58!=="createlink"){_5a=this.document.execCommand(_58,false,_59);}}this.onDisplayChanged();return _5a;},queryCommandEnabled:function(_5c){if(this.disabled||!this._disabledOK){return false;}_5c=this._normalizeCommand(_5c);var _5d="_"+_5c+"EnabledImpl";if(this[_5d]){return this[_5d](_5c);}else{return this._browserQueryCommandEnabled(_5c);}},queryCommandState:function(_5e){if(this.disabled||!this._disabledOK){return false;}_5e=this._normalizeCommand(_5e);try{return this.document.queryCommandState(_5e);}catch(e){return false;}},queryCommandValue:function(_5f){if(this.disabled||!this._disabledOK){return false;}var r;_5f=this._normalizeCommand(_5f);if(has("ie")&&_5f==="formatblock"){r=this._native2LocalFormatNames[this.document.queryCommandValue(_5f)];}else{if(has("mozilla")&&_5f==="hilitecolor"){var _60;try{_60=this.document.queryCommandValue("styleWithCSS");}catch(e){_60=false;}this.document.execCommand("styleWithCSS",false,true);r=this.document.queryCommandValue(_5f);this.document.execCommand("styleWithCSS",false,_60);}else{r=this.document.queryCommandValue(_5f);}}return r;},_sCall:function(_61,_62){return win.withGlobal(this.window,_61,_16,_62);},placeCursorAtStart:function(){this.focus();var _63=false;if(has("mozilla")){var _64=this.editNode.firstChild;while(_64){if(_64.nodeType===3){if(_64.nodeValue.replace(/^\s+|\s+$/g,"").length>0){_63=true;this._sCall("selectElement",[_64]);break;}}else{if(_64.nodeType===1){_63=true;var tg=_64.tagName?_64.tagName.toLowerCase():"";if(/br|input|img|base|meta|area|basefont|hr|link/.test(tg)){this._sCall("selectElement",[_64]);}else{this._sCall("selectElementChildren",[_64]);}break;}}_64=_64.nextSibling;}}else{_63=true;this._sCall("selectElementChildren",[this.editNode]);}if(_63){this._sCall("collapse",[true]);}},placeCursorAtEnd:function(){this.focus();var _65=false;if(has("mozilla")){var _66=this.editNode.lastChild;while(_66){if(_66.nodeType===3){if(_66.nodeValue.replace(/^\s+|\s+$/g,"").length>0){_65=true;this._sCall("selectElement",[_66]);break;}}else{if(_66.nodeType===1){_65=true;if(_66.lastChild){this._sCall("selectElement",[_66.lastChild]);}else{this._sCall("selectElement",[_66]);}break;}}_66=_66.previousSibling;}}else{_65=true;this._sCall("selectElementChildren",[this.editNode]);}if(_65){this._sCall("collapse",[false]);}},getValue:function(_67){if(this.textarea){if(this.isClosed||!this.isLoaded){return this.textarea.value;}}return this._postFilterContent(null,_67);},_getValueAttr:function(){return this.getValue(true);},setValue:function(_68){if(!this.isLoaded){this.onLoadDeferred.addCallback(_e.hitch(this,function(){this.setValue(_68);}));return;}this._cursorToStart=true;if(this.textarea&&(this.isClosed||!this.isLoaded)){this.textarea.value=_68;}else{_68=this._preFilterContent(_68);var _69=this.isClosed?this.domNode:this.editNode;if(_68&&has("mozilla")&&_68.toLowerCase()==="<p></p>"){_68="<p>&#160;</p>";}if(!_68&&has("webkit")){_68="&#160;";}_69.innerHTML=_68;this._preDomFilterContent(_69);}this.onDisplayChanged();this._set("value",this.getValue(true));},replaceValue:function(_6a){if(this.isClosed){this.setValue(_6a);}else{if(this.window&&this.window.getSelection&&!has("mozilla")){this.setValue(_6a);}else{if(this.window&&this.window.getSelection){_6a=this._preFilterContent(_6a);this.execCommand("selectall");if(!_6a){this._cursorToStart=true;_6a="&#160;";}this.execCommand("inserthtml",_6a);this._preDomFilterContent(this.editNode);}else{if(this.document&&this.document.selection){this.setValue(_6a);}}}}this._set("value",this.getValue(true));},_preFilterContent:function(_6b){var ec=_6b;_1.forEach(this.contentPreFilters,function(ef){if(ef){ec=ef(ec);}});return ec;},_preDomFilterContent:function(dom){dom=dom||this.editNode;_1.forEach(this.contentDomPreFilters,function(ef){if(ef&&_e.isFunction(ef)){ef(dom);}},this);},_postFilterContent:function(dom,_6c){var ec;if(!_e.isString(dom)){dom=dom||this.editNode;if(this.contentDomPostFilters.length){if(_6c){dom=_e.clone(dom);}_1.forEach(this.contentDomPostFilters,function(ef){dom=ef(dom);});}ec=_18.getChildrenHtml(dom);}else{ec=dom;}if(!_e.trim(ec.replace(/^\xA0\xA0*/,"").replace(/\xA0\xA0*$/,"")).length){ec="";}_1.forEach(this.contentPostFilters,function(ef){ec=ef(ec);});return ec;},_saveContent:function(){var _6d=_5.byId(_1a._scopeName+"._editor.RichText.value");if(_6d){if(_6d.value){_6d.value+=this._SEPARATOR;}_6d.value+=this.name+this._NAME_CONTENT_SEP+this.getValue(true);}},escapeXml:function(str,_6e){str=str.replace(/&/gm,"&amp;").replace(/</gm,"&lt;").replace(/>/gm,"&gt;").replace(/"/gm,"&quot;");if(!_6e){str=str.replace(/'/gm,"&#39;");}return str;},getNodeHtml:function(_6f){_c.deprecated("dijit.Editor::getNodeHtml is deprecated","use dijit/_editor/html::getNodeHtml instead",2);return _18.getNodeHtml(_6f);},getNodeChildrenHtml:function(dom){_c.deprecated("dijit.Editor::getNodeChildrenHtml is deprecated","use dijit/_editor/html::getChildrenHtml instead",2);return _18.getChildrenHtml(dom);},close:function(_70){if(this.isClosed){return;}if(!arguments.length){_70=true;}if(_70){this._set("value",this.getValue(true));}if(this.interval){clearInterval(this.interval);}if(this._webkitListener){this.disconnect(this._webkitListener);delete this._webkitListener;}if(has("ie")){this.iframe.onfocus=null;}this.iframe._loadFunc=null;if(this._iframeRegHandle){this._iframeRegHandle.remove();delete this._iframeRegHandle;}if(this.textarea){var s=this.textarea.style;s.position="";s.left=s.top="";if(has("ie")){s.overflow=this.__overflow;this.__overflow=null;}this.textarea.value=this.value;_8.destroy(this.domNode);this.domNode=this.textarea;}else{this.domNode.innerHTML=this.value;}delete this.iframe;_7.remove(this.domNode,this.baseClass);this.isClosed=true;this.isLoaded=false;delete this.editNode;delete this.focusNode;if(this.window&&this.window._frameElement){this.window._frameElement=null;}this.window=null;this.document=null;this.editingArea=null;this.editorObject=null;},destroy:function(){if(!this.isClosed){this.close(false);}if(this._updateTimer){clearTimeout(this._updateTimer);}this.inherited(arguments);if(_1b._globalSaveHandler){delete _1b._globalSaveHandler[this.id];}},_removeMozBogus:function(_71){return _71.replace(/\stype="_moz"/gi,"").replace(/\s_moz_dirty=""/gi,"").replace(/_moz_resizing="(true|false)"/gi,"");},_removeWebkitBogus:function(_72){_72=_72.replace(/\sclass="webkit-block-placeholder"/gi,"");_72=_72.replace(/\sclass="apple-style-span"/gi,"");_72=_72.replace(/<meta charset=\"utf-8\" \/>/gi,"");return _72;},_normalizeFontStyle:function(_73){return _73.replace(/<(\/)?strong([ \>])/gi,"<$1b$2").replace(/<(\/)?em([ \>])/gi,"<$1i$2");},_preFixUrlAttributes:function(_74){return _74.replace(/(?:(<a(?=\s).*?\shref=)("|')(.*?)\2)|(?:(<a\s.*?href=)([^"'][^ >]+))/gi,"$1$4$2$3$5$2 _djrealurl=$2$3$5$2").replace(/(?:(<img(?=\s).*?\ssrc=)("|')(.*?)\2)|(?:(<img\s.*?src=)([^"'][^ >]+))/gi,"$1$4$2$3$5$2 _djrealurl=$2$3$5$2");},_browserQueryCommandEnabled:function(_75){if(!_75){return false;}var _76=has("ie")?this.document.selection.createRange():this.document;try{return _76.queryCommandEnabled(_75);}catch(e){return false;}},_createlinkEnabledImpl:function(){var _77=true;if(has("opera")){var sel=this.window.getSelection();if(sel.isCollapsed){_77=true;}else{_77=this.document.queryCommandEnabled("createlink");}}else{_77=this._browserQueryCommandEnabled("createlink");}return _77;},_unlinkEnabledImpl:function(){var _78=true;if(has("mozilla")||has("webkit")){_78=this._sCall("hasAncestorElement",["a"]);}else{_78=this._browserQueryCommandEnabled("unlink");}return _78;},_inserttableEnabledImpl:function(){var _79=true;if(has("mozilla")||has("webkit")){_79=true;}else{_79=this._browserQueryCommandEnabled("inserttable");}return _79;},_cutEnabledImpl:function(){var _7a=true;if(has("webkit")){var sel=this.window.getSelection();if(sel){sel=sel.toString();}_7a=!!sel;}else{_7a=this._browserQueryCommandEnabled("cut");}return _7a;},_copyEnabledImpl:function(){var _7b=true;if(has("webkit")){var sel=this.window.getSelection();if(sel){sel=sel.toString();}_7b=!!sel;}else{_7b=this._browserQueryCommandEnabled("copy");}return _7b;},_pasteEnabledImpl:function(){var _7c=true;if(has("webkit")){return true;}else{_7c=this._browserQueryCommandEnabled("paste");}return _7c;},_inserthorizontalruleImpl:function(_7d){if(has("ie")){return this._inserthtmlImpl("<hr>");}return this.document.execCommand("inserthorizontalrule",false,_7d);},_unlinkImpl:function(_7e){if((this.queryCommandEnabled("unlink"))&&(has("mozilla")||has("webkit"))){var a=this._sCall("getAncestorElement",["a"]);this._sCall("selectElement",[a]);return this.document.execCommand("unlink",false,null);}return this.document.execCommand("unlink",false,_7e);},_hilitecolorImpl:function(_7f){var _80;var _81=this._handleTextColorOrProperties("hilitecolor",_7f);if(!_81){if(has("mozilla")){this.document.execCommand("styleWithCSS",false,true);_80=this.document.execCommand("hilitecolor",false,_7f);this.document.execCommand("styleWithCSS",false,false);}else{_80=this.document.execCommand("hilitecolor",false,_7f);}}return _80;},_backcolorImpl:function(_82){if(has("ie")){_82=_82?_82:null;}var _83=this._handleTextColorOrProperties("backcolor",_82);if(!_83){_83=this.document.execCommand("backcolor",false,_82);}return _83;},_forecolorImpl:function(_84){if(has("ie")){_84=_84?_84:null;}var _85=false;_85=this._handleTextColorOrProperties("forecolor",_84);if(!_85){_85=this.document.execCommand("forecolor",false,_84);}return _85;},_inserthtmlImpl:function(_86){_86=this._preFilterContent(_86);var rv=true;if(has("ie")){var _87=this.document.selection.createRange();if(this.document.selection.type.toUpperCase()==="CONTROL"){var n=_87.item(0);while(_87.length){_87.remove(_87.item(0));}n.outerHTML=_86;}else{_87.pasteHTML(_86);}_87.select();}else{if(has("mozilla")&&!_86.length){this._sCall("remove");}else{rv=this.document.execCommand("inserthtml",false,_86);}}return rv;},_boldImpl:function(_88){var _89=false;if(has("ie")){this._adaptIESelection();_89=this._adaptIEFormatAreaAndExec("bold");}if(!_89){_89=this.document.execCommand("bold",false,_88);}return _89;},_italicImpl:function(_8a){var _8b=false;if(has("ie")){this._adaptIESelection();_8b=this._adaptIEFormatAreaAndExec("italic");}if(!_8b){_8b=this.document.execCommand("italic",false,_8a);}return _8b;},_underlineImpl:function(_8c){var _8d=false;if(has("ie")){this._adaptIESelection();_8d=this._adaptIEFormatAreaAndExec("underline");}if(!_8d){_8d=this.document.execCommand("underline",false,_8c);}return _8d;},_strikethroughImpl:function(_8e){var _8f=false;if(has("ie")){this._adaptIESelection();_8f=this._adaptIEFormatAreaAndExec("strikethrough");}if(!_8f){_8f=this.document.execCommand("strikethrough",false,_8e);}return _8f;},_superscriptImpl:function(_90){var _91=false;if(has("ie")){this._adaptIESelection();_91=this._adaptIEFormatAreaAndExec("superscript");}if(!_91){_91=this.document.execCommand("superscript",false,_90);}return _91;},_subscriptImpl:function(_92){var _93=false;if(has("ie")){this._adaptIESelection();_93=this._adaptIEFormatAreaAndExec("subscript");}if(!_93){_93=this.document.execCommand("subscript",false,_92);}return _93;},_fontnameImpl:function(_94){var _95;if(has("ie")){_95=this._handleTextColorOrProperties("fontname",_94);}if(!_95){_95=this.document.execCommand("fontname",false,_94);}return _95;},_fontsizeImpl:function(_96){var _97;if(has("ie")){_97=this._handleTextColorOrProperties("fontsize",_96);}if(!_97){_97=this.document.execCommand("fontsize",false,_96);}return _97;},_insertorderedlistImpl:function(_98){var _99=false;if(has("ie")){_99=this._adaptIEList("insertorderedlist",_98);}if(!_99){_99=this.document.execCommand("insertorderedlist",false,_98);}return _99;},_insertunorderedlistImpl:function(_9a){var _9b=false;if(has("ie")){_9b=this._adaptIEList("insertunorderedlist",_9a);}if(!_9b){_9b=this.document.execCommand("insertunorderedlist",false,_9a);}return _9b;},getHeaderHeight:function(){return this._getNodeChildrenHeight(this.header);},getFooterHeight:function(){return this._getNodeChildrenHeight(this.footer);},_getNodeChildrenHeight:function(_9c){var h=0;if(_9c&&_9c.childNodes){var i;for(i=0;i<_9c.childNodes.length;i++){var _9d=_9.position(_9c.childNodes[i]);h+=_9d.h;}}return h;},_isNodeEmpty:function(_9e,_9f){if(_9e.nodeType===1){if(_9e.childNodes.length>0){return this._isNodeEmpty(_9e.childNodes[0],_9f);}return true;}else{if(_9e.nodeType===3){return (_9e.nodeValue.substring(_9f)==="");}}return false;},_removeStartingRangeFromRange:function(_a0,_a1){if(_a0.nextSibling){_a1.setStart(_a0.nextSibling,0);}else{var _a2=_a0.parentNode;while(_a2&&_a2.nextSibling==null){_a2=_a2.parentNode;}if(_a2){_a1.setStart(_a2.nextSibling,0);}}return _a1;},_adaptIESelection:function(){var _a3=_17.getSelection(this.window);if(_a3&&_a3.rangeCount&&!_a3.isCollapsed){var _a4=_a3.getRangeAt(0);var _a5=_a4.startContainer;var _a6=_a4.startOffset;while(_a5.nodeType===3&&_a6>=_a5.length&&_a5.nextSibling){_a6=_a6-_a5.length;_a5=_a5.nextSibling;}var _a7=null;while(this._isNodeEmpty(_a5,_a6)&&_a5!==_a7){_a7=_a5;_a4=this._removeStartingRangeFromRange(_a5,_a4);_a5=_a4.startContainer;_a6=0;}_a3.removeAllRanges();_a3.addRange(_a4);}},_adaptIEFormatAreaAndExec:function(_a8){var _a9=_17.getSelection(this.window);var doc=this.document;var rs,ret,_aa,txt,_ab,_ac,_ad,_ae;if(_a8&&_a9&&_a9.isCollapsed){var _af=this.queryCommandValue(_a8);if(_af){var _b0=this._tagNamesForCommand(_a8);_aa=_a9.getRangeAt(0);var fs=_aa.startContainer;if(fs.nodeType===3){var _b1=_aa.endOffset;if(fs.length<_b1){ret=this._adjustNodeAndOffset(rs,_b1);fs=ret.node;_b1=ret.offset;}}var _b2;while(fs&&fs!==this.editNode){var _b3=fs.tagName?fs.tagName.toLowerCase():"";if(_1.indexOf(_b0,_b3)>-1){_b2=fs;break;}fs=fs.parentNode;}if(_b2){rs=_aa.startContainer;var _b4=doc.createElement(_b2.tagName);_8.place(_b4,_b2,"after");if(rs&&rs.nodeType===3){var _b5,_b6;var _b7=_aa.endOffset;if(rs.length<_b7){ret=this._adjustNodeAndOffset(rs,_b7);rs=ret.node;_b7=ret.offset;}txt=rs.nodeValue;_ab=doc.createTextNode(txt.substring(0,_b7));var _b8=txt.substring(_b7,txt.length);if(_b8){_ac=doc.createTextNode(_b8);}_8.place(_ab,rs,"before");if(_ac){_ad=doc.createElement("span");_ad.className="ieFormatBreakerSpan";_8.place(_ad,rs,"after");_8.place(_ac,_ad,"after");_ac=_ad;}_8.destroy(rs);var _b9=_ab.parentNode;var _ba=[];var _bb;while(_b9!==_b2){var tg=_b9.tagName;_bb={tagName:tg};_ba.push(_bb);var _bc=doc.createElement(tg);if(_b9.style){if(_bc.style){if(_b9.style.cssText){_bc.style.cssText=_b9.style.cssText;_bb.cssText=_b9.style.cssText;}}}if(_b9.tagName==="FONT"){if(_b9.color){_bc.color=_b9.color;_bb.color=_b9.color;}if(_b9.face){_bc.face=_b9.face;_bb.face=_b9.face;}if(_b9.size){_bc.size=_b9.size;_bb.size=_b9.size;}}if(_b9.className){_bc.className=_b9.className;_bb.className=_b9.className;}if(_ac){_b5=_ac;while(_b5){_b6=_b5.nextSibling;_bc.appendChild(_b5);_b5=_b6;}}if(_bc.tagName==_b9.tagName){_ad=doc.createElement("span");_ad.className="ieFormatBreakerSpan";_8.place(_ad,_b9,"after");_8.place(_bc,_ad,"after");}else{_8.place(_bc,_b9,"after");}_ab=_b9;_ac=_bc;_b9=_b9.parentNode;}if(_ac){_b5=_ac;if(_b5.nodeType===1||(_b5.nodeType===3&&_b5.nodeValue)){_b4.innerHTML="";}while(_b5){_b6=_b5.nextSibling;_b4.appendChild(_b5);_b5=_b6;}}if(_ba.length){_bb=_ba.pop();var _bd=doc.createElement(_bb.tagName);if(_bb.cssText&&_bd.style){_bd.style.cssText=_bb.cssText;}if(_bb.className){_bd.className=_bb.className;}if(_bb.tagName==="FONT"){if(_bb.color){_bd.color=_bb.color;}if(_bb.face){_bd.face=_bb.face;}if(_bb.size){_bd.size=_bb.size;}}_8.place(_bd,_b4,"before");while(_ba.length){_bb=_ba.pop();var _be=doc.createElement(_bb.tagName);if(_bb.cssText&&_be.style){_be.style.cssText=_bb.cssText;}if(_bb.className){_be.className=_bb.className;}if(_bb.tagName==="FONT"){if(_bb.color){_be.color=_bb.color;}if(_bb.face){_be.face=_bb.face;}if(_bb.size){_be.size=_bb.size;}}_bd.appendChild(_be);_bd=_be;}_ae=doc.createTextNode(".");_ad.appendChild(_ae);_bd.appendChild(_ae);win.withGlobal(this.window,_e.hitch(this,function(){var _bf=_17.create();_bf.setStart(_ae,0);_bf.setEnd(_ae,_ae.length);_a9.removeAllRanges();_a9.addRange(_bf);_16.collapse(false);_ae.parentNode.innerHTML="";}));}else{_ad=doc.createElement("span");_ad.className="ieFormatBreakerSpan";_ae=doc.createTextNode(".");_ad.appendChild(_ae);_8.place(_ad,_b4,"before");win.withGlobal(this.window,_e.hitch(this,function(){var _c0=_17.create();_c0.setStart(_ae,0);_c0.setEnd(_ae,_ae.length);_a9.removeAllRanges();_a9.addRange(_c0);_16.collapse(false);_ae.parentNode.innerHTML="";}));}if(!_b4.firstChild){_8.destroy(_b4);}return true;}}return false;}else{_aa=_a9.getRangeAt(0);rs=_aa.startContainer;if(rs&&rs.nodeType===3){win.withGlobal(this.window,_e.hitch(this,function(){var _c1=_aa.startOffset;if(rs.length<_c1){ret=this._adjustNodeAndOffset(rs,_c1);rs=ret.node;_c1=ret.offset;}txt=rs.nodeValue;_ab=doc.createTextNode(txt.substring(0,_c1));var _c2=txt.substring(_c1);if(_c2!==""){_ac=doc.createTextNode(txt.substring(_c1));}_ad=doc.createElement("span");_ae=doc.createTextNode(".");_ad.appendChild(_ae);if(_ab.length){_8.place(_ab,rs,"after");}else{_ab=rs;}_8.place(_ad,_ab,"after");if(_ac){_8.place(_ac,_ad,"after");}_8.destroy(rs);var _c3=_17.create();_c3.setStart(_ae,0);_c3.setEnd(_ae,_ae.length);_a9.removeAllRanges();_a9.addRange(_c3);doc.execCommand(_a8);_8.place(_ad.firstChild,_ad,"before");_8.destroy(_ad);_c3.setStart(_ae,0);_c3.setEnd(_ae,_ae.length);_a9.removeAllRanges();_a9.addRange(_c3);_16.collapse(false);_ae.parentNode.innerHTML="";}));return true;}}}else{return false;}},_adaptIEList:function(_c4){var _c5=_17.getSelection(this.window);if(_c5.isCollapsed){if(_c5.rangeCount&&!this.queryCommandValue(_c4)){var _c6=_c5.getRangeAt(0);var sc=_c6.startContainer;if(sc&&sc.nodeType==3){if(!_c6.startOffset){win.withGlobal(this.window,_e.hitch(this,function(){var _c7="ul";if(_c4==="insertorderedlist"){_c7="ol";}var _c8=_8.create(_c7);var li=_8.create("li",null,_c8);_8.place(_c8,sc,"before");li.appendChild(sc);_8.create("br",null,_c8,"after");var _c9=_17.create();_c9.setStart(sc,0);_c9.setEnd(sc,sc.length);_c5.removeAllRanges();_c5.addRange(_c9);_16.collapse(true);}));return true;}}}}return false;},_handleTextColorOrProperties:function(_ca,_cb){var _cc=_17.getSelection(this.window);var doc=this.document;var rs,ret,_cd,txt,_ce,_cf,_d0,_d1;_cb=_cb||null;if(_ca&&_cc&&_cc.isCollapsed){if(_cc.rangeCount){_cd=_cc.getRangeAt(0);rs=_cd.startContainer;if(rs&&rs.nodeType===3){win.withGlobal(this.window,_e.hitch(this,function(){var _d2=_cd.startOffset;if(rs.length<_d2){ret=this._adjustNodeAndOffset(rs,_d2);rs=ret.node;_d2=ret.offset;}txt=rs.nodeValue;_ce=doc.createTextNode(txt.substring(0,_d2));var _d3=txt.substring(_d2);if(_d3!==""){_cf=doc.createTextNode(txt.substring(_d2));}_d0=_8.create("span");_d1=doc.createTextNode(".");_d0.appendChild(_d1);var _d4=_8.create("span");_d0.appendChild(_d4);if(_ce.length){_8.place(_ce,rs,"after");}else{_ce=rs;}_8.place(_d0,_ce,"after");if(_cf){_8.place(_cf,_d0,"after");}_8.destroy(rs);var _d5=_17.create();_d5.setStart(_d1,0);_d5.setEnd(_d1,_d1.length);_cc.removeAllRanges();_cc.addRange(_d5);if(has("webkit")){var _d6="color";if(_ca==="hilitecolor"||_ca==="backcolor"){_d6="backgroundColor";}_a.set(_d0,_d6,_cb);_16.remove();_8.destroy(_d4);_d0.innerHTML="&#160;";_16.selectElement(_d0);this.focus();}else{this.execCommand(_ca,_cb);_8.place(_d0.firstChild,_d0,"before");_8.destroy(_d0);_d5.setStart(_d1,0);_d5.setEnd(_d1,_d1.length);_cc.removeAllRanges();_cc.addRange(_d5);_16.collapse(false);_d1.parentNode.removeChild(_d1);}}));return true;}}}return false;},_adjustNodeAndOffset:function(_d7,_d8){while(_d7.length<_d8&&_d7.nextSibling&&_d7.nextSibling.nodeType===3){_d8=_d8-_d7.length;_d7=_d7.nextSibling;}return {"node":_d7,"offset":_d8};},_tagNamesForCommand:function(_d9){if(_d9==="bold"){return ["b","strong"];}else{if(_d9==="italic"){return ["i","em"];}else{if(_d9==="strikethrough"){return ["s","strike"];}else{if(_d9==="superscript"){return ["sup"];}else{if(_d9==="subscript"){return ["sub"];}else{if(_d9==="underline"){return ["u"];}}}}}}return [];},_stripBreakerNodes:function(_da){win.withGlobal(this.window,_e.hitch(this,function(){var _db=_f(".ieFormatBreakerSpan",_da);var i;for(i=0;i<_db.length;i++){var b=_db[i];while(b.firstChild){_8.place(b.firstChild,b,"before");}_8.destroy(b);}}));return _da;}});return _1b;});