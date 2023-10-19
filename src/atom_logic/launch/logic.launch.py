import launch
from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument
from launch.conditions import IfCondition
from launch.substitutions import LaunchConfiguration
from launch_ros.actions import Node
import launch
import launch.actions
import launch.substitutions
import launch_ros.actions


def generate_launch_description():
    return LaunchDescription([
        Node(
            package='atom_logic',
            node_executable='atom_core_logic_node',  # Specify the correct executable name
            name='atom_core_logic_node',
            output='screen',
            condition=IfCondition(LaunchConfiguration('atom_core_logic_node')),
        ),

        # # Include the communication.launch.py file from atom_communication package
        # launch.actions.IncludeLaunchDescription(
        #     launch.launch_description_sources.PythonLaunchDescriptionSource(
        #         launch_file_dir=launch.substitutions.LaunchConfiguration('atom_communication_launch_dir'),
        #         launch_file_name='communication.launch.py'
        #     ),
        #     condition=IfCondition(LaunchConfiguration('include_communication_launch')),
        # ),
        
    ])





