-- Deploy: schemas/agentic_db_status_public/tables/app_level_requirements/columns/updated_at/alterations/alt0000001384
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_level_requirements/table
-- requires: schemas/agentic_db_status_public/tables/app_level_requirements/columns/updated_at/column


ALTER TABLE agentic_db_status_public.app_level_requirements 
  ALTER COLUMN updated_at SET DEFAULT now();

