# NordRoll - NordVPN CLI Randomizer

This is a simple tool for connecting to a random location
using the NordVPN command line tool. The tool consists of 2
location lists and a script. The script is called using an alias
and allows you to choose either a "local" or "global" scope when connecting.

## Usage

The script is called using an alias that looks like this:

`alias nordrl='~/.config/nordroll/nroll.sh'`

There are 2 location lists you can choose from: local and global.
The **local** list contains cities in North America while the
**global** list contains all 126 countries available in NordVPN.

Local:  use "l" or "L"
Global: use "g" or "G"

### Example

`nordrl L`

# Script Install

1. Download the nrinstall.sh file
2. Make the file executable using `sudo chmod+x /path/to/nrinstall.sh`
3. Run script using `/path/to/nrinstall.sh`
4. Enter your password if prompted to make **nroll.sh** executable
5. Open a new terminal and the alias **nordrl** will now be usable

# Manual Install

1. Download the 3 files (list and script).
2. Place the 3 files (lists and script) into a directory called **nordroll**.
    The **nordroll** directory can be placed anywhere. I have mine in my *.config* directory.
3. Once you place the nordroll directory make sure the list paths in the **nroll.sh** file are correct. 
    The lines that need to be changed look like this:
    `nroll ~/.config/nordroll/nordl.ls"`
4. Make the **nroll.sh** file executable using sudo chmod+x /path/to/nroll.sh
5. Add an alias for the script
   `echo "alias nordrl=/path/to/nroll.sh" >> ~/.bashrc`
6. Open a new terminal and the alias **nordrl** will now be usable

# Configuration

Both lists can be adjusted to your needs. If you want your "local"
list to be a different region you can easily change it with this command:

`nordvpn cities Country > /path/to/nordroll/nordl.ls`

This will overrite the local list with the cities from Country.
To add to the list use the same command with ">>" instead of ">"

`nordvpn cities Country >> /path/to/nordroll/nordl.ls`

If you do adjust the lists make sure to adjust the scope for that list in the **nroll.sh** script.
The nscope number is the number of lines in the file.

`nscope="num"`



