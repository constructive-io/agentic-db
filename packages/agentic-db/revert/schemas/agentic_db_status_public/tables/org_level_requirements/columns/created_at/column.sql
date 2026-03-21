-- Revert: schemas/agentic_db_status_public/tables/org_level_requirements/columns/created_at/column


ALTER TABLE agentic_db_status_public.org_level_requirements 
  DROP COLUMN created_at RESTRICT;


