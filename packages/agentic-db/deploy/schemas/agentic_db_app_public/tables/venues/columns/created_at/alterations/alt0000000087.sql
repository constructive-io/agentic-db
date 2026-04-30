-- Deploy: schemas/agentic_db_app_public/tables/venues/columns/created_at/alterations/alt0000000087
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/venues/columns/created_at/column


ALTER TABLE agentic_db_app_public.venues 
  ALTER COLUMN created_at SET NOT NULL;

