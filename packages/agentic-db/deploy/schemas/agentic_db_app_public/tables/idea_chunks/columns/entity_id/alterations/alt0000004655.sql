-- Deploy: schemas/agentic_db_app_public/tables/idea_chunks/columns/entity_id/alterations/alt0000004655
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/idea_chunks/table
-- requires: schemas/agentic_db_app_public/tables/templates/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/idea_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.idea_chunks 
  ALTER COLUMN entity_id SET NOT NULL;

