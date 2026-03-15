-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_level_requirements/columns/created_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".app_level_requirements 
  DROP COLUMN created_at RESTRICT;


