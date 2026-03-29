-- Revert: schemas/agentic_db_status_public/tables/org_level_requirements/columns/level/alterations/alt0000003070


ALTER TABLE agentic_db_status_public.org_level_requirements 
  ALTER COLUMN level DROP NOT NULL;


