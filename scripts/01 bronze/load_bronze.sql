/*
===============================================================================
Load Bronze Layer (Source -> Bronze)
===============================================================================
Script Purpose:
    This script loads data into the 'bronze' schema from external CSV files.
    It performs the following actions:
    - Truncates the bronze tables before loading data.
    - Uses the `BULK INSERT` command to load data from csv Files to bronze tables.
===============================================================================
*/

USE DataWarehouse

TRUNCATE TABLE  bronze.crm_cust_info;
BULK INSERT bronze.crm_cust_info
FROM '/datasets/source_crm/cust_info.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
    );

TRUNCATE TABLE  bronze.crm_prd_info;
BULK INSERT bronze.crm_prd_info
FROM '/datasets/source_crm/prd_info.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
    );

TRUNCATE TABLE  bronze.crm_sales_details;
BULK INSERT bronze.crm_sales_details
FROM '/datasets/source_crm/sales_details.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
    );

TRUNCATE TABLE  bronze.erp_CUST_AZ12;
BULK INSERT bronze.erp_CUST_AZ12
FROM '/datasets/source_erp/CUST_AZ12.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
    );

TRUNCATE TABLE  bronze.erp_LOC_A101;
BULK INSERT bronze.erp_LOC_A101
FROM '/datasets/source_erp/LOC_A101.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
    );

TRUNCATE TABLE  bronze.erp_PX_CAT_G1V2;
BULK INSERT bronze.erp_PX_CAT_G1V2
FROM '/datasets/source_erp/PX_CAT_G1V2.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
    );
