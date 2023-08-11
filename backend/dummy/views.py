from rest_framework import generics
from .models import Item
from .serializers import ItemSerializer
from rest_framework.response import Response
from rest_framework import status


class ItemList(generics.ListAPIView):
    queryset = Item.objects.all()
    serializer_class = ItemSerializer

class DeleteItem(generics.DestroyAPIView):
    queryset = Item.objects.all()
    serializer_class = ItemSerializer

    def delete(self, request, *args, **kwargs):
        instance = self.get_object()

        instance.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)