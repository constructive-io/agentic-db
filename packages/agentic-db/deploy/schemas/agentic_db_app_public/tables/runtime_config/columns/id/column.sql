-- Deploy: schemas/agentic_db_app_public/tables/runtime_config/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_config/table


ALTER TABLE agentic_db_app_public.runtime_config 
  ADD COLUMN id uuid;

