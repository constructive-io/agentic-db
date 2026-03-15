-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/agents/columns/mood/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agents 
  DROP COLUMN mood RESTRICT;


