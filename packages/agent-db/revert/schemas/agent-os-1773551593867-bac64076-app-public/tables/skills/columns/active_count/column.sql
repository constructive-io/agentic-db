-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/columns/active_count/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".skills 
  DROP COLUMN active_count RESTRICT;


