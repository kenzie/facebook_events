require 'spec_helper'

ID = 'AlMacInnisSportsCentre'

describe FacebookEvents do

  a = FacebookEvents.new(ID)

  it "has a facebook id" do
    a.facebook_id.should == ID
  end

  it "sets up authorization" do
    a.auth_token.class.should == String
  end

  describe "list" do
    l = a.list

    it "returns an array" do
      l.class.should == Array
    end

    describe "first" do
      f = l.first

      it "is an Event" do
        f.class.should == FacebookEvents::Event
      end

      it "has a facebook id" do
        f.facebook_id.should == '348500465212758'
      end

      it "has a name" do
        f.name.should == "Father's Day Fundraiser"
      end

      it "has a start_time" do
        f.start_time.should == "2012-06-16T16:00:00"
      end

      it "has a description" do
        f.description.should == "The Al MacInnis Sports Centre is hosting a fundraiser on Saturday, June 16th from 8pm - 12am. Live entertainment, hot & cold hors d\u2019oeuvres, game tables, horse shoes, door prizes. All of this will take place in heated tents with an ambience that will set the stage. Entertainment by Billy Spears, Gary Trenholm & Stephen Doiron.\n\nTickets are $40 each and can be purchased by contacting Shannon MacDougall at 631-1401. Visa & M/C accepted."
      end

      it "has an updated_time" do
        f.updated_time.should == "2012-04-27T12:13:07+0000"
      end

    end
  end
end