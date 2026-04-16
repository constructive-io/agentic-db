-- Deploy: schemas/agentic_db_app_public/tables/interactions/columns/updated_at/alterations/alt0000015277
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/interactions/columns/updated_at/column


ALTER TABLE agentic_db_app_public.interactions 
  ALTER COLUMN updated_at SET NOT NULL;

