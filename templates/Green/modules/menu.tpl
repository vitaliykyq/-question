<div class="greenmenu">
	<!-- ����� -->
	<form id="q_search" method="post">
		<div class="q_search">
			<input id="story" name="story" placeholder="����� �� �����..." type="search">
			<button class="q_search_btn" type="submit" title="�����"><svg class="icon icon-search"><use xlink:href="#icon-search"></use></svg><span class="title_hide">�����</span></button>
		</div>
		<input type="hidden" name="do" value="search">
		<input type="hidden" name="subaction" value="search">
	</form>
	<!-- / ����� -->
	<nav class="menu">
		<a[available=main] class="active"[/available] href="/" title="�������">�������</a>
		<a[available=feedback] class="active"[/available] href="/index.php?do=feedback" title="��������">��������</a>
		<a[available=rules] class="active"[/available] href="/rules.html" title="�������">�������</a>
		{catmenu}
	</nav>
</div>