-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goal_projects/columns/entity_id/alterations/alt0000003140


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".goal_projects 
  ALTER COLUMN entity_id DROP NOT NULL;


