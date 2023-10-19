from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument, LogInfo
from launch.substitutions import LaunchConfiguration
from launch_ros.actions import Node

def generate_launch_description():
    return LaunchDescription([
        Node(
            package='atom_communication',
            node_executable='tcp_servernode',
            node_name='tcp_servernode',
            output='screen',
        ),
        
    ])
