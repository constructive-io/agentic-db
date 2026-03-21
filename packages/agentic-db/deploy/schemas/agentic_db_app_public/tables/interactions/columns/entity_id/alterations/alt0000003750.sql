-- Deploy: schemas/agentic_db_app_public/tables/interactions/columns/entity_id/alterations/alt0000003750
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions/table
-- requires: schemas/agentic_db_app_public/tables/notes/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/interactions/columns/entity_id/column


ALTER TABLE agentic_db_app_public.interactions 
  ALTER COLUMN entity_id SET NOT NULL;

