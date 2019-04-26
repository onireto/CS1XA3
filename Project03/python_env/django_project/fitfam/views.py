from django.shortcuts import render
from models import *
# Create your views here.

def register(request):
	if request =="POST":
		user = Person.objects.create(uname=request.POST['uname'], fname=request.POST['fname'], lname=request.POST['lname'], pwd=request.POST['pwd'], date =request.POST['date'])
		user.save()
		request.session['id']=user.id


def login(request):
	if(Person.objects.filter(uname=request.POST['lunmae']).exists()):
		user = Person.objects.filter(uname=request.POST['luname'])[0]
		if(request.POST['psw'] == user.pwd):
			request.session['id'] = user.id

def success(user):
	if(Weight.objects.filter(user.uname).exists()):
		weight = Weight(uname = user.uname)
		
