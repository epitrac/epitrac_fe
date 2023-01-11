class EpitracService
  def self.conn
    Faraday.new(url: "https://epitrac-be.herokuapp.com")
    # Faraday.new(url: "http://localhost:3000")
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

  def self.user_articles(user_id)
    get_url("/api/v1/user_articles?user_id=#{user_id}")
  end

  def self.delete_user_article(user_article_id)
    conn.delete("/api/v1/user_articles/#{user_article_id}")
  end

  def self.create_user_article(user_id, article_id)
    conn.post("/api/v1/user_articles/?user_id=#{user_id}&article_id=#{article_id}")
  end
end
