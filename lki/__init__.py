import os
import re

import fire

from lki.config import LKIConfig

__version__ = '0.0.3'
__all__ = [
    'LKI',
    'LKIComplain',
]

REGEX_GIT_URLS = (
    re.compile(r'^git@([^:]+):(.*?)(.git)?$'),
    re.compile(r'^http[s]?://([^/]+)/(.*?)(.git)?$'),
)


class LKIComplain(Exception):
    """ lki is complaining about something """


class LKI:
    """ lki is omnipotent! """

    def __init__(self):
        self._config = LKIConfig()

    def clone(self, url: str):
        """ lki will clone a repo at a proper place.

        Examples:
            lki clone git@github.com:zaihui/hutils.git
        Equals to:
            git clone -o o git@github.com:zaihui/hutils.git {workspace}/github/zaihui-hutils

        """
        if not url.startswith('git@') and not url.startswith('http'):
            url = f'https://{url}'
        match = next((m for m in (e.search(url) for e in REGEX_GIT_URLS) if m), None)
        if not match:
            raise LKIComplain(f'lki can not understand git url: {url}')
        domain, project, _ = match.groups()  # type: str
        slug_domain = domain.split('.', 1)[0]
        slug_project = project.replace('/', '-')
        workspace = self._config.get('workspace', '.')
        path = os.path.join(workspace, slug_domain, slug_project)
        os.system(f'git clone -o o {url} {path}')
        for key, value in self._config.get(domain, {}).items():
            os.system(f'cd {path} && git config {key} {value}')

    def set_workspace(self, path: str):
        """ set your workspace, where lki clones repositories into """
        if not os.path.isdir(path):
            raise LKIComplain(f'lki thinks this is not a directory: {path}')
        self._config['workspace'] = path

    def set_git_config(self, domain: str, **kwargs: str):
        """ set your domain specific configurations. user.name/user.email for example """
        domain_config = self._config.get(domain, {})
        domain_config.update(**kwargs)
        self._config[domain] = domain_config


def entry():
    fire.Fire(LKI)


if __name__ == '__main__':
    entry()
