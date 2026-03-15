-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/images/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".images 
  DROP COLUMN embedding RESTRICT;


