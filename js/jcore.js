jwbid = {};


SUCCESS = "SUCCESS";
ERROR = "ERROR";

/**
 *
 */
mObj = function() {} ;

/**
 *
 */
mObj.prototype.deinit = function() {
    this.method = null ;
} ;

/**
 *
 */
mObj.prototype.init = function() {
    var self = this;
    this.method = function() { self.deinit() ; } ;
} ;

/**
 * 
 * 
 */
mObj.prototype.callparent = function() {
        return arguments.callee.caller.parent.apply(this, arguments) ;
} ;
/**
 *
 */
mObj.extend = function(cclass)
{
    var classDef = function()
    {
        if (arguments[0] != mObj)
        {
                this.init.apply(this, arguments) ;
        }
    } ;

    var proto = new this(mObj) ;
    var superClass = this.prototype ;

    for(var n in cclass)
    {
            var item = cclass[n] ;
            if (item instanceof Function)
            {
                    item.parent = superClass[n] ;
            }
            proto[n] = item ;
    }

    proto.parent = superClass ;
    classDef.prototype = proto ;

    classDef.extend = this.extend ;
    return classDef ;
};

Function.prototype.attach = function(object)
{
	var __method = this;
	var args = Array.prototype.slice.call(arguments, 1) ;

	var func = function()
	{
		
		if(__method) 
		{
			return __method.apply(object, args.concat(Array.prototype.slice.call(arguments, 0)));
		}
	};

	func.deattach = function()
	{
		args = null;
		func.attached = true;
		func = null;
		__method = null;
	};

	func.getMethod = function()
	{
		return __method;
	};
	func.attached = true;
	return func;
};
/**
 * 
 */
var Evnt = function(target, eventName, func)
{
	if (target != null)
	{
		var sfunc = func.attached ? func : func.attach(target);
	
		if (document.addEventListener)
		{
			target.addEventListener(eventName, sfunc, false);
		}
		else if (document.attachEvent)
		{
			target.attachEvent("on" + eventName, sfunc);
		}
		else
		{
			target["on" + eventName] = sfunc;
		}
	
		if ( !target.events )
		{
			target.events = {};
			target.events.count = 0;
		}
	
		if ( func.getMethod )
		{
			func = func.getMethod();
		}
	
		func.id = target.events.count;
		var einfo = [ eventName, sfunc ];
		target.events["event_" + func.id] = einfo;
		target.events.count++;
	
		return func.id;
	}
	else
	{
		return null ;
	}
};
Evnt.getTarget = function(event)
{
	var e = event || window.event;
	return e.target ? e.target : e.srcElement;
};

Evnt.getEvent = function(event)
{
	var e = event || window.event;
	return e;
};
Event.getMousePos = function(event, target)
{
	var e = event || window.event;
	var ps = {};
	ps.x = e.offsetX ? ( e.offsetX ) : e.pageX - ( target ? target.offsetLeft : 0 );
	ps.y = e.offsetY ? ( e.offsetY ) : e.pageY - ( target ? target.offsetTop : 0 );
	return ps;
};
Evnt.CLICK = "click";
Evnt.BEFOREUNLOAD = "beforeunload";
Evnt.UNLOAD = "unload";

Evnt.DROP = "drop";

Evnt.DRAG = "dragstart";
Evnt.DRAGOVER = "dragover";

Evnt.ONLOAD = "load";
Evnt.FOCUS = "focus";
Evnt.BLUR = "blur";
Evnt.ONSELECTSTART = "selectstart";

Evnt.MOUSEDOWN = "mousedown";
Evnt.MOUSEMOVE = "mousemove";
Evnt.MOUSEUP = "mouseup";
Evnt.MOUSEOVER = "mouseover";
Evnt.MOUSEOUT = "mouseout";

Evnt.KEYDOWN = "keydown";
Evnt.KEYUP = "keyup";
Evnt.KEYPRESS = "keypress";
Evnt.LOAD = "load";
Evnt.CHANGE = "change";
Evnt.CUT = "cut";
Evnt.PASTE = "paste";
Evnt.LOSECAPTURE = "losecapture";
Evnt.CONTEXTMENU = "contextmenu";
Evnt.SUBMIT = "submit";
Evnt.RESIZE = "resize";
Evnt.SCROLL = "scroll";

$.getObj = function(jqrParam)
{
    return $(jqrParam)[0];
};

