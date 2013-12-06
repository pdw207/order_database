module ProductsHelper
	def select_artist_edit		
		select(:product, :artist_id, Artist.all.map {|a| [ a.nombre, a.id ] })
	end

	def select_artist_new		
		select(:product, :artist_id, Artist.all.map {|a| [ a.nombre, a.id ] }, selected: Product.last.artist_id)
	end
	
	def select_design_edit
		select(:product, :design_id, Design.all.map {|a| [ a.nombre, a.id ] })
	end

	def select_design_new
		select(:product, :design_id, Design.all.map {|a| [ a.nombre, a.id ] }, selected: Product.last.design_id)
	end
	def select_location_new
		select(:product, :location_id, Location.all.map {|a| [ a.location, a.id ] }, selected: 1)
	end

	def select_location_edit
		select(:product, :location_id, Location.all.map {|a| [ a.location, a.id ] })
	end

end
