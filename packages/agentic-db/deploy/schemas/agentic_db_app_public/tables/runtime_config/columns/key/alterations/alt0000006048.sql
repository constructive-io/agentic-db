-- Deploy: schemas/agentic_db_app_public/tables/runtime_config/columns/key/alterations/alt0000006048
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_config/table
-- requires: schemas/agentic_db_app_public/tables/runtime_config/columns/key/column
-- requires: schemas/agentic_db_app_public/tables/runtime_config/columns/updated_at/alterations/alt0000006047


ALTER TABLE agentic_db_app_public.runtime_config 
  ALTER COLUMN key SET NOT NULL;

