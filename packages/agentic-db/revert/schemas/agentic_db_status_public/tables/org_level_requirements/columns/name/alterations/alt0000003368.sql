-- Revert: schemas/agentic_db_status_public/tables/org_level_requirements/columns/name/alterations/alt0000003368


ALTER TABLE agentic_db_status_public.org_level_requirements 
  ALTER COLUMN name DROP NOT NULL;


