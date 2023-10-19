from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument, LogInfo
from launch.substitutions import LaunchConfiguration
from launch_ros.actions import Node

def generate_launch_description():
    return LaunchDescription([
        DeclareLaunchArgument('param_file', description='Full path to the parameter file to load'),
        Node(
            package='atom_logic',
            executable='atom_core_logic_node',
            name='atom_core_logic_node',
            output='screen',
            parameters=[LaunchConfiguration('param_file')],
        ),
        LogInfo(
            condition=LaunchConfiguration('param_file') != '',
            msg="Loading parameters from file: [{}].".format(LaunchConfiguration('param_file'))
        )
    ])
