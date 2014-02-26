class AwayTeams

  def initialize
  	@trekkers = ["James T. Kirk", "Spock", "Leonard McCoy - (Bones)", "Montgomery Scott",
  	             "Nyota Uhura", "Hikaru Sulu", "Pavel Chekov", "Jean-Luc Picard", 
  	             "William Riker", "Deanna Troi", "Beverly Crusher", "Data", 
  	             "Geordi La Forge", "Worf", "Tasha Yar", "Wesley Crusher"]
  end

  def away_team_randomizer
    all_pairs = @trekkers.product(@trekkers)

    has_nils = all_pairs.collect {|pair| unless pair[0] == pair[1] then pair end}
    with_mirror_pairs = has_nils.compact

    remove_mirror_pairs = with_mirror_pairs.collect {|pair| pair.sort}
    away_team_pairs = remove_mirror_pairs.uniq
    
    away_team = away_team_pairs.shuffle.first
    
  	puts "Computer, who should go on the away-team?"
  	puts "\n"
  	puts "Computer responds with: " "\n" "#{away_team[0]} and #{away_team[1]} should go on the mission."
  end
  
end

mission = AwayTeams.new
mission.away_team_randomizer
