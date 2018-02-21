from django.shortcuts import render,get_object_or_404
from comments.forms import CommentForm
import json
from users.models import User
from blog.models import Article
from django.core.paginator import Paginator,EmptyPage,PageNotAnInteger
import markdown2
from django.views.generic import ListView
from django.db.models import Q
# Create your views here.

def search(request):
	q = request.GET.get('q')
	error_msg = ''
	if not q:
		error_msg = "请输入关键词"
		return render(request,'search.html',{'error_msg':error_msg})
	search_list = Article.objects.filter(Q(title__icontains=q) | Q(content__icontains=q))
	return render(request,'search.html',{'error_msg':error_msg,'search_list':search_list})


def detail(request,id):
	article = Article.objects.get(id=id)
	article.increase_views()
	form = CommentForm()
	comment_list = article.comment_set.all().order_by('-created_time')
	context = {'article':article,'form':form,'comment_list':comment_list}
	return render(request,'detail.html',context=context)

class LifeList(ListView):
	model = Article
	template_name = 'life_list.html'
	context_object_name = 'life_list'
	paginate_by = 5
	def get_queryset(self):		
		life_list = Article.objects.filter(article_cate='life').order_by('-update_time')
		return life_list

	def get_context_data(self, **kwargs):

		context = super().get_context_data(**kwargs)
		paginator = context.get('paginator')
		page = context.get('page_obj')
		is_paginated = context.get('is_paginated')
		pagination_data = self.pagination_data(paginator, page, is_paginated)
		context.update(pagination_data)
		return context

	def pagination_data(self, paginator, page, is_paginated):
		if not is_paginated:
			return {}

		left = []
		right = []
		left_has_more = False
		right_has_more = False
		first = False
		last = False
		page_number = page.number
		total_pages = paginator.num_pages
		page_range = paginator.page_range

		if page_number == 1:
			right = page_range[page_number:page_number + 2]
			if right[-1] < total_pages - 1:
				right_has_more = True
			if right[-1] < total_pages:
				last = True

		elif page_number == total_pages:
			left = page_range[(page_number - 3) if (page_number - 3) > 0 else 0:page_number - 1]
			if left[0] > 2:
				left_has_more = True
			if left[0] > 1:
			 	first = True
		else:
			left = page_range[(page_number - 3) if (page_number - 3) > 0 else 0:page_number - 1]
			right = page_range[page_number:page_number + 2]

			if right[-1] < total_pages - 1:
				right_has_more = True
			if right[-1] < total_pages:
				last = True

			if left[0] > 2:
				left_has_more = True
			if left[0] > 1:
				first = True

		data = {
			'left': left,
			'right': right,
			'left_has_more': left_has_more,
			'right_has_more': right_has_more,
			'first': first,
			'last': last,
        }

		return data

		

class CodeView(ListView):
	model = Article
	template_name = 'code_list.html'
	context_object_name = 'code_list'
	paginate_by = 5
	def get_queryset(self):		
		code_list = Article.objects.filter(article_cate='code').order_by('-update_time')
		return code_list
	def get_context_data(self, **kwargs):

		context = super().get_context_data(**kwargs)
		paginator = context.get('paginator')
		page = context.get('page_obj')
		is_paginated = context.get('is_paginated')
		pagination_data = self.pagination_data(paginator, page, is_paginated)
		context.update(pagination_data)
		return context

	def pagination_data(self, paginator, page, is_paginated):
		if not is_paginated:
			return {}

		left = []
		right = []
		left_has_more = False
		right_has_more = False
		first = False
		last = False
		page_number = page.number
		total_pages = paginator.num_pages
		page_range = paginator.page_range

		if page_number == 1:
			right = page_range[page_number:page_number + 2]
			if right[-1] < total_pages - 1:
				right_has_more = True
			if right[-1] < total_pages:
				last = True

		elif page_number == total_pages:
			left = page_range[(page_number - 3) if (page_number - 3) > 0 else 0:page_number - 1]
			if left[0] > 2:
				left_has_more = True
			if left[0] > 1:
			 	first = True
		else:
			left = page_range[(page_number - 3) if (page_number - 3) > 0 else 0:page_number - 1]
			right = page_range[page_number:page_number + 2]

			if right[-1] < total_pages - 1:
				right_has_more = True
			if right[-1] < total_pages:
				last = True

			if left[0] > 2:
				left_has_more = True
			if left[0] > 1:
				first = True

		data = {
			'left': left,
			'right': right,
			'left_has_more': left_has_more,
			'right_has_more': right_has_more,
			'first': first,
			'last': last,
        }

		return data


class indexView(ListView):
	model = Article
	template_name = 'basemain.html'
	context_object_name = 'blog_list'
	paginate_by = 5
	def get_queryset(self):
		blog_list = Article.objects.all().order_by('-update_time')
		return blog_list

	def get_context_data(self, **kwargs):

		context = super().get_context_data(**kwargs)
		paginator = context.get('paginator')
		page = context.get('page_obj')
		is_paginated = context.get('is_paginated')
		pagination_data = self.pagination_data(paginator, page, is_paginated)
		context.update(pagination_data)
		goodview_list = Article.objects.all().order_by('-views')
		goodview_list = goodview_list[:6]
		context.update({'goodview_list':goodview_list})
		return context

	def pagination_data(self, paginator, page, is_paginated):
		if not is_paginated:
			return {}

		left = []
		right = []
		left_has_more = False
		right_has_more = False
		first = False
		last = False
		page_number = page.number
		total_pages = paginator.num_pages
		page_range = paginator.page_range

		if page_number == 1:
			right = page_range[page_number:page_number + 2]
			if right[-1] < total_pages - 1:
				right_has_more = True
			if right[-1] < total_pages:
				last = True

		elif page_number == total_pages:
			left = page_range[(page_number - 3) if (page_number - 3) > 0 else 0:page_number - 1]
			if left[0] > 2:
				left_has_more = True
			if left[0] > 1:
			 	first = True
		else:
			left = page_range[(page_number - 3) if (page_number - 3) > 0 else 0:page_number - 1]
			right = page_range[page_number:page_number + 2]

			if right[-1] < total_pages - 1:
				right_has_more = True
			if right[-1] < total_pages:
				last = True

			if left[0] > 2:
				left_has_more = True
			if left[0] > 1:
				first = True

		data = {
			'left': left,
			'right': right,
			'left_has_more': left_has_more,
			'right_has_more': right_has_more,
			'first': first,
			'last': last,
        }

		return data


