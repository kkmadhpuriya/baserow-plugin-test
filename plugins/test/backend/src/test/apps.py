from baserow.core.registries import plugin_registry
from django.apps import AppConfig


class PluginNameConfig(AppConfig):
    name = "test"

    def ready(self):
        from .plugins import PluginNamePlugin

        plugin_registry.register(PluginNamePlugin())
