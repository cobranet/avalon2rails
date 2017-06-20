class LogsController < ApplicationController
  before_action :set_log, only: [:show, :update, :destroy]
  
  #GET /logs
  def index
    @logs = Log.all
    json_response(@logs)
  end
  #POST /logs
  def create
    @state = {
         appState: "JOIN_OR_CREATE",
         signIN: true
    }

    puts "####################################"
    puts params[:data][:email]
    puts "####################################"
    @log = Log.create!({ userid: params[:data][:email],
                         desc: "Logged"
                       })
    if( !User.exists?( userid: params[:data][:email]) )
      User.create!( { userid: params[:data][:email],
                      name: params[:data][:name],
                      image: params[:data][:picture][:data][:url]
                    })
    end
    if ( ActiveGame.exists?(userid: params[:data][:email]) )
      @state.game = {gameid: 1   }
    else
      
    end
    json_response(@state)
  end
  #GET logs/:id
  def show
    json_response(@log)
  end  
  def set_log
    @log = Log.find(params[:id])
  end    
  def logs_params
    params.permit(:data)
  end
end
