-- Deploy: schemas/agentic_db_app_public/tables/notes_chunks/columns/created_at/alterations/alt0000000105
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes_chunks/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/notes_chunks/columns/created_at/column


ALTER TABLE agentic_db_app_public.notes_chunks 
  ALTER COLUMN created_at SET DEFAULT now();

