from django.apps import apps
from django.urls import include, path
from . import views

urlpatterns = [
    path('', views.MainView.as_view(), name='main'),
    path('news/', views.NewsView.as_view(), name='news'),
    path('news/<slug:slug>/', views.NewsDetailView.as_view(), name='news_detail'),
    path('aboutus/', views.AboutusView.as_view(), name='aboutus'),
    path('contacts/', views.ContactsView.as_view(), name='contacts'),
    path('review/<int:pk>/', views.AddReview.as_view(), name='add_review'),
    path('add-rating/', views.AddStarRating.as_view(), name='add_rating'),
    path('search/', views.Search.as_view(), name='search'),

]
