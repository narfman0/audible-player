from setuptools import setup, find_packages

setup(
    name="audible_player",
    version="0.0.1",
    description=("App to run an audible web player within an app"),
    classifiers=[
        "Development Status :: 4 - Beta",
        "License :: OSI Approved :: GNU General Public License v3 (GPLv3)",
        "Operating System :: OS Independent",
        "Programming Language :: Python",
        "Topic :: Software Development :: Libraries :: Python Modules",
    ],
    keywords="audible_player",
    author="narfman0",
    author_email="narfman0@blastedstudios.com",
    license="LICENSE",
    packages=find_packages(),
    include_package_data=True,
    zip_safe=True,
    install_requires=["pywebview"],
)
