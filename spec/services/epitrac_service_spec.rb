require 'rails_helper'

RSpec.describe EpitracService do
  describe 'class methods', :vcr do
    describe '#articles_on_topic' do
      it 'returns articles for a given disease topic' do
        articles = EpitracService.articles_on_topic("Anthrax")

        expect(articles).to be_a(Hash)
        expect(articles[:data]).to be_an(Array)
        article = articles[:data][0]

        expect(article[:attributes]).to have_key(:article_id)
        expect(article[:attributes][:article_id]).to be_a(String)

        expect(article[:attributes]).to have_key(:author)
        expect(article[:attributes][:author]).to be_a(String)

        expect(article[:attributes]).to have_key(:title)
        expect(article[:attributes][:title]).to be_a(String)

        expect(article[:attributes]).to have_key(:year)
        expect(article[:attributes][:year]).to be_a(String)

        expect(article[:attributes]).to have_key(:date)
        expect(article[:attributes][:date]).to be_a(String)

        expect(article[:attributes]).to have_key(:isbn_issn)
        expect(article[:attributes][:isbn_issn]).to be_a(String)

        expect(article[:attributes]).to have_key(:keywords)
        expect(article[:attributes][:keywords]).to be_a(String)

        expect(article[:attributes]).to have_key(:abstract)
        expect(article[:attributes][:abstract]).to be_a(String)

        expect(article[:attributes]).to have_key(:url)
        expect(article[:attributes][:url]).to be_a(String)

        expect(article[:attributes]).to have_key(:doi)
        expect(article[:attributes][:doi]).to be_a(String)
      end
    end

    describe '#all_states_cases' do
      it 'finds all stats disease cases for the week' do
        states_cases = EpitracService.all_states_cases

        expect(states_cases).to be_a(Hash)
        expect(states_cases[:data]).to be_an(Array)
        state_case = states_cases[:data][0]

        expect(state_case[:attributes]).to have_key(:state)
        expect(state_case[:attributes][:state]).to be_a(String)

        expect(state_case[:attributes]).to have_key(:year)
        expect(state_case[:attributes][:year]).to be_a(String)

        expect(state_case[:attributes]).to have_key(:current_week)
        expect(state_case[:attributes][:current_week]).to be_a(Integer)

        expect(state_case[:attributes]).to have_key(:disease)
        expect(state_case[:attributes][:disease]).to be_a(String)

        expect(state_case[:attributes]).to have_key(:cumulative_current)
        expect(state_case[:attributes][:cumulative_current]).to be_a(Integer)

        expect(state_case[:attributes]).to have_key(:cumulative_last)
        expect(state_case[:attributes][:cumulative_last]).to be_a(Integer)

        expect(state_case[:attributes]).to have_key(:coordinates)
        expect(state_case[:attributes][:coordinates]).to be_a(Array)

        expect(state_case[:attributes]).to have_key(:id)
        expect(state_case[:attributes][:id]).to be_a(String)

        expect(state_case[:attributes]).to have_key(:current_week_cases)
        expect(state_case[:attributes][:current_week_cases]).to be_a(Integer)
      end
    end

    describe '#cases_for_state' do
      it 'returns only cases for a given state' do
        state_cases = EpitracService.cases_for_state("georgia")

        expect(state_cases).to be_a(Hash)
        expect(state_cases[:data]).to be_an(Array)
        state_case = state_cases[:data][0]

        expect(state_case[:attributes]).to have_key(:state)
        expect(state_case[:attributes][:state]).to be_a(String)

        expect(state_case[:attributes]).to have_key(:year)
        expect(state_case[:attributes][:year]).to be_a(String)

        expect(state_case[:attributes]).to have_key(:current_week)
        expect(state_case[:attributes][:current_week]).to be_a(Integer)

        expect(state_case[:attributes]).to have_key(:disease)
        expect(state_case[:attributes][:disease]).to be_a(String)

        expect(state_case[:attributes]).to have_key(:cumulative_current)
        expect(state_case[:attributes][:cumulative_current]).to be_a(Integer)

        expect(state_case[:attributes]).to have_key(:cumulative_last)
        expect(state_case[:attributes][:cumulative_last]).to be_a(Integer)

        expect(state_case[:attributes]).to have_key(:coordinates)
        expect(state_case[:attributes][:coordinates]).to be_a(Array)

        expect(state_case[:attributes]).to have_key(:id)
        expect(state_case[:attributes][:id]).to be_a(String)

        expect(state_case[:attributes]).to have_key(:current_week_cases)
        expect(state_case[:attributes][:current_week_cases]).to be_a(Integer)
      end
    end

    describe '#disease_info' do
      it 'returns information for the given disease' do
        disease = EpitracService.disease_info("Anthrax")

        expect(disease).to be_a(Hash)
        expect(disease[:data]).to be_a(Array)
        disease_info = disease[:data][0]

        expect(disease_info[:attributes]).to have_key(:disease)
        expect(disease_info[:attributes][:disease]).to be_a(String)

        expect(disease_info[:attributes]).to have_key(:short_name)
        expect(disease_info[:attributes][:short_name]).to be_a(String)

        expect(disease_info[:attributes]).to have_key(:information)
        expect(disease_info[:attributes][:information]).to be_a(String)

        expect(disease_info[:attributes]).to have_key(:link)
        expect(disease_info[:attributes][:link]).to be_a(String)
      end
    end

    describe '#all_disease_info' do
      it 'returns all disease and info' do
        diseases = EpitracService.all_disease_info

        expect(diseases).to be_a(Hash)
        expect(diseases[:data]).to be_an(Array)
        disease = diseases[:data][0]

        expect(disease[:attributes]).to have_key(:disease)
        expect(disease[:attributes][:disease]).to be_a(String)

        expect(disease[:attributes]).to have_key(:short_name)
        expect(disease[:attributes][:short_name]).to be_a(String)

        expect(disease[:attributes]).to have_key(:information)
        expect(disease[:attributes][:short_name]).to be_a(String)

        expect(disease[:attributes]).to have_key(:link)
        expect(disease[:attributes][:link]).to be_a(String)
      end
    end

    describe '#save_article' do
      it 'saves an article to user_article api' do
        article = EpitracService.save_article(1, 5)
        expect(article).to be_a(Hash)
        expect(article[:data]).to be_an(Hash)

        expect(article[:data]).to have_key(:id)
        expect(article[:data][:id]).to be_a String

        expect(article[:data][:attributes]).to have_key(:user_id)
        expect(article[:data][:attributes][:user_id]).to be_an Integer

        expect(article[:data][:attributes]).to have_key(:article_id)
        expect(article[:data][:attributes][:article_id]).to be_an Integer
      end
    end

    describe '#user_articles' do
      it 'returns a user\'s saved articles' do
        EpitracService.save_article(101, 5)
        EpitracService.save_article(101, 6)

        user_articles = EpitracService.return_saved_articles(101)[:data]
        expect(user_articles).to be_an(Array)
        expect(user_articles.size).to eq(2)
      end
    end

    describe '#delete' do
      it 'deletes a user\'s saved articles' do
        user_articles = EpitracService.return_saved_articles(101)[:data]
        user_articles[0][:id]
        user_articles[1][:id]

        EpitracService.delete(user_articles[0][:id])

        expect(EpitracService.return_saved_articles(101)[:data].size).to eq(1)

        EpitracService.delete(user_articles[1][:id])

        expect(EpitracService.return_saved_articles(101)[:data].size).to eq(0)
      end
    end
  end
end
