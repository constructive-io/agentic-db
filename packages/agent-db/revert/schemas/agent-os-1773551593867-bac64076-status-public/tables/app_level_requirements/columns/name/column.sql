-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_level_requirements/columns/name/column


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_level_requirements 
  DROP COLUMN name RESTRICT;


