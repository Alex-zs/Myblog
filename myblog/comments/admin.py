from django.contrib import admin
from .models import Comment

class CommentAdmin(admin.ModelAdmin):
	"""docstring for CommentAdmin"""
	list_displat=('name','email','created_time',)


admin.site.register(Comment,CommentAdmin)


# Register your models here.
