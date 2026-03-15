-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_level_requirements/columns/name/alterations/alt0000000203


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".app_level_requirements 
  ALTER COLUMN name DROP NOT NULL;


