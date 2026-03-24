-- Revert: schemas/agentic_db_status_public/tables/org_level_requirements/columns/created_at/alterations/alt0000001871


ALTER TABLE agentic_db_status_public.org_level_requirements 
  ALTER COLUMN created_at DROP DEFAULT;


