# 0x0B. SSH

This project covers SSH (Secure Shell) essentials, including key generation, client configuration, and automation with Puppet.

## Learning Objectives

- What is a server and where servers usually live
- What is SSH and how to use it
- How to create an SSH RSA key pair
- How to connect to a remote host using an SSH RSA key pair
- The advantage of using `#!/usr/bin/env bash` instead of `/bin/bash`

## Tasks

### 0. Use a private key
**File:** `0-use_a_private_key`

Bash script that uses SSH to connect to your server using the private key `~/.ssh/school` with the user `ubuntu`.

**Requirements:**
- Only use SSH single-character flags
- Cannot use `-l`
- Do not need to handle the case of a private key protected by a passphrase

**Usage:**
```bash
./0-use_a_private_key [SERVER_IP]
```

### 1. Create an SSH key pair
**File:** `1-create_ssh_key_pair`

Bash script that creates an RSA key pair.

**Requirements:**
- Name of the created private key must be `school`
- Number of bits in the created key: 4096
- The created key must be protected by the passphrase `betty`

**Usage:**
```bash
./1-create_ssh_key_pair
```

### 2. Client configuration file
**File:** `2-ssh_config`

SSH client configuration file to connect to a server without typing a password.

**Requirements:**
- SSH client configuration must be configured to use the private key `~/.ssh/school`
- SSH client configuration must be configured to refuse to authenticate using a password

### 3. Let me in!
Add the provided SSH public key to your server so that we can connect using the `ubuntu` user.

**Public key to add:**
```
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDNdtrNGtTXe5Tp1EJQop8mOSAuRGLjJ6DW4PqX4wId/Kawz35ESampIqHSOTJmbQ8UlxdJuk0gAXKk3Ncle4safGYqM/VeDK3LN5iAJxf4kcaxNtS3eVxWBE5iF3FbIjOqwxw5Lf5sRa5yXxA8HfWidhbIG5TqKL922hPgsCGABIrXRlfZYeC0FEuPWdr6smOElSVvIXthRWp9cr685KdCI+COxlj1RdVsvIo+zunmLACF9PYdjB2s96Fn0ocD3c5SGLvDOFCyvDojSAOyE70ebIElnskKsDTGwfT4P6jh9OBzTyQEIS2jOaE5RQq4IB4DsMhvbjDSQrP0MdCLgwkN
```

### 4. Client configuration file (w/ Puppet)
**File:** `100-puppet_ssh_config.pp`

Puppet manifest to set up SSH client configuration file so that you can connect to a server without typing a password.

**Requirements:**
- SSH client configuration must be configured to use the private key `~/.ssh/school`
- SSH client configuration must be configured to refuse to authenticate using a password

**Usage:**
```bash
sudo puppet apply 100-puppet_ssh_config.pp
```

## Environment

- Ubuntu 20.04 LTS
- SSH version OpenSSH_8.2p1
- Puppet version 6.x

## Author

ALX School Project - System Engineering & DevOps

