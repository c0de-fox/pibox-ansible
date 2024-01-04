# pibox-ansible

Some ansible playbooks to manage a [pibox](https://pibox.io) in various ways

## Prerequisites

1. Internet connection
1. Python 3 on Linux (or WSL)
1. One or more PiBoxes that you don't want to manage through [KubeSail](https://kubesail.com)
   - I recommend [installing the latest version](https://docs.kubesail.com/guides/pibox/rpiboot/) before proceeding
      - _Note: There is a bug where the ssh server won't start. Fix outlined below._

## Getting Started

1. Clone this repository: `git clone https://c0de.dev/c0de/pibox-ansible`
1. Enter the repo: `cd pibox-ansible`
1. Create a python virtual environment: `python3 -m venv .venv`
1. Enter the virtual environment: `source .venv/bin/activate`
1. (optional) Upgrade PIP: `pip3 install --upgrade pip`
1. Install ansible: `pip3 install -r requirements.txt`
1. Configure [inventory](./ansible/inventories/inventory.yml)
   - You probably don't have my domain name on your network lol
1. Ping your hosts: `ansible -i ansible/inventories/inventory.yml all -m ping`
    - If you can't resolve any hosts, check DNS. It's always DNS.
1. Proceed to running playbooks

## Fixing no SSH on latest version

During install of the custom image, `pi flasher` allowed me to configure things like the hostname, ssid, my ssh key, my user account. This sets up a script that runs when the pi reboots for the first time after install.

1. Mount the pi's `/boot` volume (it should be in your file manager somewhere)
1. Edit the `initial-boot.sh` (or similar named script)
1. Add `ssh-keygen -A` somewhere in the file
1. Save and close the file
1. Safely unmount the pi's `/boot`
1. Done! The ssh server is now functional

_Alternatively, you can wait for the system to boot with a keyboard and monitor connected and:_

- _login;_
- _open a terminal;_
- _run `sudo ssh-keygen -A`;_
- _then `sudo systemctl enable --now ssh`._
