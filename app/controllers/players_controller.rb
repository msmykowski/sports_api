class PlayersController < ApplicationController
  def player
    render json: Player.find(params[:player_id])
  end

  def top_ten
    ppg = Player.order(ppg: :desc).limit(10)
    rpg = Player.order(rpg: :desc).limit(10)
    apg = Player.order(apg: :desc).limit(10)
    spg = Player.order(spg: :desc).limit(10)
    bpg = Player.order(bpg: :desc).limit(10)
    fg = Player.order(fg: :desc).limit(10)
    gp = Player.order(gp: :desc).limit(10)
    ft = Player.order(ft: :desc).limit(10)

    top_ten = {ppg: ppg, rpg: rpg, apg: apg, spg: spg, bpg: bpg, fg: fg, gp: gp, ft: ft}
    render json: top_ten
  end
end
