-- Deploy: schemas/agentic_db_app_public/tables/memories/columns/content/alterations/alt0000003977
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/memories/columns/updated_at/alterations/alt0000003976


ALTER TABLE agentic_db_app_public.memories 
  ALTER COLUMN content SET NOT NULL;

