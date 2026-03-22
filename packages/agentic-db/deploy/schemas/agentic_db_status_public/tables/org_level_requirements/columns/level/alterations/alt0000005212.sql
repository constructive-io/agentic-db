-- Deploy: schemas/agentic_db_status_public/tables/org_level_requirements/columns/level/alterations/alt0000005212
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_level_requirements/table
-- requires: schemas/agentic_db_status_public/tables/org_level_requirements/columns/level/column


ALTER TABLE agentic_db_status_public.org_level_requirements 
  ALTER COLUMN level SET NOT NULL;

