-- Deploy: schemas/agentic_db_app_public/tables/notes/columns/id/alterations/alt0000000740
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_public/tables/notes/columns/id/column
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_app_public.notes 
  ALTER COLUMN id SET NOT NULL;

