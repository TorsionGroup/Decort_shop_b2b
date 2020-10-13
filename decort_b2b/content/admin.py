from django.contrib import admin
from django import forms
from modeltranslation.admin import TranslationAdmin
from ckeditor_uploader.widgets import CKEditorUploadingWidget
from django.utils.safestring import mark_safe
from .models import *


admin.site.site_title = 'Torsion Group B2B'
admin.site.site_header = 'Torsion Group B2B'


class ContentAdminForm(forms.ModelForm):
    full_text_ru = forms.CharField(widget=CKEditorUploadingWidget())
    full_text_uk = forms.CharField(widget=CKEditorUploadingWidget())
    full_text_en = forms.CharField(widget=CKEditorUploadingWidget())

    class Meta:
        model = Content
        fields = '__all__'


@admin.register(Category)
class CategoryAdmin(TranslationAdmin):
    list_display = ('id', 'name', 'comment', 'url')
    list_display_links = ('name',)


@admin.register(Content)
class ContentAdmin(TranslationAdmin):
    list_display = ('id', 'title', 'alias', 'main_image', 'published')
    list_filter = ('category_id',)
    list_display_links = ('title',)
    readonly_fields = ('get_main_image',)
    save_on_top = True
    form = ContentAdminForm

    def get_main_image(self, obj):
        return mark_safe(f'<img src={obj.main_image.url} widht="50" height="60"')

    get_main_image.short_description = 'image'