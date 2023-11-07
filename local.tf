locals {
  time = lower(format("%ss", module.time_module.output_time))
}