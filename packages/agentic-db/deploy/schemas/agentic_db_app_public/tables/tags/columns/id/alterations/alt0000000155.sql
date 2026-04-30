-- Deploy: schemas/agentic_db_app_public/tables/tags/columns/id/alterations/alt0000000155
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tags/table
-- requires: schemas/agentic_db_app_public/tables/tags/columns/id/column
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_app_public.tags 
  ALTER COLUMN id SET NOT NULL;

