class SistemaController < ApplicationController
    layout "sistema"
    before_action :authenticate_admin!
end
