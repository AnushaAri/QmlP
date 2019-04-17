from pybuilder.core import use_plugin, init

use_plugin("python.core")
use_plugin("python.unittest")
use_plugin("python.install_dependencies")
use_plugin("python.flake8")
use_plugin("python.coverage")
use_plugin("python.distutils")
use_plugin("analysis")

name = "PyProject"
default_task = "publish"


@init
def set_properties(project):
    project.build_depends_on('mockito')
    pass
def init_pylint(project):
    project.plugin_depends_on("pylint")
    project.set_property_if_unset("pylint_options", DEFAULT_PYLINT_OPTIONS)
    project.set_property_if_unset("pylint_break_build", DEFAULT_PYLINT_BREAK_BUILD)

