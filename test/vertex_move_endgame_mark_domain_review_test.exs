defmodule VertexMoveEndgameMark.DomainReviewTest do
  use ExUnit.Case

  test "domain review lane" do
    item = %{signal: 55, slack: 38, drag: 24, confidence: 63}
    assert VertexMoveEndgameMark.DomainReview.score(item) == 139
    assert VertexMoveEndgameMark.DomainReview.lane(item) == "watch"
  end
end
