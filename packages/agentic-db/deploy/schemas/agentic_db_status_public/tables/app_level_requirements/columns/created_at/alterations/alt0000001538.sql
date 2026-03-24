-- Deploy: schemas/agentic_db_status_public/tables/app_level_requirements/columns/created_at/alterations/alt0000001538
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_status_public/tables/app_level_requirements/table
-- requires: schemas/agentic_db_status_public/tables/app_level_requirements/columns/created_at/column


ALTER TABLE agentic_db_status_public.app_level_requirements 
  ALTER COLUMN created_at SET DEFAULT now();

