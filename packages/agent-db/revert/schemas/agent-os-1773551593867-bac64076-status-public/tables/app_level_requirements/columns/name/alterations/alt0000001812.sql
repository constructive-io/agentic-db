-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_level_requirements/columns/name/alterations/alt0000001812


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_level_requirements 
  ALTER COLUMN name DROP NOT NULL;


