-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/columns/active_count/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".memories 
  DROP COLUMN active_count RESTRICT;


