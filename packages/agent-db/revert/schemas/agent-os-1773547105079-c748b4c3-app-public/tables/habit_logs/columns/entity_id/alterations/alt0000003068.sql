-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/columns/entity_id/alterations/alt0000003068


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".habit_logs 
  ALTER COLUMN entity_id DROP NOT NULL;


