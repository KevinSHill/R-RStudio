# Installing sparklyR on AWS

## Create EMR
1. Go to the EMR console and create a cluster using the interface
   1. Go to advanced options and check Hadoop, Spark, Hive, Pig, Tez, Ganglia for install, select Next
   2. Select Hardware for the Cluster, select Next
   3. Under General Cluster Settings select Bootstrap Actions and add the following: s3://aws-bigdata-blog/artifacts/aws-blog-emr-rstudio-sparklyr/rstudio_sparklyr_emr5.sh --sparklyr --rstudio --shiny --sparkr --rexamples --plyrmr

In part iii you can  login and install manually if you want, depending on how hold the s3 bucket gets. Upgrade R studio it is usually more up to date than the bucket: https://www.rstudio.com/products/rstudio/download-server/
