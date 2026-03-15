-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/processes/constraints/processes_agent_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".processes 
  DROP CONSTRAINT processes_agent_id_fkey;


