-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_levels/columns/updated_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".app_levels 
  DROP COLUMN updated_at RESTRICT;


