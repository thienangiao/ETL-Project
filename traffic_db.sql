-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/v5ePKt
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

DROP TABLE traffic_volume;
DROP TABLE hourly_volume;
DROP TABLE hmgns_flow;

CREATE TABLE "traffic_volume" (
    "tis_id" INT   NOT NULL,
    "hmgns_lnk_id" INT   NOT NULL,
    "hmgns_flow_id" INT   NOT NULL,
    "lga_short_nm" VARCHAR(30)   NOT NULL,
    "rgn_long_nm" VARCHAR(255)   NOT NULL,
    "road_nbr" INT   NOT NULL,
    "daily_avg_vehicles" INT   NOT NULL,
    "flow" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_traffic_volume" PRIMARY KEY (
        "tis_id"
     )
);

CREATE TABLE "hmgns_flow" (
    "tis_id" INT   NOT NULL,
    "tis_route_" INT   NOT NULL,
    "tis_desc" VARCHAR   NOT NULL,
    "midpnt_lat" VARCHAR   NOT NULL,
    "midpnt_lon" VARCHAR   NOT NULL,
    "dt_modifie" VARCHAR   NOT NULL,
    "dt_created" VARCHAR   NOT NULL,
    "hmgns_fl_1" VARCHAR   NOT NULL,
    "road_nbr" INT   NOT NULL,
    "lrs_road_1" VARCHAR   NOT NULL
);

CREATE TABLE "hourly_volume" (
    "hmgns_lnk_id" INT   NOT NULL,
    "hmgns_flow_id" INT   NOT NULL,
    "period_type" VARCHAR(30)   NOT NULL,
    "day" VARCHAR(15)   NOT NULL,
    "t00" INT   NOT NULL,
    "t01" INT   NOT NULL,
    "t02" INT   NOT NULL,
    "t03" INT   NOT NULL,
    "t04" INT   NOT NULL,
    "t05" INT   NOT NULL,
    "t06" INT   NOT NULL,
    "t07" INT   NOT NULL,
    "t08" INT   NOT NULL,
    "t09" INT   NOT NULL,
    "t10" INT   NOT NULL,
    "t11" INT   NOT NULL,
    "t12" INT   NOT NULL,
    "t13" INT   NOT NULL,
    "t14" INT   NOT NULL,
    "t15" INT   NOT NULL,
    "t16" INT   NOT NULL,
    "t17" INT   NOT NULL,
    "t18" INT   NOT NULL,
    "t19" INT   NOT NULL,
    "t20" INT   NOT NULL,
    "t21" INT   NOT NULL,
    "t22" INT   NOT NULL,
    "t23" INT   NOT NULL
);
