<br>
	<div class="footer">
		<a href="{$SITEURL}index.php?">{#L_166#}</a>
{if $B_CAN_SELL}
		| <a href="{$SITEURL}select_category.php?">{#L_028#}</a>
{/if}
{if $B_LOGGED_IN}
		| <a href="{$SITEURL}user_menu.php?">{#L_622#}</a> 
		| <a href="{$SSLURL}logout.php?">{#L_245#}</a> 
{else}
		| <a href="{$SSLURL}register.php?">{#L_235#}</a> 
		| <a href="{$SSLURL}user_login.php?">{#L_052#}</a> 
{/if}
		| <a href="{$SITEURL}faqs.php" alt="faqs" class="new-window">{#L_148#}</a>
{if $B_FEES}
		| <a href="{$SITEURL}fees.php">{#L_25_0012#}</a> 
{/if}
{if $B_VIEW_ABOUTUS}
		| <a href="{$SITEURL}contents.php?show=aboutus">{#L_5085#}</a> 
{/if}
{if $B_VIEW_PRIVPOL}
		| <a href="{$SITEURL}contents.php?show=priv">{#L_401#}</a> 
{/if}
{if $B_VIEW_TERMS}
		| <a href="{$SITEURL}contents.php?show=terms">{#L_5086#}</a> 
{/if}
		<br>
	</div>
	<div class="copyright">
		{#L_COPY#}
		<!--
			We request you retain the full copyright notice below including the link to www.webidsupport.com.
			This not only gives respect to the large amount of time given freely by the developers
			but also helps build interest, traffic and use of WeBid. If you (honestly) cannot retain
			the full copyright we ask you at least leave in place the "Powered by WeBid" line, with
			"WeBid" linked to www.webidsupport.com. If you must remove thte copyright message pelase make
            a donation at http://www.webidsupport.com/donate.php to help pay for future developments
		-->
		Powered by <a href="http://www.webidsupport.com/">WeBid</a> &copy; 2008 - 2011 <a href="http://www.webidsupport.com/">WeBid</a>
	</div>
</div>
</body>
</html>