require 'rails_helper'

RSpec.describe ArticlesFacade do
  describe 'class methods' do
    describe '#articles_on_topic' do
      it 'returns articles on given topic' do
        expect(ArticlesFacade.articles_on_topic("Anthrax")).to be_an(Array)
        expect(ArticlesFacade.articles_on_topic("Anthrax")[0]).to be_instance_of(Article)
      end
    end
  end
end