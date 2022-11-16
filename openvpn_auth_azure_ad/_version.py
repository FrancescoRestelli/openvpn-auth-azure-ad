import sys
if sys.version_info >= (3, 8):
    from importlib import version, PackageNotFoundError
else:
    from importlib_metadata import version, PackageNotFoundError

try:
    __version__ = version("openvpn-auth-azure-ad")
except PackageNotFoundError:
    # package is not installed
    __version__ = "0.0.0dev0"
