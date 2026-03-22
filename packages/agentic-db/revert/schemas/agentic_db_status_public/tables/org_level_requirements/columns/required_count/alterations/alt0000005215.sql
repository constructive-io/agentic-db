-- Revert: schemas/agentic_db_status_public/tables/org_level_requirements/columns/required_count/alterations/alt0000005215


ALTER TABLE agentic_db_status_public.org_level_requirements 
  ALTER COLUMN required_count DROP NOT NULL;


