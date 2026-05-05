defmodule PlumeMoveOpeningLabTest do
  use ExUnit.Case

  test "fixture decisions" do
    signal_case_1 = %{demand: 68, capacity: 84, latency: 14, risk: 15, weight: 11}
    assert PlumeMoveOpeningLab.score(signal_case_1) == 96
    assert PlumeMoveOpeningLab.classify(signal_case_1) == "review"
    signal_case_2 = %{demand: 89, capacity: 77, latency: 17, risk: 21, weight: 10}
    assert PlumeMoveOpeningLab.score(signal_case_2) == 81
    assert PlumeMoveOpeningLab.classify(signal_case_2) == "review"
    signal_case_3 = %{demand: 105, capacity: 76, latency: 14, risk: 7, weight: 4}
    assert PlumeMoveOpeningLab.score(signal_case_3) == 196
    assert PlumeMoveOpeningLab.classify(signal_case_3) == "accept"
  end
end
