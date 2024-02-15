# Text-to-Speech

A simple ruby script to convert a text to audio using the Google service: **Text-to-speech**.

## Setup

* Create an `.env` file and set a value for `GOOGLE_API_KEY`.

## Running

```
docker build . -t text-to-speech
docker run -it -v $PWD:/app --env-file .env text-to-speech --input-file=input.ssml --output-file=output.mp3
```

## References

https://cloud.google.com/text-to-speech/docs/libraries
https://cloud.google.com/text-to-speech/docs/ssml
