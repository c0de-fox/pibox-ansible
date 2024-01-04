# pibox-ansible

Some ansible playbooks to manage a [pibox](https://pibox.io) in various ways

## Prerequisites

1. Internet connection
1. Python 3 on Linux (or WSL)
1. One or more PiBoxes that you don't want to manage through [KubeSail](https://kubesail.com)

## Getting Started

1. Clone this repository: `git clone https://c0de.dev/c0de/pibox-ansible`
1. Enter the repo: `cd pibox-ansible`
1. Create a python virtual environment: `python3 -m venv .venv`
1. Enter the virtual environment: `source .venv/bin/activate`
1. (optional) Upgrade PIP: `pip3 install --upgrade pip`
1. Install ansible: `pip3 install -r requirements.txt`
1. Configure Inventory, host vars and group vars
   1. You probably don't have my domain name on your network lol
