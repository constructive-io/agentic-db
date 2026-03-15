-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_level_requirements/columns/description/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".app_level_requirements 
  DROP COLUMN description RESTRICT;


