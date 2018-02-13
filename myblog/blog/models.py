from django.db import models
from DjangoUeditor.models import UEditorField

class Article(models.Model):
	study = 'code'
	life = 'life'
	category = (
		(study,'代码记录'),
		(life,'生活感悟'),
		)
	title = models.CharField('标题',max_length=256)
	content = UEditorField('内容',toolbars="full", imagePath="static/img/", filePath="", upload_settings={"imageMaxSize":1204000},
             settings={},)
	abstract = models.CharField('摘要',max_length=256,null=True,blank=True)
	article_cate = models.CharField('类别',max_length=5,choices=category,default=study)
	pub_date = models.DateTimeField('发表时间', auto_now_add=True, editable = True)
	update_time = models.DateTimeField('更新时间',auto_now=True, null=True)

	def __str__(self):
		return self.title



		
# Create your models here.