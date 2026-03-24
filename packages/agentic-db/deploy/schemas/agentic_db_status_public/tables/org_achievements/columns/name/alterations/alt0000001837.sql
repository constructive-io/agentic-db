-- Deploy: schemas/agentic_db_status_public/tables/org_achievements/columns/name/alterations/alt0000001837
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_achievements/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_status_public/tables/org_achievements/columns/name/column


ALTER TABLE agentic_db_status_public.org_achievements 
  ALTER COLUMN name SET NOT NULL;

