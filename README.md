# sshlogger
Ever wonder who's been trying to access your box on the cloud? Could it be the ***REMOVED***, the ***REMOVED*** or even your own government organisation trying to brute force your SSH credentials? I don't know how you could figure that out but this simple script logs the entries of all SSH connections made to a box storing the usernames and the IP addresses used. 

Use the wordlist generated from real life attacks for your own pleasure. If you love data and like to plot cool things go ahead! If you use it maliciously and you get caught, that's on you.


To use, download the repo with:
```sh
git clone https://github.com/VRvinny/sshlogger.git
```

Then set a crontab entry with:

```sh
crontab -e
```

and entering in:
```sh
55 23 * * * /DIR TO REPO/logger.sh
```



This will update the text files everyday at 23:55.

This repo will update with the files everyday too. Have fun! 
