from django.contrib import admin
from django import forms
from .models import *


admin.site.site_title = 'Torsion Group B2B'
admin.site.site_header = 'Torsion Group B2B'

admin.site.register(Category)
admin.site.register(Content)
