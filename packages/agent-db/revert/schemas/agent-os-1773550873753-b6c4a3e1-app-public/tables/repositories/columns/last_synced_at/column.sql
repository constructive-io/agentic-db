-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/repositories/columns/last_synced_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".repositories 
  DROP COLUMN last_synced_at RESTRICT;


