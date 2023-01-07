class DiseaseCaseService
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
end