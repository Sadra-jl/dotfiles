# Bootstrap Script

The `bootstrap.sh` script automates the initial setup and configuration of a fresh endeavorOs Linux system. It streamlines the installation of essential software, configures system settings, and links dotfiles to enhance your development environment and daily workflow.

## System Configurations

### DNS Configuration
- **Custom DNS Setup**: Configures DNS settings to improve network performance and reliability by using shecan's DNS; it also supports DoH, DoT,

### Package Management
- **Package Installation**: Installs essential packages(around 120) using `pacman` and other package managers + non essential ones(optional)[can see the list during installation].
- **Mirror Update**: Updates the system mirrors to ensure faster and more reliable package downloads.
- 
### Zen Kernel
- Provides an option to install the Zen kernel for improved performance.

### Dotfile Management
- **Bare Repository Repository**:maintain a consistent configuration across systems by following up with [Best way to store in a bare git repository](https://www.atlassian.com/git/tutorials/dotfiles), Configures a bare Git repository for managing dotfiles,allowing for version control without cluttering the home directory.
  
#### Shell Setup
- **Fish Shell Installation**: Installs the Fish shell for an enhanced command-line experience.
- **Fish Plugins**: Adds and configures useful Fish shell plugins to boost productivity.
- **Fish Aliases**: Adds Aliases to make using shell simpler.
- **Zoxide Configuration**: Sets up Zoxide for efficient directory navigation.
- **Star Ship**: Adds starship to make shell gorgeous.

#### Filesystem Configuration
- **Btrfs Setup**: Configures Btrfs with:
  - **Snapshots**: Enables snapshot functionality for system state backups.
  - **Pacman Hooks**: Sets up hooks to automatically create snapshots before and after package installations or updates.

#### CPU Optimization
- **CPU-Specific Optimizations**: Applies optimizations tailored to your CPU architecture to enhance system performance.

#### GPU and Bootloader Configuration
- **NVIDIA Setup**: Installs NVIDIA drivers and configures GPU settings.
- **GRUB Integration**: Adds NVIDIA configurations to the GRUB bootloader to ensure proper driver loading during system startup.

#### Font Installation
- **Fonts Installation**: Installs a collection of preferred fonts to improve terminal and application aesthetics.

### Dotnet and Development Tools
- **Essential Development Tools**: Installs and configures necessary development tools and environments to get you started quickly.
- **Dotnet**: installs latest dotnet SDK and Runtime.
    - **Dotnet Tools**: installs popular dotnet tools like nuke, grpc, dotnet-ef, dotnet-script and csharprepl
    - **LinqPad**: installs linqpad(windows app) with wine

## Usage

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/Sadra-jl/dotfiles.git
   cd dotfiles/Documents
   ```

2. **Run the Bootstrap Script**:
   ```bash
   ./bootstrap.sh
   ```

3. **Interactive Script**:
   - Customize the setup as needed by following the interactive prompts during the script execution.
  
Or simply just run it:
  ```bash
    bash <(curl -s https://raw.githubusercontent.com/Sadra-jl/.cfg/master/Documents/bootstrap.sh)
  ```

## Todos
1. refactoring the script, breaking it down into multiple files.
2. use arguments for installing a particular part.

## Caution

⚠️ **Use at Your Own Risk** ⚠️  
This script may contain bugs and could potentially cause unintended changes to your system. It is highly recommended to:

- **Backup Important Data**: Ensure you have backups of any critical data before running the script(the script will partially backup important ones but it's always a good Idia to backup before installation. ).
- **Review the Script**: Examine the `bootstrap.sh` script to understand the changes it will make to your system(the script will be refactored soon!).
- **Proceed with Caution**: Use the script at your own discretion and responsibility(it's always your fault, not mine).
- **Bugs**: So far only my friend and I have used this script so there must be huge amount of untested bugs(please open Issues).

## License

This script is licensed under the [MIT License](../LICENSE). See the [LICENSE](../LICENSE) file for more details.

## Contributions

Contributions and feedback are welcome! If you encounter any issues or have suggestions for improvements:

- **Open an Issue**: Report bugs or request features by opening an issue on GitHub.
- **Submit a Pull Request**: Fork the repository, make your changes, and submit a pull request for review.

---
