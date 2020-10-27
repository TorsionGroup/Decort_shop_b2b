from django.apps import apps
from django.urls import include, path
from django.contrib import admin
from django.conf import settings
from django.conf.urls.i18n import i18n_patterns
from django.conf.urls.static import static

urlpatterns = [
    path('i18n/', include('django.conf.urls.i18n')),
    path('admin-view/', admin.site.urls),
    path('catalogue/', include(apps.get_app_config('oscar').urls[0])),
    path('', include('content.urls')),

]
