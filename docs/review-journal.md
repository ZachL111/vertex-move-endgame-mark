# Review Journal

I treated `vertex-move-endgame-mark` as a project where the smallest useful behavior should still be inspectable.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its chess and game engines focus without claiming live deployment or external usage.

## Cases

- `baseline`: `position pressure`, score 139, lane `watch`
- `stress`: `move ordering`, score 124, lane `watch`
- `edge`: `search width`, score 179, lane `ship`
- `recovery`: `endgame risk`, score 170, lane `ship`
- `stale`: `position pressure`, score 145, lane `ship`

## Note

A future change should add new cases before it changes the scoring rule.
