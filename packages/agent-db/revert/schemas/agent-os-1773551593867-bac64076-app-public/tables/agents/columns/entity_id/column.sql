-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/agents/columns/entity_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agents 
  DROP COLUMN entity_id RESTRICT;


