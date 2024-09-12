#!/usr/bin/env python

#⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
#⠀⠀⠀⠀⢰⣦⡀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⢀⣴⣦⠀⠀⠀⠀
#⠀⠀⠀⠀⣿⣿⣿⣦⡀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣆⠀⠀⢀⣴⣿⣿⣿⠀⠀⠀⠀,ggggggggggg,                               ,gggg,
#⠀⠀⠀⠀⣿⣿⣿⣿⣷⡄⠘⣿⣿⣿⣿⣿⣿⣿⡿⠀⣴⣿⣿⣿⣿⣿⠀⠀⠀⠀dP"""88""""""Y8,      ,dPYb,                d8" "8I               I8
#⠀⢸⣦⡀⠙⢿⣿⣿⣿⣿⠆⠈⠛⣋⣉⣉⡛⠛⠀⢾⣿⣿⣿⣿⡿⠟⢀⣤⡆⠀Yb,  88      \`8b      IP'\`Yb                88  ,dP               I8
#⠀⢸⣿⣿⣷⣄⠙⢿⠟⢁⣴⣾⣿⠿⠛⠻⣿⣿⣦⣄⠙⢿⡿⠋⣀⣴⣿⣿⡇⠀ \`"  88      ,8P      I8  8I             8888888P\"             88888888
#⠀⢸⣿⣿⣿⣿⣷⣄⠐⢿⣿⠟⢁⣴⣾⣦⡀⠙⢿⣿⡷⠀⣠⣾⣿⣿⣿⣿⡇⠀     88aaaad8P\"       I8  8\'                88                    I8
#⠀⢸⣿⣿⣿⣿⣿⣿⣦⡀⠁⣴⣿⣿⣿⣿⣿⣦⡈⠋⣠⣾⣿⣿⣿⣿⣿⣿⠃⠀     88""""",gggg,gg  I8 dP   ,ggg,         88          ,ggggg,   I8   gg      gg    ,g,
#⠀⠈⣿⣿⣿⣿⣿⣿⡟⢀⣾⣿⣿⣿⣿⣿⣿⣿⣷⡀⢻⣿⣿⣿⣿⣿⣿⡏⠀⠀     88    dP"  "Y8I  I8dP   i8" "8i   ,aa,_88         dP"  "Y8gggI8   I8      8I   ,8'8,
#⠀⠀⠸⣿⣿⣿⣿⣿⠁⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠈⣿⣿⣿⣿⣿⡟⠀⠀⠀     88   i8'    ,8I  I8P    I8, ,8I  dP" "88P        i8'    ,8I ,I8,  I8,    ,8I  ,8'  Yb
#⠀⠀⠀⠹⣿⣿⣿⣿⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⣿⣿⡟⠁⠀⠀⠀     88  ,d8,   ,d8b,,d8b,_  \`YbadP'  Yb,_,d88b,,_   ,d8,   ,d8',d88b,,d8b,  ,d8b,,8'_   8)
#⠀⠀⠀⠀⠈⠻⣿⣿⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣿⣿⡿⠋⠀⠀⠀⠀⠀     88  P"Y8888P"\`Y88P'"Y88888P"Y888  "Y8P"  "Y88888P"Y8888P"  8P""Y88P'"Y88P"\`Y8P' "YY8P8P
#⠀⠀⠀⠀⠀⠀⠈⠛⠧⠘⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠼⠋⠁⠀⠀⠀⠀⠀⠀⠀
#⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠛⠛⠛⠛⠛⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
#

"""
Python Script to Generate C# Classes from Protobuf Files
9/12/24
"""

#todo: use versions functional

import os
import stat
import subprocess
import sys
from pathlib import Path
import argparse
import platform
import urllib.request
import zipfile
import tarfile
from typing import Optional
from shutil import which


INFO_COLOR = "\033[94m"
WARN_COLOR = "\033[93m"
ERROR_COLOR = "\033[91m"
RESET_COLOR = "\033[0m"

def print_info(message: str) -> None:
    print(f"{INFO_COLOR}[INFO]{RESET_COLOR} {message}")

def print_warn(message: str) -> None:
    print(f"{WARN_COLOR}[WARN]{RESET_COLOR} {message}")

