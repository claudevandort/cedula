require 'nokogiri'
require 'open-uri'
require 'openssl'

class Cedula
	def initialize(rut)
		@rut = rut
	end

	def valid?(serial)
		registro_civil_url = "https://portal.sidiv.registrocivil.cl/docstatus?RUN=#{@rut}&type=CEDULA&serial=#{serial}"
    doc = Nokogiri::HTML(open(registro_civil_url, {ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE}))
    doc.css('#tableResult > tbody > tr > td.setWidthOfSecondColumn').text == 'Vigente'
	end
end