require 'dota/utils/inspectable'

module Dota
  class PlayerBan
    include Utils::Inspectable
    attr_reader :raw_player_ban

    # Initializes a new PlayerBan object
    #
    # @param raw_player_ban [Hash]
    def initialize(raw_player_ban)
      @raw_player_ban = raw_player_ban
    end

    # The player's Steam 64 bit ID
    #
    # @return [Integer]
    def steam_id
      raw_player_ban['SteamId'].to_i
    end

    # Is community banned
    #
    # @return [Boolean]
    def community_banned?
      raw_player_ban['CommunityBanned']
    end

    # Is community banned
    #
    # @return [Boolean]
    def vac_banned?
      raw_player_ban['VACBanned']
    end

    # String containing the player's ban status in the economy.
    #
    # @return [String]
    def economy_banned_status
      raw_player_ban['EconomyBan']
    end
  end
end