jwbid.Ajax = mObj.extend({  
    
    dtype : "",
    ctype : "POST",
    aUrl : "",
    
    sendJson : function(toURL, data, func)
    {
        this.dtype = "json";
        this.ctype = "POST";
        this.aUrl = toURL;
        return this.sendData(data, func);
    },
    
    ajaxPOST : function(toURL, data, func)
    {
        this.dtype = "html";
        this.ctype = "POST";
        this.aUrl = toURL;
        return this.sendData(data, func);
    },
    
    ajaxGET : function(toURL, data, func)
    {
        this.dtype = "html";
        this.ctype = "GET";
        this.aUrl = toURL;
        return this.sendData(data, func);
    },
    
    getHTML : function(toURL, func)
    {
        this.aUrl = toURL;
        $.ajax({
            url: this.aUrl,
            cache: false
            }).done(function( html ) {
             if(html){ 
                 func(html);
             }else{
                 return ERROR;
             }
        });
    },
    
    getJS : function(toURL, func)
    {
        this.dtype = "script";
        this.ctype = "GET";
        this.aUrl = toURL;
        $.ajax({
            type: this.ctype,
            url: toURL,
            dataType: this.dtype
        }).done(function(js){
            if(js){
                func(js);
            }else{
                return ERROR;
            }
        });
    },
    
    sendData : function(sdata, recv)
    {
        var req = $.ajax({
            url: this.aUrl,
            type: this.ctype,
            data: sdata,
            dataType: this.dtype
        });
        req.done(function(rdata){
            recv(rdata);
            return SUCCESS;
        });
        req.fail(function(jqXHR, textStatus)
        {
            return textStatus;
        });
    }  
     
}); 

jwbid.ajax = new jwbid.Ajax();

jwbid.EventManager = mObj.extend({
    
    init : function()
    {
        this.callparent();
        Evnt(window, Evnt.ONLOAD, this.EventHandler.attach(this));
    },
    
    deinit: function()
    {
        this.callparent();  
    },
            
    EventHandler : function()
    {
        var top = $.getObj(".wb-header");
        var leftmenu = $.getObj(".wb-left-menu");
        var main = $.getObj(".wb-main");
        var footer = $.getObj(".wb-footer");
        
        if(top)
        {
            if(!jwbid.hManager)
            {
                jwbid.hManager = new jwbid.HeadManager();
            }
            Evnt(top, Evnt.CLICK, this.EventDispatch.attach(this, Evnt.CLICK, jwbid.hManager));
            Evnt(top, Evnt.KEYDOWN, this.EventDispatch.attach(this, Evnt.KEYDOWN, jwbid.hManager));
            Evnt(footer, Evnt.MOUSEOUT, this.EventDispatch.attach(this, Evnt.MOUSEOUT, jwbid.bManager));
            Evnt(top, Evnt.MOUSEOVER, this.EventDispatch.attach(this, Evnt.MOUSEOVER, jwbid.mManager));
        }
        if(leftmenu)
        {
            if(!jwbid.mManager)
            {
                jwbid.mManager = new jwbid.MenuManager();
            }
            Evnt(leftmenu, Evnt.CLICK, this.EventDispatch.attach(this, Evnt.CLICK, jwbid.mManager));
            Evnt(leftmenu, Evnt.KEYDOWN, this.EventDispatch.attach(this, Evnt.KEYDOWN, jwbid.mManager));
            Evnt(leftmenu, Evnt.MOUSEOVER, this.EventDispatch.attach(this, Evnt.MOUSEOVER, jwbid.mManager));
            Evnt(leftmenu, Evnt.FOCUS, this.EventDispatch.attach(this, Evnt.FOCUS, jwbid.mManager));
        }
        if(main)
        {
            if(!jwbid.bManager)
            {
                jwbid.bManager = new jwbid.BodyManager();
            }
            Evnt(main, Evnt.CLICK, this.EventDispatch.attach(this, Evnt.CLICK, jwbid.bManager));
            Evnt(main, Evnt.CHANGE, this.EventDispatch.attach(this, Evnt.CHANGE, jwbid.bManager));
            Evnt(main, Evnt.MOUSEOVER, this.EventDispatch.attach(this, Evnt.MOUSEOVER, jwbid.bManager));
            Evnt(main, Evnt.MOUSEOUT, this.EventDispatch.attach(this, Evnt.MOUSEOUT, jwbid.bManager));
            Evnt(main, Evnt.MOUSEDOWN, this.EventDispatch.attach(this, Evnt.MOUSEDOWN, jwbid.bManager));
            Evnt(main, Evnt.KEYUP, this.EventDispatch.attach(this, Evnt.KEYUP, jwbid.bManager));
            Evnt(main, Evnt.KEYDOWN, this.EventDispatch.attach(this, Evnt.KEYDOWN, jwbid.bManager));
        }
        if(footer)
        {
            if(!jwbid.fManager)
            {
                jwbid.fManager = new jwbid.FooterManager();
            }
            Evnt(footer, Evnt.CLICK, this.EventDispatch.attach(this, Evnt.CLICK, jwbid.fManager));
            Evnt(footer, Evnt.MOUSEOVER, this.EventDispatch.attach(this, Evnt.MOUSEOVER, jwbid.fManager));
        }
    },
            
    EventDispatch : function(type, obj, e)
    {
        var ev = Evnt.getEvent(e);
        var target = Evnt.getTarget(ev);
        if(obj)
        {
           switch(type)
           {
               case Evnt.CLICK: 
                   obj.onClick(target);
                   break;
               case Evnt.CHANGE: 
                   obj.onChange(target);
                   break;
               case Evnt.KEYDOWN: 
                   obj.onKeyDown(target);
                   break;
               case Evnt.KEYUP: 
                   obj.onKeyUp(target);
                   break;
               case Evnt.MOUSEOVER: 
                   obj.onMouseOver(target);
                   break;
               case Evnt.MOUSEOUT: 
                   obj.onMouseOut(target);
                   break;
               case Evnt.MOUSEDOWN: 
                   obj.onMouseDown(target);
                   break;
           }
       }
    }
});

