# soro-documentation

The guide to everything SoRo, in one repo

## Add to the book

To change or add to the book, you'll need to folllow some basic steps below. These let you build the book and instantly commit your changes to GitHub Pages, the (free) static website host.

## **Installation** (from [mdbook-quickstart](https://github.com/MichaelCurrin/mdbook-quickstart/blob/main/docs/installation.md))

You should only have to do this once, but keep it in mind...

### Project Requirements

- [Make](https://www.gnu.org/software/make/)
- [Rust](https://www.rust-lang.org/)

### Clone

Clone the repo:

```sh
$ git clone git@github.com:MichaelCurrin/mdbook-quickstart.git
$ cd mdbook-quickstart
```

### Install hooks

```sh
$ make hooks
```

### Install system dependencies

Follow the [Install Rust](https://gist.github.com/MichaelCurrin/6b619f1b035b922f4d883265b2ffcdcf) guide.

### Install project dependencies

```sh
$ make install
```

## **Development** (again, from [mdbook-quickstart](https://github.com/MichaelCurrin/mdbook-quickstart/blob/main/docs/usage.md)

To start make changes to the book, navigate to the repo so you can run the `make` commands.

```sh
$ cd mdbook-quickstart
```

### View available make commands

```bash
$ make help
```

### Run

Start dev server.

```sh
$ make serve
```

Open in the browser:

- [](http://localhost:3000/)

## **Deploy** (yeah, it's from [mdbook-quickstart](https://github.com/MichaelCurrin/mdbook-quickstart/blob/main/docs/deploy.md))

### Build

Build your application and generate production-ready output in the ignored `book` directory.

```sh
$ make build
```

That is useful to run locally to check the app builds correctly.

### CI/CD

This project uses GitHub Actions for Continuous Integration / Continuous Deployment.

The flow runs the [Build](#build) command as above then commits the output to the `gh-pages` branch. To serve the site, configure the _Settings_ section of your repo so that GitHub Pages serves the `root` of the `gh-pages` branch.

See the workflow on GitHub:

- [main.yml](https://github.com/Sooner-Rover-Team/soro-documentation/blob/main/.github/workflows/main.yml) file.

See workflow runs here:

- [Actions](https://github.com/Sooner-Rover-Team/soro-documentation/actions) tab

## Documentation

Once you've done these things, you can finally start adding to the book.

### SUMMARY.md

The most important part of mdBook and this project is editing SUMMARY.md. It lets mdBook know how to generate the rest of the book. 

To know what to do, you'll want to follow [this guide](https://rust-lang.github.io/mdBook/format/summary.html) from mdBook's official documentation.

### Other pages

The rest of this book just requires you to write markdown files. If you can write Slack or GitHub messages, then you already know markdown. But just in case, [here's a cheatsheet](https://www.markdownguide.org/cheat-sheet/) and an [inclusive example page](https://learnxinyminutes.com/docs/markdown/)!
