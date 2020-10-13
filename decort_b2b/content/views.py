from django.shortcuts import render
from django.views.generic import ListView, DetailView
from django.urls import reverse
from .models import *


class NewsView(ListView):
    model = Content
    queryset = Content.objects.filter(category_id=2)
    context_object_name = 'news_list'
    paginate_by = 10
    template_name = 'oscar/content/news/news_list.html'


class NewsDetailView(DetailView):
    model = Content
    slug_field = 'alias'
    context_object_name = 'news_detail'
    template_name = 'oscar/content/news/news_detail.html'


class ContactsView(ListView):
    model = Content
    queryset = Content.objects.filter(category_id=5)
    context_object_name = 'contacts_list'
    template_name = 'oscar/content/contacts/contacts.html'


class AboutusView(ListView):
    model = Content
    queryset = Content.objects.filter(category_id=4)
    context_object_name = 'aboutus_list'
    template_name = 'oscar/content/aboutus/aboutus.html'