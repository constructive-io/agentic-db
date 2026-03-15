-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/execution_log/constraints/execution_logs_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".execution_log 
  DROP CONSTRAINT execution_logs_entity_id_fkey;


