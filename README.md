# vertex-move-endgame-mark

`vertex-move-endgame-mark` explores chess and game engines in Elixir. The repository keeps the core rule set compact, then surrounds it with examples that show how the decisions move.

## Vertex Move Endgame Mark Notes

The quickest review path is the verifier first, then the fixtures, then the operations note. That order makes it easy to see whether the code, data, and explanation still agree.

## Why This Exists

The repository exists to keep a technical idea small enough to reason about. The implementation avoids external dependencies where possible, then uses fixtures to make changes easy to review.

## Code Tour

- `lib`: library code
- `test`: language test directory
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Feature Notes

- Includes extended examples for turn flow, including `recovery` and `degraded`.
- Documents search limits tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.
- Stores project constants and verification metadata in `metadata/project.json`.
- Adds a repository audit script that checks structure before running the language verifier.

## Implementation Notes

The core is a scoring model over demand, capacity, latency, risk, and weight. That keeps position state, move ranking, and turn flow in one explicit decision path. The threshold is 180, with risk penalty 7, latency penalty 2, and weight bonus 5. The Elixir project uses Mix and ExUnit with clear data maps for each scenario.

## Local Setup

Clone the repository, enter the directory, and run the verifier. No database server, cloud account, or token is required.

## Example Scenarios

`boundary` is the first example I would inspect because it lands on the `review` path with a score of 129. The broader file also keeps `degraded` at -29 and `recovery` at 234, which gives the model a useful low-to-high spread.

## Try It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Tests

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Roadmap

- Add malformed input fixtures so the failure path is as visible as the happy path.
- Split the scoring constants into a typed configuration object and validate it before use.
- Add a comparison mode that shows how decisions change when one signal is adjusted.
- Add one more chess and game engines fixture that focuses on a malformed or borderline input.

## Boundaries

The fixture set is deliberately small. That keeps the review surface clear, but it also means the model should not be treated as a complete domain simulator.
