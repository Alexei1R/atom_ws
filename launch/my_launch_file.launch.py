from launch import LaunchDescription
from launch_ros.actions import Node

def generate_launch_description():
    return LaunchDescription([
        Node(
            package='atom_logic',
            node_executable='atom_core_logic_node',
            node_name='atom_core_logic_node'
        ),
        Node(
            package='atom_communication',
            node_executable='serial_node',
            node_name='serial_node'
        ),
        Node(
            package='atom_communication',
            node_executable='tcp_servernode',
            node_name='tcp_servernode',
        )
    ])
