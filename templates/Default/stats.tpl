<article class="box story">
	<div class="box_in dark_top stats_head">
		<h1 class="title">���������� �����</h1>
		<ul>
			<li class="stats_d"><b>�� �����</b> <span>{news_day} �������� � {comm_day} ������������, ���������������� {user_day} �������������</span></li>
			<li class="stats_w"><b>�� ������</b> <span>{news_week} �������� � {comm_week} ������������, ���������������� {user_week} �������������</span></li>
			<li class="stats_m"><b>�� �����</b> <span>{news_month} �������� � {comm_month} ������������, ���������������� {user_month} �������������</span></li>
		</ul>
	</div>
	<div class="box_in">
		<div class="statistics">
			<div class="stat_group">
				<h5 class="blue">�������</h5>
				<ul>
					<li>����� ���-�� �������� <b class="right">{news_num}</b></li>
					<li>�� ��� ������������ <b class="right">{news_allow}</b></li>
					<li>������������ �� ������� <b class="right">{news_main}</b></li>
					<li>������� ��������� <b class="right">{news_moder}</b></li>
				</ul>
			</div>
			<div class="stat_group">
				<h5 class="blue">������������</h5>
				<ul>
					<li>����� ���-�� ������������� <b class="right">{user_num}</b></li>
					<li>�� ��� �������� <b class="right">{user_banned}</b></li>
				</ul>
			</div>
			<div class="stat_group">
				<h5 class="blue">�����������</h5>
				<ul>
					<li>���-�� ������������ <b class="right">{comm_num}</b></li>
					<li><a href="/?do=lastcomments">���������� ���������</a></li>
				</ul>
			</div>
			<p class="grey">����� ������ ���� ������: {datenbank}</p>
		</div>
		<h4 class="heading">������ ������������</h4>
		<div class="table_top_users">
			<table class="userstop">{topusers}</table>
		</div>
	</div>
</article>