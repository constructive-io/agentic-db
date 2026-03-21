-- Deploy: schemas/agentic_db_app_public/tables/files/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/files/table
-- requires: schemas/agentic_db_app_public/tables/repositories/columns/embedding/column


ALTER TABLE agentic_db_app_public.files 
  ADD COLUMN entity_id uuid;

