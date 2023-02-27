RSpec.describe "doubles challenge" do
  it "creates a sophisticated double" do
    task_list = double :task_list, add: nil
    task = double(:task)
    expect(task_list).to receive(:list).with(no_args).and_return([task])
    expect(task_list).to receive(:count).with(no_args).and_return(1)
    expect(task_list).to receive(:clear).with(no_args).and_return(:success)

    # Don't edit below
    task_list.add(task)
    expect(task_list.list).to eq [task]
    expect(task_list.count).to eq 1
    expect(task_list.clear).to eq :success
  end
end