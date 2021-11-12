from decimal import Context
from django.shortcuts import render, redirect
from django.db import connection
from django.contrib.auth.forms import UserCreationForm
from django.views.decorators.csrf import csrf_exempt
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth.decorators import login_required
from .filters import bookFilter
from .models import *
from .forms import CreateUserForm
from matrixlms.models import *
from datetime import date



# Create your views here.
def my_custom_sql(self):
  with connection.cursor() as cursor:
    cursor.execute("SELECT MNIC FROM member WHERE Email = %s", [self.Email])
    row = cursor.fetchone()
  return row



@csrf_exempt
def index(request):
  return render (request,'matrixlms/index.html')



def MemberRegisterPage(request):
  
    form = CreateUserForm()

    if request.method == "POST":
      form = CreateUserForm(request.POST)
      if form.is_valid():
        form.save()
        user = form.cleaned_data.get('username')
        messages.success(request,'Account was created for '+user)
        return redirect('LoginPage.html')

    context = {'form':form}
    return render(request, 'matrixlms/MemberRegisterPage.html',context)





@csrf_exempt
def LoginPage(request):
  
    if request.method == "POST":
      username = request.POST.get('username')
      password = request.POST.get('password')

      user = authenticate(request, username = username, password = password )

      if user is not None:
        with connection.cursor() as cursor:
          cursor.execute("SELECT id FROM auth_user WHERE username = %s", [username])
          userid = cursor.fetchone()
        request.session['userid'] = userid
        login(request,user)
        return redirect ("Home")

      else:
        messages.info(request, 'Username or Password is incorrect')
      



    context ={}
    return render(request, 'matrixlms/LoginPage.html',context)




def Logout(request):
  logout(request)
  try:
    del request.session['email']
  except:
    pass
  return render(request, 'matrixlms/index.html', {'alert_flag': True})
 

def home (request):
  return render(request,"matrixlms/index.html")

def ReserveBook(request):
  #today = date.today()
  #isbn = request.POST.get('isbn')
  #userid = request.POST.get('userid')
  #with connection.cursor() as cursor:
    #cursor.execute("INSERT INTO `matrixlms_reservation` (`id`, `reservation_date`, `closed_date`, `book_id`, `user_id`) VALUES (NULL, '2021-11-03', '2021-11-17', '8', '18') ")
    #row=cursor.fetchone

  #  sql = "INSERT INTO reservation (id, reservation_date, closed_date, book_id, user_id) VALUES (%s, %s, %s, %s, %s)"
  #  val = (" ", '2021-11-03', '2021-11-17', "8", "18")
  #  cursor.execute(sql, val)
  #return render (request,'matrixlms/MemberUser.html')
  p = reservation(id=' ', reservation_date='2323-01-01', closed_date='1212-11-11', book_id='8', user_id='18');
  p.save()
  return render (request,'matrixlms/MemberUser.html')

@ login_required(login_url='login')
def MemberUser (request):
  #books = book.objects.all()
  books = book.objects.filter(status='Available')

  #book = book.objects.get(id=pk_test)
  
  myFilter = bookFilter(request.GET,queryset=books)
  books=myFilter.qs
  context ={'books':books,'myFilter':myFilter}
  return render (request,'matrixlms/MemberUser.html',context)