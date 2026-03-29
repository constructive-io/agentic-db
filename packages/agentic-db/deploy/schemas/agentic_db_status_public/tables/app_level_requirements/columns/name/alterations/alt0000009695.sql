-- Deploy: schemas/agentic_db_status_public/tables/app_level_requirements/columns/name/alterations/alt0000009695
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_level_requirements/table
-- requires: schemas/agentic_db_status_public/tables/app_level_requirements/columns/name/column


ALTER TABLE agentic_db_status_public.app_level_requirements 
  ALTER COLUMN name SET NOT NULL;

