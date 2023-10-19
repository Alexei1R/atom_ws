from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument, LogInfo
from launch.substitutions import LaunchConfiguration
from launch_ros.actions import Node

def generate_launch_description():
    return LaunchDescription([
        DeclareLaunchArgument('param_file', description='Full path to the parameter file to load'),
        Node(
            package='atom_logic',
            node_executable='atom_core_logic_node',
            node_name='atom_core_logic_node',
            output='screen',
        ),
        
    ])
