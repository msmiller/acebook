# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Iconspecable do
  # include Iconspecable

  context 'test' do
    let(:user1) { create(:user) }
    let(:instance1) { create(:instance, user: user1) }
    let(:iconspec1) { { key: 'search', color: 'gray-500', foundry: 'fontawesome', variant: 'outline' } }

    it 'can get its iconspec' do
      expect(instance1.iconspec).to eq({})
      instance1.iconspec = iconspec1
      instance1.save
      expect(instance1.iconspec).to eq(iconspec1)
    end

    it 'can set its iconspec' do
      instance1.update_iconspec key: 'search', color: 'gray-500', foundry: 'fontawesome', variant: 'outline'
      expect(instance1.iconspec).to eq(iconspec1)
    end

    it 'can set its iconspec using defaults' do
      expect(instance1.iconspec).to eq({})
      instance1.update_iconspec key: 'search', color: 'gray-500'
      expect(instance1.iconspec[:foundry]).to eq('heroicon')
      expect(instance1.iconspec[:variant]).to eq('solid')
    end

    it 'can generate an html string' do
      instance1.iconspec = iconspec1
      instance1.save
      result1 = instance1.to_icon_html
      expect(result1).to start_with('<svg xmlns')
      expect(result1).to include('text-gray-500')

      result2 = instance1.to_icon_html(cssclasses: 'an-css-class')
      expect(result2).to include('an-css-class"')
    end

  end
end