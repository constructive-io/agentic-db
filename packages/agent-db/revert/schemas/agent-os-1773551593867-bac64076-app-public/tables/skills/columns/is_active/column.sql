-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/columns/is_active/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".skills 
  DROP COLUMN is_active RESTRICT;


