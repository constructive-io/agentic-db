-- Deploy: schemas/agentic_db_app_public/tables/memories/columns/title/alterations/alt0000000001
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/title/column


ALTER TABLE agentic_db_app_public.memories 
  ALTER COLUMN title SET NOT NULL;

