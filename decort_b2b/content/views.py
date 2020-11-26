from django.conf import settings
from django.shortcuts import render
from django.views.generic import ListView, DetailView
from django.views.generic.base import View
from django.shortcuts import redirect
from django.urls import reverse
from django.db.models import Q, OuterRef, Subquery, Case, When
from django.http import JsonResponse, HttpResponse
from .models import *
from .forms import ReviewForm, RatingForm


class MainView(ListView):
    model = Content
    template_name = 'oscar/content/index.html'


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
    template_name = 'oscar/content/contacts.html'


class AboutusView(ListView):
    model = Content
    queryset = Content.objects.filter(category_id=4)
    context_object_name = 'aboutus_list'
    template_name = 'oscar/content/aboutus.html'


class AddReview(View):
    def post(self, request, pk):
        print(request.POST)
        return redirect('/')


class AddStarRating(View):
    def get_client_ip(self, request):
        x_forwarded_for = request.META.get('HTTP_X_FORWARDED_FOR')
        if x_forwarded_for:
            ip = x_forwarded_for.split(',')[0]
        else:
            ip = request.META.get('REMOTE_ADDR')
        return ip

    def post(self, request):
        form = RatingForm(request.POST)
        if form.is_valid():
            RatingContent.objects.update_or_create(
                ip=self.get_client_ip(request),
                movie_id=int(request.POST.get("content")),
                defaults={'star_id': int(request.POST.get("star"))}
            )
            return HttpResponse(status=201)
        else:
            return HttpResponse(status=400)


class Search(ListView):
    paginate_by = 3

    def get_queryset(self):
        return Content.objects.filter(title__icontains=self.request.GET.get("q"))

    def get_context_data(self, *args, **kwargs):
        context = super().get_context_data(*args, **kwargs)
        context["q"] = f'q={self.request.GET.get("q")}&'
        return context


