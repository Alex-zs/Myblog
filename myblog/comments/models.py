from django.db import models

# Create your models here.
class Comment(models.Model):
	"""docstring for Comment"""
	name = models.CharField(max_length=20)
	email = models.EmailField(max_length=30)
	text = models.TextField()
	created_time = models.DateTimeField(auto_now_add=True)
	article = models.ForeignKey('blog.Article')

	def __str__(self):
		return self.text[:20]
		