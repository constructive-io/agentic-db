-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/interactions/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".interactions 
  DROP COLUMN id RESTRICT;


