-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/interactions/columns/sentiment/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".interactions 
  DROP COLUMN sentiment RESTRICT;


