<div class="comment" id="{comment-id}">
	<div class="com_info">
		<div class="avatar">
			[profile]<span class="cover" style="background-image: url({foto});">{login}</span>[/profile]
			[online]<span class="com_online" title="{login} - ������">������</span>[/online]
		</div>
		<div class="com_user">
			<b class="name">{author}</b>
			<span class="grey">
				�� {date}
			</span>
		</div>
		<div class="meta">
			[rating]
			<div class="rate">
				[rating-type-1]<div class="rate_stars">{rating}</div>[/rating-type-1]
				[rating-type-2]
				<div class="rate_like">
				[rating-plus]
					<svg class="icon icon-love"><use xlink:href="#icon-love"></use></svg>
					{rating}
				[/rating-plus]
				</div>
				[/rating-type-2]
				[rating-type-3]
				<div class="rate_like-dislike">
					[rating-plus]<svg title="��������" class="icon icon-like"><use xlink:href="#icon-like"></use></svg>[/rating-plus]
					{rating}
					[rating-minus]<svg title="�� ��������" class="icon icon-dislike"><use xlink:href="#icon-dislike"></use></svg>[/rating-minus]
				</div>
				[/rating-type-3]
			</div>
			[/rating]
			
			<ul class="left">
				<li class="reply grey" title="����������">[fast]<svg class="icon icon-coms"><use xlink:href="#icon-coms"></use></svg><span>����������</span>[/fast]</li>
				[treecomments] 
				<li class="reply grey" title="��������">[reply]<svg class="icon icon-reply"><use xlink:href="#icon-reply"></use></svg><span>��������</span>[/reply]</li>
				[/treecomments] 
				[not-group=5] 
				<li class="edit_btn" title="�������������">[com-edit]<i title="�������������">�������������</i>[/com-edit]</li>
				<li class="complaint" title="������">[complaint]<svg class="icon icon-bad"><use xlink:href="#icon-bad"></use></svg><span class="title_hide">������</span>[/complaint]</li>
				<li class="del" title="�������">[com-del]<svg class="icon icon-cross"><use xlink:href="#icon-cross"></use></svg><span class="title_hide">�������</span>[/com-del]</li>
				<li class="mass">{mass-action}</li>
				[/not-group]
			</ul>
		</div>
	</div>
	<div class="com_content">
		[available=lastcomments|search]<h4 class="title">{news_title}</h4>[/available]
		<div class="text">{comment}</div>
		[signature]<div class="signature">--------------------<br />{signature}</div>[/signature]
	</div>
</div>