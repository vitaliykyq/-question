[not-available=showfull]
<aside class="rightside">
	<!-- ���������� -->
	<div class="block top_block">
		<h4 class="title"><b>����������</b></h4>
		<ol class="topnews">
			{topnews}
		</ol>
	</div>
	<!-- / ���������� -->
	<!-- ������ 300X250 -->
	<div class="banner banner_300">
		<img src="{THEME}/images/tmp/banner_300x250.png" alt="">
	</div>
	<!-- / ������ 300X250 -->
	<!-- ������ 240X400 -->
	<div class="banner banner_240">
		<img src="{THEME}/images/tmp/banner_240x400.png" alt="">
	</div>
	<!-- / ������ 240X400 -->
	{vote}
	[available=main|cat]
	<!-- ����� -->
	<div class="block arch_block">
		<div class="title h4 title_tabs">
			<h4>�����</h4>
			<ul>
				<li class="active">
					<a title="� ���� ���������" href="#arch_calendar" aria-controls="arch_calendar" data-toggle="tab">
						<svg class="icon icon-calendar"><use xlink:href="#icon-calendar"></use></svg><span class="title_hide">� ���� ���������</span>
					</a>
				</li>
				<li>
					<a title="� ���� ������" href="#arch_list" aria-controls="arch_list" data-toggle="tab">
						<svg class="icon icon-archive"><use xlink:href="#icon-archive"></use></svg><span class="title_hide">� ���� ������</span>
					</a>
				</li>
			</ul>
		</div>
		<div class="tab-content">
			<div class="tab-pane active" id="arch_calendar">{calendar}</div>
			<div class="tab-pane" id="arch_list">{archives}</div>
		</div>
	</div>
	<!-- / ����� -->
	<!-- �������� ���������� -->
	<div class="block_bg change_skin">
		<h4 class="title">�������� ����������</h4>
		<div class="styled_select">
			{changeskin}
			<svg class="icon icon-down"><use xlink:href="#icon-down"></use></svg>
		</div>
	</div>
	<!-- / �������� ���������� -->
	[/available]
	<!-- ���� -->
	<div class="block tags_block">
		<h4 class="title"><b>����</b></h4>
		<div class="tag_list">
			{tags}
		</div>
	</div>
	<!-- / ���� -->
	<!-- ��������� ����������� -->
	[available=main]
	<div class="block top_block">
		<h4 class="title"><b>�����������</b></h4>
		<ul class="lastcomm">
			{customcomments template="modules/lastcomments" available="global" from="0" limit="5" order="date" sort="desc" cache="yes"}
		</ul>
	</div>
	[/available]
	<!-- / ��������� ����������� -->
</aside>
[/not-available]