def print_error(message: str) -> None:
    print(f"{ERROR_COLOR}[ERROR]{RESET_COLOR} {message}")


def download_protoc(version: str = "28.0") -> str:
    """Download the protoc compiler based on the operating system.

    Args:
        version: The version of the protoc compiler to download.

    Returns:
        The path to the extracted protoc executable.
    """
    os_name = platform.system()

    target_dir = os.path.join(os.getcwd(), "proto_generator")
    os.makedirs(target_dir, exist_ok=True)


    if os_name == "Windows":
        protoc_url = f"https://github.com/protocolbuffers/protobuf/releases/download/v{version}/protoc-{version}-win64.zip"
        file_name = f"protoc-{version}-win64.zip"
    elif os_name == "Linux":
        protoc_url = f"https://github.com/protocolbuffers/protobuf/releases/download/v{version}/protoc-{version}-linux-x86_64.zip"
        file_name = f"protoc-{version}-linux-x86_64.zip"
    elif os_name == "Darwin":
        protoc_url = f"https://github.com/protocolbuffers/protobuf/releases/download/v{version}/protoc-{version}-osx-x86_64.zip"
        file_name = f"protoc-{version}-osx-x86_64.zip"
    else:
        print_error("Unsupported OS. Please install protoc manually.")
        sys.exit(1)

    print_info(f"Downloading protoc from {protoc_url}...")
    urllib.request.urlretrieve(protoc_url, file_name)

    print_info("Extracting protoc...")

    try:
        with (zipfile.ZipFile(file_name, 'r')) as ref:
            ref.extractall(target_dir)
            print_info("protoc downloaded and extracted.")

    except (zipfile.BadZipFile, tarfile.ReadError) as e:
        raise RuntimeError(f"Failed to extract protoc compiler: {e}")

    protoc_path = os.path.join(target_dir, "bin", "protoc")

    os.remove(file_name)

    if os_name != "Windows" and os.path.exists(protoc_path):
        os.chmod(protoc_path, os.stat(protoc_path).st_mode | stat.S_IEXEC)

    if not os.path.exists(protoc_path):
        raise RuntimeError("Could not find the extracted protoc compiler.")

    return protoc_path

