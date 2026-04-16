-- Deploy: schemas/agentic_db_app_public/tables/notes_chunks/columns/content/alterations/alt0000000101
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes_chunks/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/notes_chunks/columns/content/column


ALTER TABLE agentic_db_app_public.notes_chunks 
  ALTER COLUMN content SET NOT NULL;

