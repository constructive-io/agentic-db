-- Deploy: schemas/agentic_db_status_public/tables/org_level_requirements/columns/required_count/alterations/alt0000001865
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_status_public/tables/org_level_requirements/table
-- requires: schemas/agentic_db_status_public/tables/org_level_requirements/columns/required_count/column


ALTER TABLE agentic_db_status_public.org_level_requirements 
  ALTER COLUMN required_count SET NOT NULL;

