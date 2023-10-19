from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument, LogInfo
from launch.substitutions import LaunchConfiguration
from launch_ros.actions import Node

from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument, LogInfo, IncludeLaunchDescription
from launch.substitutions import LaunchConfiguration
from launch.launch_description_sources import PythonLaunchDescriptionSource
from ament_index_python.packages import get_package_share_directory


def generate_launch_description():
    return LaunchDescription([
        Node(
            package='atom_logic',
            node_executable='atom_core_logic_node',
            node_name='atom_core_logic_node',
            output='screen',
        ),
        Node(
            package='atom_communication',
            node_executable='tcp_servernode',
            node_name='tcp_servernode',
            output='screen',
        ),
        # # communication.launch.py
        #  IncludeLaunchDescription(
        #     PythonLaunchDescriptionSource([get_package_share_directory('atom_communication'), '/launch/communication.launch.py']),
        # ),
        
    ])
