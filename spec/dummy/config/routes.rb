Rails.application.routes.draw do
  mount InertiaRails::Engine => "/inertia-rails"

  get 'props' => 'inertia_render_test#props'
  get 'view_data' => 'inertia_render_test#view_data'
  get 'component' => 'inertia_render_test#component'
  get 'share' => 'inertia_share_test#share'
  get 'share_with_inherited' => 'inertia_child_share_test#share_with_inherited'
  get 'empty_test' => 'inertia_test#empty_test'
  get 'with_different_layout' => 'inertia_test#with_different_layout'
  get 'redirect_test' => 'inertia_test#redirect_test'
  get 'inertia_request_test' => 'inertia_test#inertia_request_test'
  get 'inertia_partial_request_test' => 'inertia_test#inertia_partial_request_test'
  post 'redirect_with_responders' => 'inertia_responders_test#redirect_test'
  post 'redirect_test' => 'inertia_test#redirect_test'
  patch 'redirect_test' => 'inertia_test#redirect_test'
  put 'redirect_test' => 'inertia_test#redirect_test'
  delete 'redirect_test' => 'inertia_test#redirect_test'
  get 'my_location' => 'inertia_test#my_location'
  get 'share_multithreaded' => 'inertia_multithreaded_share#share_multithreaded'
  get 'share_multithreaded_error' => 'inertia_multithreaded_share#share_multithreaded_error'
  get 'redirect_with_inertia_errors' => 'inertia_test#redirect_with_inertia_errors'
  post 'redirect_with_inertia_errors' => 'inertia_test#redirect_with_inertia_errors'
  post 'redirect_back_with_inertia_errors' => 'inertia_test#redirect_back_with_inertia_errors'
  get 'error_404' => 'inertia_test#error_404'
  get 'error_500' => 'inertia_test#error_500'
  get 'content_type_test' => 'inertia_test#content_type_test'
  get 'lazy_props' => 'inertia_render_test#lazy_props'
  get 'non_inertiafied' => 'inertia_test#non_inertiafied'

  get 'instance_props_test' => 'inertia_rails_mimic#instance_props_test'
  get 'default_render_test' => 'inertia_rails_mimic#default_render_test'
  get 'default_component_test' => 'inertia_rails_mimic#default_component_test'
  get 'provided_props_test' => 'inertia_rails_mimic#provided_props_test'

  inertia 'inertia_route' => 'TestComponent'

  get 'merge_shared' => 'inertia_merge_shared#merge_shared'
end
