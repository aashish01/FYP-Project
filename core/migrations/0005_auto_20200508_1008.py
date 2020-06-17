# Generated by Django 3.0.4 on 2020-05-08 04:23

from django.conf import settings
import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('core', '0004_auto_20200507_2139'),
    ]

    operations = [
        migrations.AddField(
            model_name='rating',
            name='stars',
            field=models.IntegerField(default=-1.5, validators=[django.core.validators.MinValueValidator(1), django.core.validators.MaxValueValidator(5)]),
            preserve_default=False,
        ),
        migrations.AlterUniqueTogether(
            name='rating',
            unique_together={('user', 'item')},
        ),
        migrations.AlterIndexTogether(
            name='rating',
            index_together={('user', 'item')},
        ),
        migrations.RemoveField(
            model_name='rating',
            name='rates',
        ),
    ]
