from django.shortcuts import render,get_object_or_404,redirect
from blog.models import Article
from .models import Comment
from .forms import CommentForm

def article_comment(request,article_id):
	article = get_object_or_404(Article,id=article_id)
	if request.method == 'POST':
		form = CommentForm(request.POST)
		if form.is_valid():
			comment = form.save(commit=False)
			comment.article = article
			comment.save()
			return redirect(article)
		else:
			comment_list = article.comment_set.all()
			context = {'article':article,'form':form,'comment_list':comment_list}
			return render(request,'detail.html',context=context)
	return redirect(article)

# Create your views here.
