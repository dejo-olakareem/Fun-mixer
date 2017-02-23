module EventsHelper
	def url
		selfy = "https://s-media-cache-ak0.pinimg.com/originals/b7/d9/d8/b7d9d84947471d0494ef1818b7fd0b97.jpg"
		party = " https://img3.goodfon.su/wallpaper/big/7/65/girl-beach-summer-party-3590.jpg"
		pool = "https://i.ytimg.com/vi/7fN13E_JuWw/maxresdefault.jpg"
		real = [selfy,party,pool].sample
		return real
	end


	def addy(address)
		arr = address.split(",")
	end
end
