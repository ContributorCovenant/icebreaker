# DependencyInstance.destroy_all
# Project.destroy_all
# Organization.destroy_all
# Dependency.destroy_all
# PackageManager.destroy_all
# Language.destroy_all
#
# ruby = Language.create(name: "Ruby")
# js = Language.create(name: "Javascript")
#
# ruby_package_manager = PackageManager.create(name: "RubyGems", language: ruby)
# js_package_manager = PackageManager.create(name: "NPM", language: js)
#
# org = Organization.create(name: "Palantir")
#
# %w{stormtrooper sith imperial bountyhunter}.each do |p|
#   Project.create(
#     name: p,
#     org_name: "palantir",
#     repo_name: p,
#     repo_url: "https://github.com/palantir/#{p}",
#     organization: org
#   )
# end
#
# %w{society snuffle rspec simplecov}.each do |p|
#   Dependency.create(
#     name: p,
#     language: "Ruby",
#     package_manager: ruby_package_manager
#   )
# end
#
# %w{browserify api react moment}.each do |p|
#   Dependency.create(
#     name: p,
#     language: "Javascript",
#     package_manager: js_package_manager
#   )
# end
#
# Project.all.each do |project|
#   Dependency.all.each_with_index do |dependency, i|
#     next unless [true, false].sample
#     DependencyInstance.create(project: project, dependency: dependency, version: "0.7.#{i}")
#   end
# end
