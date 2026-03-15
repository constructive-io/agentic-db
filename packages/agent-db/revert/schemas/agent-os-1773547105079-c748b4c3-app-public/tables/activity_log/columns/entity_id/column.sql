-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/activity_log/columns/entity_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".activity_log 
  DROP COLUMN entity_id RESTRICT;


