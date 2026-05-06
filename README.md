# plume-move-opening-lab

`plume-move-opening-lab` keeps a focused Elixir implementation around chess and game engines. The project goal is to build an Elixir toolkit that studies opening behavior through node-edge fixtures, with cycle and reachability reports and synthetic fixtures only.

## Project Rationale

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Plume Move Opening Lab Review Notes

The first comparison I would make is `position pressure` against `endgame risk` because it shows where the rule is most opinionated.

## Feature Set

- `fixtures/domain_review.csv` adds cases for position pressure and move ordering.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/plume-move-opening-walkthrough.md` walks through the case spread.
- The Elixir code includes a review path for `position pressure` and `endgame risk`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `position pressure`, `move ordering`, `search width`, and `endgame risk`.

The Elixir implementation avoids hidden state so fixture changes are easy to reason about.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Test Command

The check exercises the source code and the review fixture. `stale` is the high score at 189; `recovery` is the low score at 138.

## Next Improvements

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
