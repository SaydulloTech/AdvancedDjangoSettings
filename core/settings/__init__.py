from .base import *  # noqa


DEVELOPMENT_MODE = True

if DEVELOPMENT_MODE:
    from .local import *  # noqa
else:
    from .production import *  # noqa
