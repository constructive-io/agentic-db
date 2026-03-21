-- Revert: schemas/agentic_db_status_public/tables/org_level_requirements/columns/id/alterations/alt0000003366


ALTER TABLE agentic_db_status_public.org_level_requirements 
  ALTER COLUMN id DROP NOT NULL;


