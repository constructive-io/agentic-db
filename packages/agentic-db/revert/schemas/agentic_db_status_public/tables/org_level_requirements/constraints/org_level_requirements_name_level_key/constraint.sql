-- Revert: schemas/agentic_db_status_public/tables/org_level_requirements/constraints/org_level_requirements_name_level_key/constraint


ALTER TABLE agentic_db_status_public.org_level_requirements 
  DROP CONSTRAINT org_level_requirements_name_level_key;


