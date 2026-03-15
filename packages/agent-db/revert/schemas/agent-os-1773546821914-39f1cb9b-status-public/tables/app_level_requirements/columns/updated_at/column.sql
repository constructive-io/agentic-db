-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_level_requirements/columns/updated_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".app_level_requirements 
  DROP COLUMN updated_at RESTRICT;


