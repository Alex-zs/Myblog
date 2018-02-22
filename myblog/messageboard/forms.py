from django import forms
from .models import Message_list

class Message(forms.ModelForm):
    class Meta:
        model = Message_list
        fields = ['name','email','content']
