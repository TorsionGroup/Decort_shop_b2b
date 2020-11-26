from oscar.apps.shipping import repository
from . import methods


class Repository(repository.Repository):
    methods = [
        methods.SelfPickup(),
        methods.OurTransport(),
        methods.Express(),
        methods.Courier(),
        methods.Dropshipping(),
    ]

