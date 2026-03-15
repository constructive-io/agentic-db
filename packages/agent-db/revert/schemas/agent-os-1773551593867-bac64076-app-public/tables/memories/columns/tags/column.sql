-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/columns/tags/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".memories 
  DROP COLUMN tags RESTRICT;


