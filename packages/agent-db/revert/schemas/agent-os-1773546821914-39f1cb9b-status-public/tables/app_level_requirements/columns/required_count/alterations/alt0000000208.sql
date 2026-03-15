-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_level_requirements/columns/required_count/alterations/alt0000000208


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".app_level_requirements 
  ALTER COLUMN required_count DROP NOT NULL;


