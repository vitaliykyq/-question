<article class="block story shadow">
	<div class="wrp">
		<div class="head"><h1 class="title h2 ultrabold">���������� �����</h1></div>
		<div class="stats_head">
			<ul>
				<li class="stats_d"><b>�� �����</b> <span>{news_day} �������� � {comm_day} ������������, ���������������� {user_day} �������������</span></li>
				<li class="stats_w"><b>�� ������</b> <span>{news_week} �������� � {comm_week} ������������, ���������������� {user_week} �������������</span></li>
				<li class="stats_m"><b>�� �����</b> <span>{news_month} �������� � {comm_month} ������������, ���������������� {user_month} �������������</span></li>
			</ul>
		</div>
	</div>
</article>
<div class="block">
	<div class="wrp">
		<div class="statistics">
			<div class="stat_group">
				<h5>�������</h5>
				<ul>
					<li>����� ���-�� �������� <b class="right">{news_num}</b></li>
					<li>�� ��� ������������ <b class="right">{news_allow}</b></li>
					<li>������������ �� ������� <b class="right">{news_main}</b></li>
					<li>������� ��������� <b class="right">{news_moder}</b></li>
				</ul>
			</div>
			<div class="stat_group">
				<h5>������������</h5>
				<ul>
					<li>����� ���-�� ������������� <b class="right">{user_num}</b></li>
					<li>�� ��� �������� <b class="right">{user_banned}</b></li>
				</ul>
			</div>
			<div class="stat_group">
				<h5>�����������</h5>
				<ul>
					<li>���-�� ������������ <b class="right">{comm_num}</b></li>
					<li><a href="/?do=lastcomments">���������� ���������</a></li>
				</ul>
			</div>
			<p class="grey">����� ������ ���� ������: {datenbank}</p>
		</div>
	</div>
</div>
<div class="block block_table_top_users">
	<div class="wrp">
		<h4 class="block_title ultrabold">������ ������������</h4>
		<div class="table_top_users">
			<table class="userstop">{topusers}</table>
		</div>
	</div>
</div>