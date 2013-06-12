</div>
</div>
<div class="clearfix"></div>

<div class="footer"> <small><span class="muted"> <a href="{SITEURL}index.php?">{L_166}</a>
  <!-- IF B_CAN_SELL -->
  | <a href="{SITEURL}select_category.php?">{L_028}</a>
  <!-- ENDIF -->
  <!-- IF B_LOGGED_IN -->
  | <a href="{SITEURL}user_menu.php?">{L_622}</a> | <a href="{SSLURL}logout.php?">{L_245}</a>
  <!-- ELSE -->
  | <a href="{SSLURL}register.php?">{L_235}</a> | <a href="{SSLURL}user_login.php?">{L_052}</a>
  <!-- ENDIF -->
  | <a href="{SITEURL}faqs.php" alt="faqs" class="new-window">{L_148}</a>
  <!-- IF B_FEES -->
  | <a href="{SITEURL}fees.php">{L_25_0012}</a>
  <!-- ENDIF -->
  <!-- IF B_VIEW_ABOUTUS -->
  | <a href="{SITEURL}contents.php?show=aboutus">{L_5085}</a>
  <!-- ENDIF -->
  <!-- IF B_VIEW_PRIVPOL -->
  | <a href="{SITEURL}contents.php?show=priv">{L_401}</a>
  <!-- ENDIF -->
  <!-- IF B_VIEW_TERMS -->
  | <a href="{SITEURL}contents.php?show=terms">{L_5086}</a>
  <!-- ENDIF -->
  </span></small> <br>
</div>
<div style="text-align:center; margin:5px 0px; font-size:9px;"> <small><span class="muted">{HEADERCOUNTER}</span></small> </div>
<div class="copyright"> <small><span class="muted">{L_COPY}</span></small> </div>
<div class="copyright" style="margin-bottom:10px;">
		<!--
			We request you retain the full copyright notice below including the link to www.webidsupport.com.
			This not only gives respect to the large amount of time given freely by the developers
			but also helps build interest, traffic and use of WeBid. If you (honestly) cannot retain
			the full copyright we ask you at least leave in place the "Powered by WeBid" line, with
			"WeBid" linked to www.webidsupport.com. If you must remove thte copyright message pelase make
            a donation at http://www.webidsupport.com/donate.php to help pay for future developments
		-->
	<small><span class="muted">	Powered by <a href="http://www.webidsupport.com/">WeBid</a> &copy; 2008 - 2011 <a href="http://www.webidsupport.com/">WeBid</a></span></small>
	</div>
</div>
<script type="text/javascript">


// truncate js min
(function(a){function b(a){return!isNaN(parseFloat(a))&&isFinite(a)}function c(a,b,d,e,f,g,h,i){var j,k,l;return i?(j=e===0?"":d.slice(-e),k=d.slice(-f)):(j=d.slice(0,e),k=d.slice(0,f)),b<g.html(h)[a]()?0:g.html(k+h)[a]()<g.html(j+h)[a]()?f:(l=parseInt((e+f)/2,10),j=i?d.slice(-l):d.slice(0,l),g.html(j+h),g[a]()===b?l:(g[a]()>b?f=l-1:e=l+1,c(a,b,d,e,f,g,h,i)))}a.fn.truncate=function(d){var e={width:"auto",token:"&hellip;",center:!1,addclass:!1,addtitle:!1,multiline:!1};return d=a.extend(e,d),this.each(function(){var e=a(this),f={fontFamily:e.css("fontFamily"),fontSize:e.css("fontSize"),fontStyle:e.css("fontStyle"),fontWeight:e.css("fontWeight"),"font-variant":e.css("font-variant"),"text-indent":e.css("text-indent"),"text-transform":e.css("text-transform"),"letter-spacing":e.css("letter-spacing"),"word-spacing":e.css("word-spacing"),display:"none"},g=e.text(),h=a("<span/>").css(f).html(g).appendTo("body"),i=h.width(),j=b(d.width)?d.width:e.width(),k="width",l,m,n;d.multiline?(h.width(e.width()),k="height",m=h.height(),n=e.height()+1):(m=i,n=j),m>n&&(h.text(""),d.center?(n=parseInt(n/2,10)+1,l=g.slice(0,c(k,n,g,0,g.length,h,d.token,!1))+d.token+g.slice(-1*c(k,n,g,0,g.length,h,"",!0))):l=g.slice(0,c(k,n,g,0,g.length,h,d.token,!1))+d.token,d.addclass&&e.addClass(d.addclass),d.addtitle&&e.attr("title",g),e.empty().append(l)),h.remove()})}})(jQuery);



// amsmnmdksdljlfsdlkjd
$(document).ready(function () {
    $('a.new-window').click(function () {
        var posY = ($(window).height() - 550) / 2;
        var posX = ($(window).width()) / 2;
        window.open(this.href, this.alt, "toolbar=0,location=0,directories=0,scrollbars=1,screenX=" + posX + ",screenY=" + posY + ",status=0,menubar=0,width=550,height=550");
        return false;
    });
    var currenttime = '{ACTUALDATE}';
    var serverdate = new Date(currenttime);

    function padlength(what) {
        var output = (what.toString().length == 1) ? "0" + what : what;
        return output;
    }

    function displaytime() {
        serverdate.setSeconds(serverdate.getSeconds() + 1)
        var timestring = padlength(serverdate.getHours()) + ":" + padlength(serverdate.getMinutes()) + ":" + padlength(serverdate.getSeconds());
        $("#servertime").html(timestring);
    }
    setInterval(displaytime, 1000);
    $(function () {
        $('#gallery a').lightBox();
    });
});
$(document).ready(function () {
    var adjust_size = function () {
        windowsize = $(window).width();
		//truncate if window width < 480
        if (windowsize < 480) {
            $('.list-title a, .truncate-table').truncate({
                width: '200',
                token: '&hellip;',
                center: false,
                multiline: false
            });
            $('#sub-cats').removeClass('in');
            $('#sub-cats-btn').show();
        } else {
            $('#sub-cats').addClass('in');
            $('#sub-cats-btn').hide();
        };
    };
    adjust_size();
    $(window).resize(adjust_size);
    $(".table-row-click").click(function () {
        window.location.href = $(this).find(".list-title a").attr("href");
    });
    //end ready
});



</script>
</body></html>