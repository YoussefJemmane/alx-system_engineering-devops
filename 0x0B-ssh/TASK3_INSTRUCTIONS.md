# Task 3: Let me in! - Instructions

## What you need to do:

1. **Connect to your server** using SSH (you can use the script from Task 0):
   ```bash
   ssh -i ~/.ssh/school ubuntu@YOUR_SERVER_IP
   ```

2. **Add the provided public key** to the authorized_keys file:
   ```bash
   # Navigate to the SSH directory
   cd ~/.ssh/
   
   # Create authorized_keys file if it doesn't exist
   touch authorized_keys
   
   # Add the provided public key
   echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDNdtrNGtTXe5Tp1EJQop8mOSAuRGLjJ6DW4PqX4wId/Kawz35ESampIqHSOTJmbQ8UlxdJuk0gAXKk3Ncle4safGYqM/VeDK3LN5iAJxf4kcaxNtS3eVxWBE5iF3FbIjOqwxw5Lf5sRa5yXxA8HfWidhbIG5TqKL922hPgsCGABIrXRlfZYeC0FEuPWdr6smOElSVvIXthRWp9cr685KdCI+COxlj1RdVsvIo+zunmLACF9PYdjB2s96Fn0ocD3c5SGLvDOFCyvDojSAOyE70ebIElnskKsDTGwfT4P6jh9OBzTyQEIS2jOaE5RQq4IB4DsMhvbjDSQrP0MdCLgwkN" >> authorized_keys
   
   # Set correct permissions
   chmod 600 authorized_keys
   chmod 700 ~/.ssh
   ```

3. **Alternative method** (one-liner):
   ```bash
   echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDNdtrNGtTXe5Tp1EJQop8mOSAuRGLjJ6DW4PqX4wId/Kawz35ESampIqHSOTJmbQ8UlxdJuk0gAXKk3Ncle4safGYqM/VeDK3LN5iAJxf4kcaxNtS3eVxWBE5iF3FbIjOqwxw5Lf5sRa5yXxA8HfWidhbIG5TqKL922hPgsCGABIrXRlfZYeC0FEuPWdr6smOElSVvIXthRWp9cr685KdCI+COxlj1RdVsvIo+zunmLACF9PYdjB2s96Fn0ocD3c5SGLvDOFCyvDojSAOyE70ebIElnskKsDTGwfT4P6jh9OBzTyQEIS2jOaE5RQq4IB4DsMhvbjDSQrP0MdCLgwkN" >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys && chmod 700 ~/.ssh
   ```

## Verification:

After adding the key, the ALX checker should be able to connect to your server using this public key.

You can verify it worked by checking the content of your authorized_keys file:
```bash
cat ~/.ssh/authorized_keys
```

The file should contain the provided public key.

