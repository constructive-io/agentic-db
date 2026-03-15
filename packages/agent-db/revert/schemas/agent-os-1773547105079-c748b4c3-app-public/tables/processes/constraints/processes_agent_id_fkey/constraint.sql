-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/processes/constraints/processes_agent_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".processes 
  DROP CONSTRAINT processes_agent_id_fkey;


