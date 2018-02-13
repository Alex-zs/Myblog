from django.shortcuts import render
import json
from users.models import User
from blog.models import Article
from django.core.paginator import Paginator,EmptyPage,PageNotAnInteger
import markdown2

# Create your views here.
def index(request):
	blog_list = Article.objects.all().order_by('-update_time')
	blog_list2 = Paginator(blog_list,5)
	page = request.GET.get('page')
	try:
		contacts = blog_list2.page(page)
	except PageNotAnInteger:
		contacts = blog_list2.page(1)
	except EmptyPage:
		contacts = blog_list2.page(blog_list2.num_pages)
	return render(request,'basemain.html',{"contacts":contacts})

def detail(request):
	article_id = request.GET['id']
	article_id = int(article_id)
	article = Article.objects.get(id=article_id)
	article.content = markdown2.markdown(article.content)
	return render(request,'detail.html',{"article":article})
