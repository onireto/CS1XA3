from django.db import models

class Person(models.Model):
	uname = models.CharField(max_length=30, primary_key=True)
	fname = models.CharField(max_length=30)
	lname = models.CharField(max_length=30)
	pwd = models.CharField(max_length=30)
	created_at = models.DateTimeField(auto_now_add =True)

class  Weight(models.Model):
	date = models.DateTimeField(auto_now=True)
	uname = models.ForeignKey()
	weight = Integer()

# Create your models here.
