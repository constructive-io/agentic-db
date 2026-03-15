-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_level_requirements/columns/priority/alterations/alt0000000211


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".app_level_requirements 
  ALTER COLUMN priority DROP NOT NULL;


