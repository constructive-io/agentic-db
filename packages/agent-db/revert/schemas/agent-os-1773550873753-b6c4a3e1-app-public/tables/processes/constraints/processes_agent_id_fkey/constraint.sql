-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/processes/constraints/processes_agent_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".processes 
  DROP CONSTRAINT processes_agent_id_fkey;


