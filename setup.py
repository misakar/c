# encoding: utf-8

"""
    simple
    ~~~~

	simple clone github repo
"""
from setuptools import setup, find_packages


setup(
    name='simple',
    version='1.0',
    packages=find_packages(),
    url='https://github.com/neo1218/simple_clone',
    license='MIT',
    author='neo1218',
    author_email='neo1218@yeah.net',
    description='simple clone github repo',
    long_description=__doc__,
    # if you would be using a package instead use packages instead
    # of py_modules:
    # packages=['flask_sqlite3'],
    zip_safe=False,
    include_package_data=True,
    platforms='any',
    install_requires=[
        'click',
		'svn'
    ],
    # /mana/mana.py/click::mana
    entry_points='''
        [console_scripts]
		simple=simple:clone
    ''',
    classifiers=[
        'Environment :: Web Environment',
        'Intended Audience :: Developers',
        'License :: OSI Approved :: MIT License',
        'Operating System :: OS Independent',
        'Programming Language :: Python',
        'Topic :: Internet :: WWW/HTTP :: Dynamic Content',
        'Topic :: Software Development :: Libraries :: Python Modules'
    ]
)
