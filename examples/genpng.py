#!/usr/bin/env python

import sys
from glob import glob
from os.path import abspath, dirname, join, samefile

from PIL import Image
from pygments import highlight
from pygments.formatters import ImageFormatter
from pygments.lexers import get_lexer_for_filename


CURDIR = dirname(abspath(__file__))


def generate(inpath, outpath=None, style='autumn'):
    outpath = outpath or inpath.rsplit('.')[0] + '.png'
    with open(inpath) as infile:
        with open(outpath, 'w') as outfile:
            lexer = get_lexer_for_filename(inpath)
            formatter = ImageFormatter(style=style, line_numbers=False,
                                       font_size=42,
                                       font_name='dejavu sans mono')
            highlight(infile.read(), lexer, formatter, outfile)
    resize(outpath)
    return outpath

def resize(path, width=800):
    img = Image.open(path)
    ratio = float(img.size[0]) / img.size[1]
    height = int(round(width/ratio))
    img = img.resize((width, height), Image.ANTIALIAS)
    img.save(path)

def generate_all():
    for path in glob(join(CURDIR, '*.robot')) + glob(join(CURDIR, '*.py')):
        if not samefile(path, __file__):
            print generate(path)


if __name__ == '__main__':
    paths = sys.argv[1:]
    if paths:
        for path in paths:
            print generate(path)
    else:
        generate_all()
