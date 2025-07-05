# NordRoll - NordVPN CLI Randomizer

This is a simple script for connecting to a random location
using the NordVPN command line tool.

## Usage

The **nordroll** directory can be placed anywhere and the script
is called using an alias. I have mine in my *.config* directory.
The alias looks like this:

*alias nordrl='~/.config/nordroll/nroll.sh'*

There are 2 location lists you can choose from: local and global.
The **local** list contains cities in North America while the
**global** list contains all 126 countries available in NordVPN.

Local:  use "l" or "L"
Global: use "g" or "G"

### Example

nordrl L

# Configuration

Once you place the nordroll directory make sure to change the paths
in the **nroll.sh** file. The lines that need to be changed look like this:

*nlist="/path/to/nordroll/..."*

Both lists can be adjusted to your needs. If you want your "local"
list to be a different region you can easily change it this way:

*nordvpn cities Country > /path/to/nordroll/nordl.ls*

This will overrite the local list with the cities from Country.
To add to the list use the same command with ">>" instead of ">"

*nordvpn cities Country >> /path/to/nordroll/nordl.ls*

