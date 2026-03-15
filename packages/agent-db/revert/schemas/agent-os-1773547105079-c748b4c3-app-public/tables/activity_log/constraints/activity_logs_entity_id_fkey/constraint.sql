-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/activity_log/constraints/activity_logs_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".activity_log 
  DROP CONSTRAINT activity_logs_entity_id_fkey;


