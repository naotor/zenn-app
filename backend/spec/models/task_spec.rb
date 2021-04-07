require 'rails_helper'

RSpec.describe Task, type: :model do
  let :task do
    described_class.new(title: title)
  end

  let :title do
    'タイトル'
  end

  describe '#valid?' do
    subject do
      task.valid?
    end

    context 'タイトルが入っている場合' do
      it { is_expected.to be_truthy }
    end

    context 'タイトルがnilの場合' do
      let :title do
        nil
      end

      it { is_expected.to be_falsy }
    end
  end
end
