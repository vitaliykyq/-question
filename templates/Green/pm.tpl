<article class="block story">
	<h1 class="title h2">������ ���������</h1>
	<div class="pm-box">
		<nav id="pm-menu">
			[inbox]<span>��������</span>[/inbox]
			[outbox]<span>�����������</span>[/outbox]
			[new_pm]<span>������� ���������</span>[/new_pm]
		</nav>
		<div class="pm_status">
			{pm-progress-bar}
			{proc-pm-limit} % / ({pm-limit} ���������)
		</div>
	</div>
	[pmlist]
	<div class="pmlist">
		{pmlist}
	</div>
	[/pmlist]
</article>
<div class="block">
	[newpm]
	<h4 class="title">������� ���������</h4>
	<div class="addform addpm">
		<ul class="ui-form">
			<li class="form-group combo">
				<div class="combo_field">
					<input placeholder="��� ��������" type="text" name="name" value="{author}" class="wide" required>
				</div>
				<div class="combo_field">
					<input placeholder="���� ���������" type="text" name="subj" value="{subj}" class="wide" required>
				</div>
			</li>
			<li id="comment-editor">{editor}</li>
			<li><input type="checkbox" id="outboxcopy" name="outboxcopy" value="1" /> <label for="outboxcopy">��������� ��������� � ����� "������������"</label></li>     
		[recaptcha]
			<li>{recaptcha}</li>
		[/recaptcha]
		[question]
			<li class="form-group">
				<label for="question_answer">������: {question}</label>
				<input placeholder="�����" type="text" name="question_answer" id="question_answer" class="wide" required>
			</li>
		[/question]
		</ul>
		<div class="form_submit">
			[sec_code]
				<div class="c-capcha">
					{sec_code}
					<input placeholder="��������� ���" title="������� ��� ��������� �� ��������" type="text" name="sec_code" id="sec_code" required>
				</div>
			[/sec_code]
			<button class="btn" type="submit" name="add"><b>���������</b></button>
			<button class="btn" type="button" onclick="dlePMPreview()">������������</button>
		</div>
	</div>
	[/newpm]
	[readpm]
	<div class="comment[online] online[/online]">
		[online]<span class="status online">������</span>[/online]
		<span class="status offline">������</span>
		<div class="com_info">
			<div class="avatar">
				<span class="cover" style="background-image: url({foto});">{login}</span>
			</div>
			<div class="com_user">
				<b class="name">{author}</b>
				<span class="grey date">{date}</span>
			</div>
		</div>
		<div class="com_content">
			<h4 class="title">{subj}</h4>
			<div class="text">{text}</div>
			[signature]<div class="signature">--------------------<br />{signature}</div>[/signature]
		</div>
		<div class="com_tools">
			<div class="com_tools_links grey">
				[reply]<svg class="icon icon-reply"><use xlink:href="#icon-reply"></use></svg><span>��������</span>[/reply]
				[ignore]<svg class="icon icon-reply"><use xlink:href="#icon-author"></use></svg><span>������������</span>[/ignore]
				[complaint]<svg class="icon icon-compl"><use xlink:href="#icon-compl"></use></svg><span>������</span>[/complaint]
				[del]<svg class="icon icon-del"><use xlink:href="#icon-del"></use></svg><span>�������</span>[/del]
			</div>
		</div>
	</div>
	[/readpm]
</div>