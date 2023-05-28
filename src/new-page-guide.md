# New Page Guide

This book is composed of many different pages from a lot of different people!

If you want to contribute, you only need to make a new file and connect it to the book.

## Downloading the Book

To contribute to the book, you'll need to download the book. Go to your Documents folder in your terminal, then download its git repository:

```bash
~ $ cd Documents

~/Documents $ git clone https://github.com/Sooner-Rover-Team/soro-documentation.git
Cloning into 'soro-documentation'...
remote: Enumerating objects: 269, done.
remote: Counting objects: 100% (269/269), done.
remote: Compressing objects: 100% (161/161), done.
remote: Total 269 (delta 121), reused 217 (delta 85), pack-reused 0
Receiving objects: 100% (269/269), 1.10 MiB | 1002.00 KiB/s, done.
Resolving deltas: 100% (121/121), done.

~/Documents $ cd soro-documentation

~/D/soro-documentation $
```

## Making a New Page

To make a new page, open up a terminal:

```bash
~D/soro-handbook $ pwd
~/Documents/soro-handbook/(somewhere)

~D/soro-handbook $ touch new-page-name.md

~D/soro-handbook $ code new-page-name.md
Opening VSCode...
```

You should now have a new page! Now, let's connect it to the rest of the book with `SUMMARY.md`:

```bash
~ $ cd ~/Documents/soro-handbook

~/D/soro-handbook $ code SUMMARY.md
Opening VSCode...
```

Now, you just write where your page is!

```Markdown
...
# Autonomous

- [Usage](Autonomous/Usage.md)
- [Hardware](Autonomous/Hardware/README.md)
- [My New Page](new-page-name.md) <!--- new page here -->
...
```

### Submitting Changes

We use `git` to manage new versions of the book. There's not enough space to teach git here, but you can refer to [Git - The Simple Guide](https://rogerdudler.github.io/git-guide/) and W3's [Git Tutorial](https://www.w3schools.com/git/) for some tips.

Please make sure to use a PR (pull request) for significant changes! :)
