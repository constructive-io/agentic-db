-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/interactions/columns/occurred_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".interactions 
  DROP COLUMN occurred_at RESTRICT;


