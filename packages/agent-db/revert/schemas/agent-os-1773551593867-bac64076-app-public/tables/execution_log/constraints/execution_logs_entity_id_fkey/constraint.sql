-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/execution_log/constraints/execution_logs_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".execution_log 
  DROP CONSTRAINT execution_logs_entity_id_fkey;


