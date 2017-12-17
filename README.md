# cbn_gits

TODO

## Installation

### Automated

You can install **packages** via the command line with either `curl` or
`wget`.  `git` is also required.

#### Via Curl

If you're using `curl` type the following command:

```bash
curl -L https://github.com/cibinmathew/cbn_gits/raw/master/utils/installer.sh | sh
```

#### Via Wget

If you're using `wget` type:

```bash
wget --no-check-certificate https://github.com/cibinmathew/cbn_gits/raw/master/utils/basic-installer.sh -O - | sh

# emacs spacemacs
wget --no-check-certificate https://github.com/cibinmathew/cbn_gits/raw/master/utils/installer.sh -O - | sh
```


### Manual

TODO
```bash
git clone git://github.com/cibinmathew/cbn_gits.git path/to/local/repo
ln -s path/to/local/repo ~/.emacs.d
cd ~/.emacs.d
```

If you are using Windows, you should check what Emacs thinks the `~` directory is by running Emacs and typing `C-x d ~/<RET>`, and then adjust the command appropriately.
