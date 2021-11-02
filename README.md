# 2021_Nginx

### Set Personal SSH key
- add config https://docs.github.com/en/enterprise-cloud@latest/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
- config content
```
Host zhixin-tw
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
Host zhixin9001
  HostName github.com
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519_personal
```
- in repo, modify config
`git remote add zhixin9001 git@zhixin9001:zhixin9001/2021-Nginx.git`