jwbid.eManager = new jwbid.EventManager();

jwbid.HeadManager = mObj.extend({

    init : function()
    {
         this.callparent();
    },
            
    deinit: function()
    {
        this.callparent();
    },    
            
    onClick : function(elmnt)
    {
       var ID = elmnt.getAttribute("name");
       switch(ID)
       {
           case "uLogin":
               this.callLoginPage();
               break;
           case "uLogout":
               this.callLogOutPage();
               break;
           case "uRegister":
               this.callRegPage();
               break;
           case "msgboard":
               this.callMsgBoard();
               break;
           case "ctrlpanel":
               this.callControlPanel();
               break;
           case "userhelp":
               this.callUserHelp();
               break;
           case "sellitem":
               this.callSellItemPage();
               break;
           case "SearchItem":
               this.search();
               break;
       }
    },
            
    /**
     *  Login
     */        
    callLoginPage : function()
    {
        jwbid.ajax.getHTML("user_login.php", function(data){
            $(".wb-middle").html(data);
        });
    },
            
    /**
     * Register
     */
    callRegPage : function()
    {
       jwbid.ajax.getHTML("register.php",function(data){
           $(".wb-middle").html(data);
       }) ;
    },
            
    /**
     *  Logout
     */
    callLogOutPage : function()
    {
      jwbid.ajax.getHTML("logout.php",function(data){
          $(".wb-middle").html(data);
      }); 
    },
            
    /**
     * MessageBoard Page: {$SITEURL}boards.php
     */
     callMsgBoard : function()
     {
       jwbid.ajax.getHTML("boards.php",function(data){
           $(".wb-middle").html(data);
       }); 
     },
            
    /**
     * User Menu Page: {$SITEURL}user_menu.php?
     */
     callControlPanel : function()
     {

     },
            
    /**
     * Help Page: {$SITEURL}faqs.php
     */
     callUserHelp : function()
     {
         
     },
            
    /**
     * Sell Page: {$SITEURL}select_category.php?
     */
     callSellItemPage : function()
     {
       jwbid.ajax.getHTML("select_category.php",function(data){
           $(".wb-middle").html(data);
       });
     },
     
     /**
      * Search: {$SITEURL}search.php
      */
     search : function()
     {
        var frm = $(".wb-srch-frm").serialize();
        jwbid.ajax.ajaxGET("search.php", frm, function(data){
            $(".wb-middle").html(data);
        }); 
     },
             
    /**
     * MouseOver Event
     */
    onMouseOver: function(elmnt)
    {
        var name = elmnt.getAttribute("name");
        
        switch(name)
        {
            case "login":
                elmnt.color = "#0654BA";
              break;
        }
        
    }
});

jwbid.MenuManager = mObj.extend({

    init : function()
    {
         this.callparent();
    },
            
    deinit: function()
    {
        this.callparent();
    },    
            
    onClick : function(elmnt)
    {
       var ID = elmnt.getAttribute("name");
       switch(ID)
       {
           case "mainmenu":
               this.menuClick(elmnt);
               break;
       }
    },
            
    onMouseOver : function(elmnt)
    {
        var name = elmnt.getAttribute("name");
        
        switch(name)
        {
            case "login":           
                elmnt.color = "#0654BA";
              break;
            case name.substr(0,3):
                
              break;
        }
    },

    /***
     * 
     */
    menuClick : function(elmnt)
    {
        var id = elmnt.getAttribute("id");
        
        jwbid.ajax.ajaxGET("browse.php",{
            "id": id
        },function(data){
            $(".wb-contents").html(data);
        }); 
    }    
});