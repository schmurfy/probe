# unit: percents
CPUStruct = Struct.new(
    :user,
    :sys,
    :nice,
    :idle,
    :wait,
    :irq,
    :soft_irq,
    :stolen,
    :combined
  )

# unit: KB
MemStruct = Struct.new(
    :ram,             # Mb
    :total,
    :used,
    :free,
    :actual_used,
    :actual_free,
    :used_percent,
    :free_percent
  )

# unit: ??
ProcMemStruct = Struct.new(
    :size,
    :resident,
    :share,
    :minor_faults,
    :major_faults,
    :page_faults
  )

# unit: ??
ProcTimeStruct = Struct.new(
    :start_time,
    :user,
    :sys,
    :total
  )

ProcCpuStruct = Struct.new(
    :start_time,
    :user,
    :sys,
    :total,
    :percent
  )

ProcStateStruct = Struct.new(
    :name,
    :state,
    :ppid,
    :tty,
    :priority,
    :nice,
    :processor,
    :threads
  )

FSStruct = Struct.new(
    :dir_name,
    :dev_name,
    :type,
    :sys_type,
    :options,
    :flags
  )

DiskUsageStruct = Struct.new(
    :reads,
    :writes,
    :writes_KB,
    :reads_KB,
    :rtime,
    :wtime,
    :qtime,
    :time,
    :snaptime,
    :service_time,
    :queue
  )

# unit: KB
FSUsageStruct = Struct.new(
    :disk,
    :use_percent, # 0.10 => 10%
    :total,
    :free,
    :used,
    :available,
    :files,
    :free_files
  )

NetworkInfosStruct = Struct.new(
    :default_gateway,
    :default_gateway_interface,
    :hostname,
    :primary_dns,
    :secondary_dns
  )

NetworkAddressStruct = Struct.new(
    :family,
    :addr
  )

SysInfoStruct = Struct.new(
    :name,
    :version,
    :arch,
    :machine,
    :description,
    :patch_level,
    :vendor,
    :vendor_name,
    :vendor_version,
    :vendor_code_name
  )

NetworkRouteStruct = Struct.new(
    :destination,
    :gateway,
    :mask,
    :flags,
    :retfcnt,
    :use,
    :metric,
    :mtu,
    :window,
    :irtt,
    :ifname
  )

NetInterfaceState = Struct.new(
    # received
    :rx_packets,
    :rx_bytes,
    :rx_errors,
    :rx_dropped,
    :rx_overruns,
    :rx_frame,
    
    # transmitted
    :tx_packets,
    :tx_bytes,
    :tx_errors,
    :tx_dropped,
    :tx_overruns,
    :tx_collisions,
    :tx_carrier,
    
    :speed
  )

# unit: MB
SwapStruct = Struct.new(
    # :total,
    :used,
    # :free,
    :page_in,
    :page_out
  )

# unit: none
LoadAvgStruct = Struct.new(
    :min1,
    :min5,
    :min15
  )

CPUInfoStruct = Struct.new(
    :vendor,
    :model,
    :mhz,
    # :mhz_max,
    # :mhz_min,
    :cache_size,
    # :total_sockets,
    :total_cores,
    # :cores_per_socket
  )
