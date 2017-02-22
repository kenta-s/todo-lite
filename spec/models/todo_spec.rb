require 'rails_helper'

RSpec.describe Todo, type: :model do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:status) }
  it { is_expected.to validate_length_of(:title).is_at_most(100) }

  describe "done!" do
    let(:todo) { FactoryGirl.build(:todo) }
    before(:each) { todo.status = nil }
    context "status: todo" do
      specify "status changes to done" do
        todo.status = "todo"
        todo.done!
        expect(todo.done?).to be_truthy
      end
    end

    context "status: done" do
      specify "status changes to done" do
        todo.status = "done"
        todo.done!
        expect(todo.done?).to be_truthy
      end
    end

    context "status: canceled" do
      specify "status changes to done" do
        todo.status = "canceled"
        todo.done!
        expect(todo.done?).to be_truthy
      end
    end
  end

  describe "canceled!" do
    let(:todo) { FactoryGirl.build(:todo) }
    before(:each) { todo.status = nil }
    context "status: todo" do
      specify "status changes to canceled" do
        todo.status = "todo"
        todo.canceled!
        expect(todo.canceled?).to be_truthy
      end
    end

    context "status: done" do
      specify "status changes to canceled" do
        todo.status = "done"
        todo.canceled!
        expect(todo.canceled?).to be_truthy
      end
    end

    context "status: canceled" do
      specify "status changes to canceled" do
        todo.status = "canceled"
        todo.canceled!
        expect(todo.canceled?).to be_truthy
      end
    end
  end

  describe "todo!" do
    let(:todo) { FactoryGirl.build(:todo) }
    before(:each) { todo.status = nil }
    context "status: todo" do
      specify "status does not change" do
        todo.status = "todo"
        todo.todo!
        expect(todo.todo?).to be_truthy
      end
    end

    context "status: done" do
      specify "status changes to todo" do
        todo.status = "done"
        todo.todo!
        expect(todo.todo?).to be_truthy
      end
    end

    context "status: canceled" do
      specify "status changes to todo" do
        todo.status = "canceled"
        todo.todo!
        expect(todo.todo?).to be_truthy
      end
    end
  end
end
