<div class="block story">
	<div class="wrp">
		<div class="grid_3_4 none">
			<div class="head">
				<h1 class="title h2 ultrabold">
					[registration]�����������[/registration]
					[validation]����������� �����������[/validation]
				</h1>
			</div>
			<div class="text regtext">
			[registration]
				����������� �� ����� ����� �������� ��� ���� ��� ����������� ����������.
				�� ������� ��������� ������� �� ����, ��������� ���� �����������, ������������� ������� ����� � ������ ������.<br>
				<br>� ������ ������������� ������� � ������������, ���������� � <a href="/index.php?do=feedback">��������������</a> �����.
			[/registration]
			[validation]
				��� ������� ��� ��������������� �� ����� �����,
				������ ���������� � ��� �������� ��������, ������� ����������� ��������� �������������� ���� � ����� �������.<br>
			[/validation]
			</div>
			<ul class="ui-form">
				[registration]
					<li class="form-group imp">
						<label for="name">�����</label>
						<div class="login_check">
							<input type="text" name="name" id="name" class="wide" required>
							<button class="btn" title="���������" onclick="CheckLogin(); return false;">���������</button>
						</div>
						<div id="result-registration"></div>
					</li>
					<li class="form-group imp">
						<label for="password1">������</label>
						<input type="password" name="password1" id="password1" class="wide" required>
					</li>
					<li class="form-group imp">
						<label for="password2">��������� ������</label>
						<input type="password" name="password2" id="password2" class="wide" required>
					</li>
					<li class="form-group imp">
						<label for="email">E-mail</label>
						<input type="email" name="email" id="email" class="wide" required>
					</li>
				[question]
					<li class="form-group">
						<label for="question_answer">{question}</label>
						<input placeholder="������� �����" type="text" name="question_answer" id="question_answer" class="wide" required>
					</li>
				[/question]
				[recaptcha]
					<li>{recaptcha}</li>
				[/recaptcha]
				[/registration]
				[validation]
					<li class="form-group">
						<label for="fullname">���� ���</label>
						<input type="text" id="fullname" name="fullname" class="wide">
					</li>
					<li class="form-group">
						<label for="land">����� ����������</label>
						<input type="text" id="land" name="land" class="wide">
					</li>
					<li class="form-group">
						<label for="image">� ����</label>
						<textarea id="info" name="info" rows="5" class="wide"></textarea>
					</li>
					<li class="form-group">
						<label for="image">������</label>
						<input type="file" id="image" name="image" class="wide">
					</li>
					<li class="form-group">
						<table class="xfields">
							{xfields}
						</table>
					</li>
				[/validation]
			</ul>
			<div class="form_submit">
				[registration]
				[sec_code]
					<div class="c-capcha">
						{reg_code}
						<input placeholder="��������� ���" title="������� ��� ��������� �� ��������" type="text" name="sec_code" id="sec_code" required>
					</div>
				[/sec_code]
				[/registration]
				<button class="btn" name="submit" type="submit"><b class="ultrabold">������������������</b></button>
			</div>
		</div>
	</div>
</div>