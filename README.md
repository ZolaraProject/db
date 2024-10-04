# db
## Initialize the database
To initialize the database, check the schema `init.sql` first and then run the `runDB.sh` script
```bash
./runDB.sh
```

## Encrypted data
Some files are encrypted using `gpg` and `git-crypt`. To decrypt them, you need to generate a GPG key and send it to an admin.

1. Install `git-crypt` and `gpg` if needed

2. Generate a GPG key
```bash
gpg --gen-key
```

3. Check the id and export the key
```bash
gpg --list-secret-keys --keyid-format LONG
gpg --export -a <KEY_ID> > publickey.asc
```
> KEY_ID is found in the output of the first command: `sec   4096R/<KEY_ID> 2021-01-01 [expires: 2022-01-01]`

4. Send the `publickey.asc` file to an admin so that he/she can add it to the repository with the following commands
```bash
gpg --import publickey.asc
gpg --list-keys --keyid-format LONG
git-crypt add-gpg-user --trusted <KEY_ID>
```

5. Once the admin has added your key, you can decrypt the files
```bash
git-crypt unlock
```