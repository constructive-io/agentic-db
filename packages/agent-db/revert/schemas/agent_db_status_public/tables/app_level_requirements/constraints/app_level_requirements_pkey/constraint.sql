-- Revert: schemas/agent_db_status_public/tables/app_level_requirements/constraints/app_level_requirements_pkey/constraint


ALTER TABLE agent_db_status_public.app_level_requirements 
  DROP CONSTRAINT app_level_requirements_pkey;


