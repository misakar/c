# coding: utf-8

"""
	simple clone

"""

import click
import os


def git_to_svn(repo_url):
	"""change github url to svn url"""
	git_to_svn = repo_url.split('/')
	git_to_svn[5] = "trunk"
	del git_to_svn[6]

	svn_url = '/'.join(git_to_svn)
	return svn_url


@click.command()
@click.argument('repo_url')
def clone(repo_url):
	click.echo("simple clone this floder ----->")

	svn_url = git_to_svn(repo_url)
	os.system("svn checkout %s" % svn_url)

	click.echo("clone done ! but change it to svn...")


