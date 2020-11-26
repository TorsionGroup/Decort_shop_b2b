from django import template
from content.models import *


register = template.Library()


@register.inclusion_tag("oscar/content/news/news_sidebar.html")
def get_last_news(count=5):
    news = Content.objects.order_by("id")[:count]
    return {"last_news": news}

