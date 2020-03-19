#!"C:\Users\Parker Hanegan\AppData\Local\Programs\Python\Python38-32\python3.exe"
# EASY-INSTALL-ENTRY-SCRIPT: 'decompyle3==3.3.2','console_scripts','decompyle3'
__requires__ = 'decompyle3==3.3.2'
import re
import sys
from pkg_resources import load_entry_point

if __name__ == '__main__':
    sys.argv[0] = re.sub(r'(-script\.pyw?|\.exe)?$', '', sys.argv[0])
    sys.exit(
        load_entry_point('decompyle3==3.3.2', 'console_scripts', 'decompyle3')()
    )
