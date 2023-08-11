from django.urls import path
from dummy.views import ItemList,DeleteItem
urlpatterns = [
    path('items/', ItemList.as_view(), name='items list'),
    path('delete/', DeleteItem.as_view(), name='delete_item'),


    path('delete/<int:id>/', DeleteItem.as_view(), name='id'),
]