-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skills/columns/last_accessed_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".skills 
  DROP COLUMN last_accessed_at RESTRICT;


