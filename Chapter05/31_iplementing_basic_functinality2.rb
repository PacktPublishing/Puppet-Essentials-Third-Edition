def destroy
  rm_device("--device-id=#{@property_hash[:id]}")
end
