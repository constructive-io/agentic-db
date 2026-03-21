-- Deploy: schemas/agentic_db_status_public/tables/org_level_requirements/columns/created_at/alterations/alt0000003379
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_level_requirements/table
-- requires: schemas/agentic_db_status_public/tables/org_level_requirements/columns/created_at/column


ALTER TABLE agentic_db_status_public.org_level_requirements 
  ALTER COLUMN created_at SET DEFAULT now();

