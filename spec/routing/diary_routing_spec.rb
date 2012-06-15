require "spec_helper"

describe DiaryController do
  describe "routing" do

    it { get("/diary/new").should route_to("diary#new")}
  end
end
