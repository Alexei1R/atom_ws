import launch
from launch import LaunchDescription
from launch.conditions import IfCondition
from launch.substitutions import LaunchConfiguration
from launch.launch_description_sources import PythonLaunchDescriptionSource
from launch.actions import DeclareLaunchArgument, IncludeLaunchDescription
import launch.actions
import launch.substitutions
import launch_ros.actions

def generate_launch_description():
    return LaunchDescription([
        # Declare launch arguments
        DeclareLaunchArgument(
            'use_atom_core_logic_node',
            default_value='true',
            description='Whether to launch the atom_core_logic_node'
        ),
        DeclareLaunchArgument(
            'include_communication_launch',
            default_value='true',
            description='Whether to include the communication.launch.py file'
        ),
        DeclareLaunchArgument(
            'atom_communication_launch_dir',
            default_value='src/atom_communication/launch',
            description='Path to the atom_communication package'
        ),
        
        # Launch the atom_core_logic_node based on use_atom_core_logic_node argument
        launch_ros.actions.Node(
            package='atom_logic',
            executable='atom_core_logic_node',
            name='atom_core_logic_node',
            output='screen',
            condition=IfCondition(LaunchConfiguration('use_atom_core_logic_node')),
        ),

        # Include the communication.launch.py file from atom_communication package based on include_communication_launch argument
        IncludeLaunchDescription(
            PythonLaunchDescriptionSource([LaunchConfiguration('atom_communication_launch_dir'), 'communication.launch.py']),
            condition=IfCondition(LaunchConfiguration('include_communication_launch')),
        ),
    ])