def check_tool_installed(tool_name: str, tool_path: Optional[str] = None, validate_installation: bool = True) -> str:
    """Check if required tool is installed, or download it if not found.

    Args:
        tool_path: Optional path to the tool.

    Returns:
        The path to the tool.
    """
    if tool_path:
        if not os.path.exists(tool_path):
            raise RuntimeError(f"Provided {tool_name} path does not exist: {tool_path}")
        print_info(f"Using provided {tool_name} path: {tool_path}")
        return tool_path

    tool_path = which(tool_name)
    if tool_path:
        print_info(f"Found {tool_name} in PATH: {tool_path}")
        return tool_path

    print_warn(f"{tool_name} not found, downloading...")
    tool_path = download_protoc()

    if validate_installation:
        try:
            subprocess.run([tool_path, "--version"], check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            print_info(f"{tool_name} installed successfully.")
        except subprocess.CalledProcessError as e:
            raise RuntimeError(f"{tool_name} installation failed: {e}")

    return tool_path

def check_protoc_installed(protoc_path: Optional[str] = None) -> str:
    return check_tool_installed("protoc", protoc_path)


def check_grpc_plugin_installed(grpc_plugin_path: Optional[str] = None) -> str:
    return check_tool_installed("grpc_csharp_plugin", grpc_plugin_path, False)


def download_grpc_csharp_plugin(version: str = "2.66.0"):
    os_name = platform.system().lower
    architecture = platform.machine().lower()

    if os_name == 'darwin':
        os_name = 'macosx'

    if 'arm' in architecture or 'aarch64' in architecture:
        arch = 'arm'
    elif '64' in architecture:
        arch = 'x64'
    else:
        arch = 'x86'

    target_dir = os.path.join(os.getcwd(), "proto_generator")
    os.makedirs(target_dir, exist_ok=True)

    url = f"https://www.nuget.org/api/v2/package/Grpc.Tools/{version}"
    file_name = f"grpc.tools.{version}.nupkg"

    print_info(f"Downloading grpc_csharp_plugin from {url}...")
    urllib.request.urlretrieve(url, file_name)

    print_info("Extracting protoc...")

    try:
        with (zipfile.ZipFile(file_name, 'r')) as ref:
            ref.extractall(target_dir)
            print_info("grpc_csharp_plugin downloaded and extracted.")

    except (zipfile.BadZipFile, tarfile.ReadError) as e:
        raise RuntimeError(f"Failed to extract grpc_csharp_plugin: {e}")

    name = "grpc_csharp_plugin" if os_name != "Windows".lower() else "grpc_csharp_plugin.exe"
    grpc_csharp_plugin_path = os.path.join(target_dir, "tools", f'{os_name}_{arch}', name)

    os.remove(file_name)

    if os_name != "Windows".lower() and os.path.exists(grpc_csharp_plugin_path):
        os.chmod(grpc_csharp_plugin_path, os.stat(grpc_csharp_plugin_path).st_mode | stat.S_IEXEC)

    if not os.path.exists(grpc_csharp_plugin_path):
        raise RuntimeError("Could not find the extracted grpc_csharp_plugin.")
    return grpc_csharp_plugin_path


def generate_classes(protoc_path: str, proto_dir: str, output_dir: str, grpc_plugin_path: str) -> None:
    """Generate classes from .proto files using the protoc compiler and grpc_csharp_plugin.

    Args:
        protoc_path: Path to the protoc compiler.
        proto_dir: Directory containing .proto files.
        output_dir: Directory for the generated classes.
        grpc_plugin_path: Path to the grpc c# plugin compiler.
    """
    proto_files = [str(p) for p in Path(proto_dir).rglob("*.proto")]
    if not proto_files:
        print_error("No .proto files found in the specified directory.")
        sys.exit(1)
    
    os.makedirs(output_dir, exist_ok=True)

    for proto_file in proto_files:
        proto_relative_dir = os.path.dirname(proto_file)
        output_path = os.path.join(output_dir, proto_relative_dir)
        os.makedirs(output_path, exist_ok=True)

        command = [
            protoc_path, 
            f"-I={proto_dir}", 
            f"--csharp_out={output_path}", 
            f"--grpc_out={output_path}",  
            f"--plugin=protoc-gen-grpc={grpc_plugin_path}",
            proto_file
                ]

        print_info(f"Generating C# classes and gRPC services for {proto_file} in {output_path}...")

        try:
            subprocess.run(command, check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        except subprocess.CalledProcessError as e:
            print_error(f"Error occurred while generating C# classes and gRPC services: {e}")
            return


def parse_arguments() -> argparse.Namespace:
    """Parse command-line arguments.

    Returns:
        Parsed command-line arguments.
    """
    parser = argparse.ArgumentParser(description="Generate classes from .proto files using protoc.")
    parser.add_argument("--protoc", type=str, help="Path to the protoc compiler. If not provided(not in path), the script will attempt to download it.")
    parser.add_argument("--proto_dir", type=str, required=True, help="Directory containing .proto files.")
    parser.add_argument("--output_dir", type=str, required=True, help="Directory for the generated classes.")
    parser.add_argument("--grpc_plugin_path", type=str, help="Path to the grpc c# plugin. If not provided(not in path), the script will attemt to download it.")
    parser.add_argument("--protoc_version", type=str, default="28.0", help="Version of the protoc compiler to download (if not found) (default: 28.0).")
    parser.add_argument("--grpc_plugin_version", type=str, default="2.66.0", help="Version of the grpc c# plugin to download (if not found) (default: 2.66.0).")
    return parser.parse_args()


def main() -> None:
    """Main function to handle the script workflow."""
    args = parse_arguments()
    
    protoc_path = args.protoc or None
    protoc_path = check_protoc_installed(protoc_path)

    grpc_plugin_path = args.grpc_plugin_path or None
    grpc_plugin_path = check_grpc_plugin_installed(grpc_plugin_path)

    generate_classes(protoc_path, args.proto_dir, args.output_dir, grpc_plugin_path)

if __name__ == "__main__":
    main()
