from django.db import models

# Create your models here.

class Tag (models.Model):
   
    name = models.CharField(max_length=200,null=True)
      
    def __str__(self):
        return self.name


class book (models.Model):
    CATEGORY =(
        ('Literary Fiction','Literary Fiction'),
        ('Mystery','Mystery'),
        ('Thriller','Thriller'),
        ('Horror','Horror'),
        ('Historical','Historical'),
        ('Romance','Romance'),
        ('Western','Western'),
        ('Bildungsroman','Bildungsroman'),
        ('Speculative Fiction','Speculative Fiction'),
        ('Science Fiction','Science Fiction'),
        ('Fantasy','Fantasy'),
        ('Dystopian','Dystopian'),
        ('Magical Realism','Magical Realism'),
        ('Realist Literature','Realist Literature')

    )

    STATUS =(   
        ('Available','Available'),
        ('Not Available','Not Available')
    )


    isbn = models.CharField(max_length=200,null=True)
    name = models.CharField(max_length=200,null=True)
    author = models.CharField(max_length=200,null=True)
    category = models.CharField(max_length=200,null=True,choices=CATEGORY)
    date_added = models.DateTimeField(auto_now_add=True,null=True)
    description = models.TextField(null=True)
    #tage = models.ManyToManyField(Tag)
    status = models.CharField(max_length=200,null=True,choices=STATUS)
    #imagename = models.CharField(max_length=200, null=True)
    
    def __str__(self):
        return self.name



class reservation (models.Model):
    reservation_date = models.DateField(auto_now_add=True,null=True)
    closed_date = models.DateField(auto_now_add=True,null=True)
    #book_id = models.ForeignKey(null=True, on_delete=models.SET_NULL, to=id())
    #user_id = models.ForeignKey(null=True, on_delete=models.SET_NULL, to=id())

    def __str__(self):
        return self.name

     
    

    

