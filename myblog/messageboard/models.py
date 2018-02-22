from django.db import models
from DjangoUeditor.models import UEditorField

class Message_list(models.Model):
	"""docstring for Message_list"""
	name= models.CharField(max_length=20)
	email = models.EmailField(max_length=20)
	content = UEditorField('内容',toolbars="mini", imagePath="static/img/", filePath="static/img/", upload_settings={"imageMaxSize":1204000},
             settings={},)
	create_time = models.DateTimeField(auto_now_add=True)
	
	def __str__(self):
		return self.content[:20]
# Create your models here.
