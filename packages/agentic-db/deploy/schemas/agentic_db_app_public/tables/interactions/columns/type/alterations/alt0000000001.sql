-- Deploy: schemas/agentic_db_app_public/tables/interactions/columns/type/alterations/alt0000000001
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions/table
-- requires: schemas/agentic_db_app_public/tables/interactions/columns/type/column


ALTER TABLE agentic_db_app_public.interactions 
  ALTER COLUMN type SET NOT NULL;

