<h1 align="center">
  <a href="https://blackseals.net">
    <img src="https://blackseals.net/features/blackseals.png" width=66% alt="BlackSeals">
  </a>
</h1>

> Promoted development by BlackSeals.net Technology.
> Written by Andyt for BlackSeals.net.
> Copyright 2020-2022 by BlackSeals Network.

## Description

**set_folder-icon.bat** is a Windows Batch script that will allow you to set folder icon on a network share. The necessary steps are automated in the process.

 
## Quick Start

Download the script and copy **set_folder-icon.bat** to the folder which should be get the folder icon. 


## Syntax

`set_folder-icon.cmd *iconpath*,*iconindex*`
* **iconpath** is the path to the icon (*.ico, *.dll). It should be the full path or relative path from the start folder.
* **iconindex** is the number of the position if there are several icons in one file. It is 0 for a *.ico file.


## Examples

`set_folder-icon.cmd ".\folder.ico,0"`
* Using an icon in the same network folder.
* This variant is best when the network share is accessed with different letters or network paths.

`set_folder-icon.cmd "C:\users\public\folder.ico,0"`
* Using an icon from a local path.
* This variant is possible if the icon will be there on every client. If not, it will not be showed.

