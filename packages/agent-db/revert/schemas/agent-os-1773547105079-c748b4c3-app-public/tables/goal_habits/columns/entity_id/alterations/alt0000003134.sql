-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goal_habits/columns/entity_id/alterations/alt0000003134


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".goal_habits 
  ALTER COLUMN entity_id DROP NOT NULL;


