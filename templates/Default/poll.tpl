<div class="block_grey">
	<h4 class="title">{question}</h4>
	<div class="vote_more"><a href="#" onclick="ShowAllVotes(); return false;">������ ������...</a></div>
		<div class="vote_list">
			{list}
		</div>
	[voted]
		<div class="vote_votes grey">�������������: {votes}</div>
	[/voted]
	[not-voted]
		<button title="����������" class="btn btn-white" type="submit" onclick="doPoll('vote', '{news-id}'); return false;" ><b>����������</b></button>
		<button title="���������� ������" class="btn-border" type="button" onclick="doPoll('results', '{news-id}'); return false;">
			<svg class="icon icon-votes"><use xlink:href="#icon-votes"></use></svg>
			<span class="title_hide">���������� ������</span>
		</button>
	[/not-voted]
</div>