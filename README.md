# vertex-move-endgame-mark

`vertex-move-endgame-mark` is a Elixir project in chess and game engines. Its focus is to build an Elixir toolkit that studies endgame behavior through round-trip fixtures, with lossless normalization checks and offline replay mode.

## Why It Exists

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how position pressure and search width should influence a review result.

## Vertex Move Endgame Mark Review Notes

The first comparison I would make is `search width` against `move ordering` because it shows where the rule is most opinionated.

## Features

- `fixtures/domain_review.csv` adds cases for position pressure and move ordering.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/vertex-move-endgame-walkthrough.md` walks through the case spread.
- The Elixir code includes a review path for `search width` and `move ordering`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture Notes

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The added Elixir path is deliberately direct, with fixtures doing most of the explaining.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

The check exercises the source code and the review fixture. `edge` is the high score at 179; `stress` is the low score at 124.

## Limitations And Roadmap

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
