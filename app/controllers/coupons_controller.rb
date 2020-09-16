class CouponsController < ApplicationController

    def index 

        @coupons = Coupon.all

    end

    def show

        @coupon = Coupon.find(params[:id])

    end

    def create
        new_store = params["coupon"]["store"]
        new_coupon_code = params["coupon"]["coupon_code"]

        new_coupon = Coupon.create(store: new_store, coupon_code: new_coupon_code)
        
        redirect_to coupon_path(new_coupon)
    end

    def new

    end

end
