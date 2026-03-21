-- Deploy: schemas/agentic_db_app_public/tables/notes/columns/content/alterations/alt0000003745
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_public/tables/notes/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/notes/columns/updated_at/alterations/alt0000003744


ALTER TABLE agentic_db_app_public.notes 
  ALTER COLUMN content SET NOT NULL;

