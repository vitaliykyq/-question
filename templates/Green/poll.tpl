<div class="poll_block">
	<div class="poll_block_in">
	<h4 class="title">{question}</h4>
		<div class="vote_list">
			{list}
		</div>
	[voted]
		<div class="vote_votes grey">�������������: {votes}</div>
	[/voted]
	[not-voted]
		<button title="����������" class="btn" type="submit" onclick="doPoll('vote', '{news-id}'); return false;" ><b>����������</b></button>
		<button title="����������" class="btn" type="button" onclick="doPoll('results', '{news-id}'); return false;" ><b>����������</b></button>
	[/not-voted]
	</div>
</div>