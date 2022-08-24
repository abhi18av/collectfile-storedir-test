params.base_path =  "./"
params.collect_file_name = "samplesheet.csv"

ch_samples = Channel.value( "minimal,example,failing" )

ch_samples.collectFile(newLine: true, sort: false, storeDir: params.base_path , name: params.collect_file_name)

Channel.fromPath("${params.base_path}/${params.collect_file_name}").view()
