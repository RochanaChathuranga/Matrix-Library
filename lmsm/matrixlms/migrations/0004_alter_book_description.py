# Generated by Django 3.2.9 on 2021-11-10 13:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('matrixlms', '0003_book_description'),
    ]

    operations = [
        migrations.AlterField(
            model_name='book',
            name='description',
            field=models.CharField(max_length=400, null=True),
        ),
    ]