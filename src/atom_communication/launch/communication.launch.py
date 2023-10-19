import launch
from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument
from launch.conditions import IfCondition
from launch.substitutions import LaunchConfiguration
from launch_ros.actions import Node

def generate_launch_description():
    return LaunchDescription([
        Node(
            package='atom_communication',
            executable='tcp_servernode',
            name='tcp_servernode',
            output='screen',
            condition=IfCondition(LaunchConfiguration('use_tcp_servernode')),
        ),
        # Node(
        #     package='atom_communication',
        #     executable='serial_node',
        #     name='serial_node',
        #     output='screen',
        #     condition=IfCondition(LaunchConfiguration('use_serial_node')),
        # ),
    ])