-- Deploy: schemas/agentic_db_app_public/tables/processes/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/processes/table
-- requires: schemas/agentic_db_app_public/tables/blueprints/columns/embedding/column


ALTER TABLE agentic_db_app_public.processes 
  ADD COLUMN entity_id uuid;

