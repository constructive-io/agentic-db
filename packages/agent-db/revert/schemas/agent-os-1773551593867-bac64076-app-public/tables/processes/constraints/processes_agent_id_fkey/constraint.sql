-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/processes/constraints/processes_agent_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".processes 
  DROP CONSTRAINT processes_agent_id_fkey;


