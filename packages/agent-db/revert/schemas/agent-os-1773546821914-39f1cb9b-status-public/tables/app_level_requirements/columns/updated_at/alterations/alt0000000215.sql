-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_level_requirements/columns/updated_at/alterations/alt0000000215


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".app_level_requirements 
  ALTER COLUMN updated_at DROP DEFAULT;


