from decimal import Decimal as D
from django.utils.translation import ugettext_lazy as _
from oscar.apps.shipping import methods


class SelfPickup(methods.Free):
    code = 'self-pickup'
    name = _('Self pickup')


class OurTransport(methods.Free):
    code = 'our-transport'
    name = _('Our transport')


class Express(methods.Free):
    code = 'express'
    name = _('Express')


class Courier(methods.FixedPrice):
    code = 'courier'
    name = _('Courier shipping')

    charge_excl_tax = D('0')
    charge_incl_tax = D('0')


class Dropshipping(methods.Free):
    code = 'dropshipping'
    name = _('Dropshipping')