-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skills/columns/is_active/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".skills 
  DROP COLUMN is_active RESTRICT;


