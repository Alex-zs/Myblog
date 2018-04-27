"""myblog URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""

from django.conf.urls import url, include
from django.contrib import admin
from main import views as main_views
from django.conf.urls.static import static
from django.conf import settings
from messageboard import views as messageboard_views
import django.views.static
from myblog.settings import BASE_DIR
import os
from django.conf.urls import handler404, handler500

urlpatterns = [
    url(r'^photolist/$',main_views.photoGroup,name='photoGroup'),
    url(r'^search/$',main_views.search,name='search'),
    url(r'^lifelist/$',main_views.LifeList.as_view(),name='lifelist'),
    url(r'^codelist/$',main_views.CodeView.as_view(),name='codelist'),
    url(r'^detail/(?P<id>[0-9]+)/$',main_views.detail,name='detail'),
    url(r'^ckt/admin/', admin.site.urls),
    url(r'^$',main_views.indexView.as_view(),name='index'),
    url(r'^ueditor/',include('DjangoUeditor.urls' )),
    url(r'',include('comments.urls')),
    url(r'^messageboard/$',messageboard_views.Messageboard,name='message'),
    url(r'static/(?P<path>.*)', django.views.static.serve, {'document_root': os.path.join(BASE_DIR, 'static')}),
    url(r'^accounts/', include('users.urls')),
    ]



