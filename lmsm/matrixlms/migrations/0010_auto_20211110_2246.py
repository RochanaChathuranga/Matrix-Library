# Generated by Django 3.2.9 on 2021-11-10 17:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('matrixlms', '0009_auto_20211110_2243'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='reservation',
            name='tage',
        ),
        migrations.AddField(
            model_name='book',
            name='tage',
            field=models.ManyToManyField(to='matrixlms.Tag'),
        ),
    ]