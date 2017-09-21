$resource_hash = hiera('services', {})
create_resources('service', $resource_hash)

