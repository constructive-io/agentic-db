-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_level_requirements/constraints/app_level_requirements_name_level_key/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".app_level_requirements 
  DROP CONSTRAINT app_level_requirements_name_level_key;


