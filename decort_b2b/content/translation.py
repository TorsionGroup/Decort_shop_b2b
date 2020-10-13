from modeltranslation.translator import register, TranslationOptions
from .models import *


@register(Category)
class CategoryTranslationOptions(TranslationOptions):
    fields = ('name', 'comment')


@register(Content)
class ContentTypeMethodTranslationOptions(TranslationOptions):
    fields = ('title', 'intro_text', 'full_text', 'meta_tag_title', 'meta_tag_description', 'meta_tag_keyword')