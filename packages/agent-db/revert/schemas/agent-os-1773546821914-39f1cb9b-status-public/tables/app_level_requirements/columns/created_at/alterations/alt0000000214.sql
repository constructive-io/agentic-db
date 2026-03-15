-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_level_requirements/columns/created_at/alterations/alt0000000214


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".app_level_requirements 
  ALTER COLUMN created_at DROP DEFAULT;


