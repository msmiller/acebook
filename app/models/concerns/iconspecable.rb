# frozen_string_literal: true

module Iconspecable
  extend ActiveSupport::Concern
  include HeroiconHelper
  include ActionView::Helpers::OutputSafetyHelper

  included do
    serialize :iconspec, Hash
  end

  def update_iconspec(key:, color: 'gray-500', foundry: 'heroicon',  variant: 'solid')
    spec_hash = { key: key, color: color, foundry: foundry,  variant: variant }
    # TODO: validate hash - see classy_hash (https://github.com/deseretbook/classy_hash)
    self.iconspec = spec_hash
    save
  end

  # This assumes the heroicon foundry
  def to_icon_html(cssclasses: nil)
    return '' if self.iconspec.empty?
    heroicon iconspec[:key], variant: iconspec[:variant], options: { class: "text-#{iconspec[:color]} #{cssclasses}" }
  end

end
