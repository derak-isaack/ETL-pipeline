## <div style="padding: 20px;color:white;margin:10;font-size:90%;text-align:left;display:fill;border-radius:10px;overflow:hidden;background-image: url(https://w0.peakpx.com/wallpaper/957/661/HD-wallpaper-white-marble-white-stone-texture-marble-stone-background-white-stone.jpg)"><b><span style='color:black'> EAST AFRICA AIR QUALITY PREDICTION</span></b> </div>

![snowflake](https://img.shields.io/badge/Snowflake-29B5E8?logo=snowflake&logoColor=fff&style=for-the-badge)
![Python](https://img.shields.io/badge/Python-3776AB?logo=python&logoColor=fff&style=for-the-badge)
![Jupyter](https://img.shields.io/badge/Jupyter-F37626?logo=jupyter&logoColor=fff&style=for-the-badge)
![Scikit-learn](https://img.shields.io/badge/scikit--learn-F7931E?logo=scikitlearn&logoColor=fff&style=for-the-badge)
![DataBuildTool](https://img.shields.io/badge/dbt-FF694B?logo=dbt&logoColor=fff&style=for-the-badge)
![Numpy](https://img.shields.io/badge/NumPy-013243?logo=numpy&logoColor=fff&style=for-the-badge)
![SQL](https://img.shields.io/badge/SQLite-003B57?logo=sqlite&logoColor=fff&style=for-the-badge)
![Jinja](https://img.shields.io/badge/Jinja-B41717?logo=jinja&logoColor=fff&style=for-the-badge)
![AWS](https://img.shields.io/badge/Amazon%20AWS-232F3E?logo=amazonaws&logoColor=fff&style=for-the-badge)


### <b><ins><span style='color:black'> Overview</span></ins></b> </div>

**Data pipelines** offer a wider range of benefits especially for organization that is data-driven. It typically involves data ingestion using various tools from cloud storage platforms(**Airbyte & Datadoo**), loading into a given database(**Snowflake, Redshift & Postgress**) and later transformation(**DataBuildTool**) depending on the company need basis and tasks at hand. The benefits include:

* Data quality, integrity and security in the sense that data is ingested as a whole without any interruptions.
* Allows flexibility in that pipelines can be changed to suit specific workflows for any given task.
* Scalability. Data from several sources often grows in time especially when an organization customer base grows exponentially and storage hardware may become a challenge. Data pipelines offer scalability without compromising on security and integrity.

There are two data pipeline architectures namely the **ETL(Extract-Transform-Load)** and the modern **ELT(Extract-Load-Transform)** which offers scalability and is more cost effective because it eliminates the need for a separate `Transformation` process and offers storage optimization given that transformation will be on a need basis. 

### <b><ins><span style='color:black'> Task 1(Data Pipeline)</span></ins></b> </div>

Provided with data about several factors(80 factors) that influence and affect the air quality in terms of the particulate matter, data pipelines come in handy because they offer integrity and scalability. 

1. Data publication to an `AWS` S3 bucket 
2. Data ingestion by `Snowflake` for loading into a database.
3. Data transformation by `DBT` to make it available for further analysis and machine learning.

`Snowflake` has a lot of data scalability by how it handles continuous growing data. Combined with the `DataBuildTool` it is even more robust because the SQL queries for transforming the data can be chained together to ensure clean data for the analysis team. This transformation tool also offers a very powerful unique method of querying databases using `Common Table Expression` which have clear code readability(easy debugging) than subqueries, improved query performance and the temporary tables can be called over and over again especially in bigger complicated queries. 

The data contained air pollutants information for three major cities namely Lagos, Nairobi and Kampala across various locations. Transformation was doen by filtering data to obtain the data for Kampala and Nairobi separately for purposes of particulate matter prediction. The models can be found [here](Air/models) and can be added depending on the objectives. 

To connect `snowflake` and `DBT`, installing [dbt-snowflake](https://pypi.org/project/dbt-snowflake/), [dbt-postgres](https://pypi.org/project/dbt-postgres/) or [dbt-redshift](https://pypi.org/project/dbt-redshift/) depending on the user needs. 

To get started with [dbt](https://docs.getdbt.com/docs/introduction), run the commands **dbt init** to initialize the project, **dbt debug** to test the database connection and **dbt-run** to execute the compiled SQL files. 

### <b><ins><span style='color:blue'> Task 2(Time Series Modelling)</span></ins></b> 

The transformed data can be found [here](data) for further analysis and machine learning to determine the future particulate matter in the air. This prediction stage is necesary as it helps the medicare industries and respective governments at large to anticipate for any future illness among its citizens. This helps in proper planning of the required ammenities to cater for any eventuality. 

To get accurate predictions, it is essential to use models specifilly built for time series prediction such as [tsfresh](https://pypi.org/project/tsfresh/) and [sktime](https://pypi.org/project/sktime/). To get even better results, boosting algorithms can be incorporated into these models because they are able to learn the complex relationships in data and also use the ensemble approach. 

 ![Kampala Particulate matter trend](<kampala Chart.png>)
 ![Nairobi Particulate matter trend](<Nairobi chart.png>)





