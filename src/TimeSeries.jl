using  DataFrames, DataArrays, Datetime

module TimeSeries

using  DataFrames, DataArrays, Datetime

export readtime, 
       moving,  
       lag,  
       lead,
       log_return, 
       simple_return, 
       equity, 
       upto, 
       byyear,
       bymonth,
       byday,
       bydow,
       byhour,
       byminute,
       bysecond,
       byweek,
       bydoy,
       gtrows,
       ltrows,
       gterows,
       lterows,
       eqrows,
# mutate DataFrame versions
       moving!,
       lag!,
       lead!,
       log_return!,
       simple_return!,
       equity!,
       upto!,
## aliases
       lip, 
       lips, 
       sip, 
       sips, 
## utilis
      pad,
## testing
       @timeseries

################## include files #####################

include("bydate.jl")
include("io.jl")
include("moving.jl")
include("lag.jl")
include("returns.jl")
include("upto.jl")
include("utils.jl")
include("testtimeseries.jl")

################## deprecations #######################

Base.@deprecate read_time readtime
Base.@deprecate indexyear byyear
Base.@deprecate indexmonth bymonth
Base.@deprecate indexday byday
Base.@deprecate indexdow bydow

end  #of module
