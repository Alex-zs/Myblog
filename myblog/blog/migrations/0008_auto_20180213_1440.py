# -*- coding: utf-8 -*-
# Generated by Django 1.11.9 on 2018-02-13 14:40
from __future__ import unicode_literals

import DjangoUeditor.models
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0007_auto_20180212_1418'),
    ]

    operations = [
        migrations.AddField(
            model_name='article',
            name='abstract',
            field=models.CharField(blank=True, max_length=256, null=True, verbose_name='摘要'),
        ),
        migrations.AlterField(
            model_name='article',
            name='content',
            field=DjangoUeditor.models.UEditorField(verbose_name='内容'),
        ),
    ]
