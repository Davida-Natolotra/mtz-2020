"""
WSGI config for DJ1 project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/3.0/howto/deployment/wsgi/
"""

import os, sys
sys.path.append('C:/Users/david/Bitnami Django Stack projects/DJ1')
os.environ.setdefault("PYTHON_EGG_CACHE", "C:/Users/david/Bitnami Django Stack projects/DJ1/egg_cache")
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'DJ1.settings')

from django.core.wsgi import get_wsgi_application
application = get_wsgi_application()
