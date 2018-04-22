from django.contrib import admin
from .models import Article

admin.site.site_header = '陈开拓个人博客管理'
admin.site.site_title = '后台管理'

class ArticleAdmin(admin.ModelAdmin):
	list_display = ('title','pub_date','update_time',)
	fieldsets = (
		[u'',{
		'fields':('title','content','article_cate',)
		}],
		)


		
admin.site.register(Article,ArticleAdmin)


# Register your models here.
