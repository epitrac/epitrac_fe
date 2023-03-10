class EpitracService
  def self.conn
    Faraday.new(url: "https://epitrac-be.herokuapp.com")
  end

  def self.get_url(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end

  def self.all_states_cases
    get_url("/api/v1/disease_cases")
  end

  def self.cases_for_state(state)
    get_url("/api/v1/disease_cases?state=#{state.upcase}")
  end

  def self.articles_on_topic(disease)
    get_url("/api/v1/articles?disease=#{disease}")
  end

  def self.disease_info(disease)
    get_url("/api/v1/disease_info?disease=#{disease}")
  end

  def self.all_disease_info
    get_url("/api/v1/disease_info")
  end
  
  def self.save_article(user_id, article_id)
    JSON.parse(conn.post("/api/v1/user_articles/?user_id=#{user_id}&article_id=#{article_id}").body, symbolize_names: true)
  end

  def self.return_saved_articles(user_id)
    get_url("/api/v1/user_articles?user_id=#{user_id}")
  end

  def self.delete(article_id)
    conn.delete("/api/v1/user_articles/#{article_id}")
  end
end
