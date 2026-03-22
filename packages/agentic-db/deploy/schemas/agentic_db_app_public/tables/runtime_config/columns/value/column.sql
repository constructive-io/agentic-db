-- Deploy: schemas/agentic_db_app_public/tables/runtime_config/columns/value/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_config/table
-- requires: schemas/agentic_db_app_public/tables/runtime_config/columns/key/alterations/alt0000006048


ALTER TABLE agentic_db_app_public.runtime_config 
  ADD COLUMN value jsonb;

