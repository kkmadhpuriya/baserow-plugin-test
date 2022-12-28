import logging
from baserow.core.registries import Plugin
from django.urls import path, include

from .api import urls as api_urls

logger = logging.getLogger(__name__)


class PluginNamePlugin(Plugin):
    type = "test"

    def get_api_urls(self):
        return [
            path(
                "test/",
                include(api_urls, namespace=self.type),
            ),
        ]
