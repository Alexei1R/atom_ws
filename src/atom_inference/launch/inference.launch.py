import launch
from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument
from launch.conditions import IfCondition
from launch.substitutions import LaunchConfiguration
from launch_ros.actions import Node

def generate_launch_description():
    return LaunchDescription([
        Node(
            package='atom_inference',
            executable='inference_node',
            name='inference_node',
            output='screen',
            condition=IfCondition(LaunchConfiguration('use_inference_node')),
        ),
        
    ])