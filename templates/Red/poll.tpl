<div class="poll_block">
	<div class="poll_title">
		<b>{question}</b>
	</div>
	<div class="vote_list">
		{list}
	</div>
[voted]
	<div class="vote_votes grey">�������������: {votes}</div>
[/voted]
[not-voted]
	<button title="����������" class="btn" type="submit" onclick="doPoll('vote', '{news-id}'); return false;" >
		<b class="ultrabold">����������</b>
	</button>
[/not-voted]
</div>