# Sender-Grabber Protocol (SGP)

The **Sender-Grabber Protocol** is a list of Promises[^note] that the Rover (sender) and RoverGUI (grabber) must keep when exchanging commands and information.

While the Protocol works as a way to transmit information like commands, it isn't expected to be used with a video stream itself. Please encode images/video in freely-available formats which are well-designed already, like [WebP](https://en.wikipedia.org/wiki/WebP) and [AV1](https://en.wikipedia.org/wiki/AV1#Software_support).

## What's going on?

`Promises` describe the details of how data should be sent and recieved, with each `Call` acting as a direct implementation of a certain `Promise`. In other words, you write the code to keep your promises!

Each `Call` must be compatible on both ends of the tunnel. Finally, the `Background` represents additional details of the protocol.

## Prototyping

Before we settle on any `Promises`, we need to take into consideration that our needs will change in the future. For this reason, the `Background` details should be loose. You can see a full list of some [important considerations here](https://en.wikipedia.org/wiki/Communication_protocol#Basic_requirements).

### Initial Goals

However, just keep in mind some initial goals for now. We need `Promises` for:

- Changing the FPS
- Stopping a camera
- Starting a camera
- Changing cameras
- Encoding/quality options (oh boy)

Keep in mind that having these options up here **require** documenting them as you add them into your programs. If you change the way encoding works, and it's not compatible with the protocol, you'll need to document your changes and make the protocol aware of that.

I highly suggest researching libraries first, then sticking to your choices.

### Future Ideas

Some other useful ideas could be around:

- The internet connection
- Remaining battery
- Current operation/modes
- Settings
- User profiles
- Connected devices (controller status)
- Error logging

It's not a good idea to implement these yet, but it'd be nice to get some brainstorming going.

## Versioning

To keep everything simple, we're just going to use Semantic Versioning. If you're new to this, npm has [a great guide](https://docs.npmjs.com/about-semantic-versioning) which is super easy to read and understand!

In general, the `Versioning` information only stands to disallow older programs from talking to the Rover and returns an error when we try.

This should help to avoid a lot of confusion down the line. **Always aim to keep both the Python and Rust implementations up-to-date with each other.**

## Calls

// TODO :)

## Environment

// TODO :)

## Changelog

- **0.0.0**: Nothing
  - The base release of the protocol.
  - Nothing has been added, and there is no protocol!
    - Very simple release

## Footnotes

[^note]: `Promises` in SGP are not related to those in Javascript or other languages. They're "promises" in the everyday sense of the word. ex: "I promise that I will change cameras."
