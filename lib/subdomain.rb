class Subdomain
  def self.matches?(request)
    request.subdomain.present? && Company.all.collect(&:site_path).include?(request.subdomain)
  end
end