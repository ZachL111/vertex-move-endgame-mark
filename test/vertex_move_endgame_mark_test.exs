defmodule VertexMoveEndgameMarkTest do
  use ExUnit.Case

  test "fixture decisions" do
    signal_case_1 = %{demand: 69, capacity: 96, latency: 11, risk: 5, weight: 11}
    assert VertexMoveEndgameMark.score(signal_case_1) == 232
    assert VertexMoveEndgameMark.classify(signal_case_1) == "accept"
    signal_case_2 = %{demand: 64, capacity: 76, latency: 10, risk: 24, weight: 4}
    assert VertexMoveEndgameMark.score(signal_case_2) == 36
    assert VertexMoveEndgameMark.classify(signal_case_2) == "review"
    signal_case_3 = %{demand: 70, capacity: 87, latency: 11, risk: 12, weight: 11}
    assert VertexMoveEndgameMark.score(signal_case_3) == 176
    assert VertexMoveEndgameMark.classify(signal_case_3) == "review"
  end
end
