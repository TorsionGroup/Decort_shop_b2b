# Generated by Django 3.0.10 on 2020-10-29 09:10

import datetime
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=300)),
                ('comment', models.CharField(blank=True, max_length=500, null=True)),
                ('url', models.SlugField(max_length=250, unique=True)),
            ],
            options={
                'verbose_name': 'Category',
                'verbose_name_plural': 'Categories',
            },
        ),
        migrations.CreateModel(
            name='Content',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('alias', models.SlugField(max_length=300, unique=True)),
                ('created_date', models.DateTimeField(default=datetime.datetime.today)),
                ('updated_date', models.DateTimeField(default=datetime.datetime.today)),
                ('published', models.BooleanField(default=0)),
                ('main_image', models.ImageField(blank=True, null=True, upload_to='content/main_image/')),
                ('title', models.CharField(max_length=500, null=True)),
                ('intro_text', models.CharField(max_length=1000, null=True)),
                ('full_text', models.TextField(null=True)),
                ('meta_tag_title', models.CharField(blank=True, max_length=500, null=True)),
                ('meta_tag_description', models.CharField(blank=True, max_length=500, null=True)),
                ('meta_tag_keyword', models.CharField(blank=True, max_length=500, null=True)),
                ('geo', models.CharField(blank=True, max_length=250, null=True)),
                ('category_id', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='content_category', to='content.Category')),
            ],
            options={
                'verbose_name': 'Content',
                'verbose_name_plural': 'Contents',
            },
        ),
        migrations.CreateModel(
            name='RatingStar',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('value', models.PositiveSmallIntegerField(default=0)),
            ],
            options={
                'verbose_name': 'RatingStar',
                'verbose_name_plural': 'RatingStars',
                'ordering': ['-value'],
            },
        ),
        migrations.CreateModel(
            name='ReviewContent',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('email', models.EmailField(max_length=254)),
                ('name', models.CharField(max_length=250)),
                ('text', models.TextField(max_length=5000)),
                ('content', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='content.Content')),
                ('parent', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='content.ReviewContent')),
            ],
            options={
                'verbose_name': 'ReviewContent',
                'verbose_name_plural': 'ReviewContents',
            },
        ),
        migrations.CreateModel(
            name='RatingContent',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ip', models.CharField(max_length=50)),
                ('content', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='content.Content')),
                ('star', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='content.RatingStar')),
            ],
            options={
                'verbose_name': 'RatingContent',
                'verbose_name_plural': 'RatingContents',
            },
        ),
        migrations.CreateModel(
            name='ContentImage',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(default='ContentImage', max_length=250)),
                ('description', models.TextField(blank=True, null=True)),
                ('image', models.ImageField(blank=True, null=True, upload_to='content/content_image/')),
                ('content_id', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='content.Content')),
            ],
            options={
                'verbose_name': 'ContentImage',
                'verbose_name_plural': 'ContentImages',
            },
        ),
    ]