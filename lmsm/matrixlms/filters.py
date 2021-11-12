from django.db.models import fields
from django_filters import DateFilter,CharFilter
import django_filters
from . models import *

class bookFilter(django_filters.FilterSet):
    name = CharFilter(field_name='name', lookup_expr='icontains')
    author = CharFilter(field_name='author', lookup_expr='icontains')
    class Meta:
        model = book
        fields = '__all__'
        exclude = ['isbn','description','status','date_added']
