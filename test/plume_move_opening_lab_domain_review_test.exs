defmodule PlumeMoveOpeningLab.DomainReviewTest do
  use ExUnit.Case

  test "domain review lane" do
    item = %{signal: 78, slack: 37, drag: 27, confidence: 60}
    assert PlumeMoveOpeningLab.DomainReview.score(item) == 172
    assert PlumeMoveOpeningLab.DomainReview.lane(item) == "ship"
  end
end
