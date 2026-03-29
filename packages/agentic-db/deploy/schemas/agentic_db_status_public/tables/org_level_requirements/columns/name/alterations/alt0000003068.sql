-- Deploy: schemas/agentic_db_status_public/tables/org_level_requirements/columns/name/alterations/alt0000003068
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_level_requirements/table
-- requires: schemas/agentic_db_status_public/tables/org_level_requirements/columns/name/column


ALTER TABLE agentic_db_status_public.org_level_requirements 
  ALTER COLUMN name SET NOT NULL;

