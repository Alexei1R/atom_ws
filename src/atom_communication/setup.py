from setuptools import find_packages, setup

package_name = 'atom_communication'

setup(
    name=package_name,
    version='0.0.0',
    packages=find_packages(exclude=['test']),
    data_files=[
        ('share/ament_index/resource_index/packages',
            ['resource/' + package_name]),
        ('share/' + package_name, ['package.xml']),
    ],
    install_requires=['setuptools'],
    zip_safe=True,
    maintainer='toor',
    maintainer_email='rusu.alexei.2002@gmail.com',
    description='TODO: Package description',
    license='TODO: License declaration',
    tests_require=['pytest'],
    entry_points={
        'console_scripts': [
            'tcp_servernode = atom_communication.tcp_servernode:main',
            'serial_node = atom_communication.serial_node:main',
        ],
    },
)
