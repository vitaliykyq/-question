<article class="story">
	<div class="userinfo_top">
		<div class="avatar">
			<a href="#"><span class="cover" style="background-image: url({foto});">{usertitle}</span></a>
		</div>
		<h1 class="title h2">������������: {usertitle}</h1>
		<div class="userinfo_status">[online]<span style="color: #70bb39;">������</span>[/online][offline]������[/offline]</div>
		<ul class="user_tab">
			<li class="active"><a href="#user1" data-toggle="tab">����������</a></li>[not-logged]<li><a href="#user2" data-toggle="tab">��������</a></li>[/not-logged][not-group=5]<li>{pm}</li>[/not-group]
		</ul>
	</div>
	<div class="block">
		<div class="tab-content">
			<div class="tab-pane active" id="user1">
				<ul class="usinf">
					<li><div class="ui-c1 grey">���</div> <div class="ui-c2">{fullname}[not-fullname]����������[/not-fullname]</div></li>
					<li><div class="ui-c1 grey">����� ����������</div> <div class="ui-c2">{land}[not-land]����������[/not-land]</div></li>
					<li><div class="ui-c1 grey">���������������</div> <div class="ui-c2">{registration}</div></li>
					<li><div class="ui-c1 grey">��������� ����������</div> <div class="ui-c2">{lastdate}</div></li>
					<li><div class="ui-c1 grey">������</div> <div class="ui-c2">{status}</div></li>
				</ul>
				<br>
				<ul class="usinf">
					<li><div class="ui-c1 grey">���-�� ����������</div> <div class="ui-c2">{news-num}&nbsp;&nbsp; [ {news} ]</div></li>
					<li><div class="ui-c1 grey">���-�� ������������</div> <div class="ui-c2">{comm-num}&nbsp;&nbsp; [ {comments} ]</div></li>
					<li><div class="ui-c1 grey">������� �� �����</div> <div class="ui-c2">{rate}</div></li>
				</ul>
				<h4 class="heading">� ����</h4>
				<p>{info}</p>
				[signature]
					<h4 class="heading">�������</h4>
					{signature}
				[/signature]
			</div>
			[not-logged]
			<div class="tab-pane" id="user2">
				<!-- ��������� ������������ -->
				<div id="options">
					<div class="addform">
						<ul class="ui-form">
							<li class="form-group">
								<label for="fullname">���� ���</label>
								<input type="text" name="fullname" id="fullname" value="{fullname}" class="wide">
							</li>
							<li class="form-group">
								<label for="email">��� E-mail</label>
								<input type="email" name="email" id="email" value="{editmail}" class="wide" required>
								<div class="checkbox">{hidemail}</div>
							</li>
							<li class="form-group">
								<label for="land">����� ����������</label>
								<input type="text" name="land" id="land" value="{land}" class="wide">
							</li>
							<li class="form-group">
								<label>������� ����</label>
								{timezones}
							</li>
							<li class="form-group form-sep"></li>
							<li class="form-group">
								<label for="altpass">������ ������</label>
								<input type="password" name="altpass" id="altpass" class="wide">
							</li>
							<li class="form-group">
								<label for="password1">����� ������</label>
								<input type="password" name="password1" id="password1" class="wide">
							</li>
							<li class="form-group">
								<label for="password2">��������� ����� ������</label>
								<input type="password" name="password2" id="password2" class="wide">
							</li>
							<li class="form-group form-sep"></li>
							<li class="form-group">
								<label for="image">��������� ������</label>
								<input type="file" name="image" id="image" class="wide">
							</li>
							<li class="form-group">
								<input placeholder="������������ Gravatar" type="text" name="gravatar" id="gravatar" value="{gravatar}" class="wide">
							</li>
							<li class="form-group">
								<div class="checkbox"><input type="checkbox" name="del_foto" id="del_foto" value="yes" />�<label for="del_foto">������� ������</label></div>
							</li>
							<li class="form-group form-sep"></li>
							<li class="form-group">
								<label for="info">� ����</label>
								<textarea name="info" id="info" rows="5" class="wide">{editinfo}</textarea>
							</li>
							<li class="form-group">
								<label for="signature">�������</label>
								<textarea name="signature" id="signature" rows="3" class="wide">{editsignature}</textarea>
							</li>
							<li class="form-group form-sep"></li>
							<li class="form-group">
								<label for="signature">������ ������������ �������������:</label>
								{ignore-list}
							</li>
							<li class="form-group form-sep"></li>
							[group=1,2,3]
							<li class="form-group">
								<label for="allowed_ip">���������� �� IP</label>
								<textarea placeholder="�������: 192.48.25.71 or 129.42.*.*" name="allowed_ip" id="allowed_ip" rows="5" class="field wide">{allowed-ip}</textarea>
							</li>
							[/group]
							<li class="form-group">
								<table class="xfields">
								{xfields}
								</table>
							</li>
							<li class="form-group">
								<div class="checkbox">{twofactor-auth}</div>
							</li>
							<li class="form-group">
								<div class="checkbox">{news-subscribe}</div>
							</li>
							<li class="form-group">
								<div class="checkbox">{comments-reply-subscribe}</div>
							</li>
							<li class="form-group">
								<div class="checkbox">{unsubscribe}</div>
							</li>
						</ul>
						<div class="form_submit">
							<button class="btn btn-big" name="submit" type="submit"><b>���������</b></button>
							<input name="submit" type="hidden" id="submit" value="submit">
						</div>
					</div>
				</div>
				<!-- / ��������� ������������ -->
			</div>
			[/not-logged]
		</div>
	</div>
</article>