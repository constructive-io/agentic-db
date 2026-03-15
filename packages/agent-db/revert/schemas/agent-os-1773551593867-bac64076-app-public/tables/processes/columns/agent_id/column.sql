-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/processes/columns/agent_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".processes 
  DROP COLUMN agent_id RESTRICT;


