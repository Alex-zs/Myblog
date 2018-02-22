from django.shortcuts import render,get_object_or_404,redirect
from .models import Message_list
from blog.models import Article
from .forms import Message

def Messageboard(request):
	message_list = Message_list.objects.all().order_by('-create_time')
	if request.method == 'POST':
		form = Message(request.POST)
		form.save()
	else:
		form = Message()

	context = {'message_list':message_list,'form':form}
	goodview_list = Article.objects.all().order_by('-views')
	goodview_list = goodview_list[:6]
	context.update({'goodview_list':goodview_list})
	return render(request,'messageboard.html',context=context)

# Create your views here.
