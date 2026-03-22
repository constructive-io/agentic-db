-- Deploy: schemas/agentic_db_app_public/tables/runtime_config/columns/is_secret/alterations/alt0000001405
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_config/table
-- requires: schemas/agentic_db_app_public/tables/runtime_config/columns/is_secret/column
-- requires: schemas/agentic_db_app_public/tables/runtime_config/columns/description/column



ALTER TABLE "agentic_db_app_public".runtime_config 
    ALTER COLUMN is_secret SET DEFAULT false;

