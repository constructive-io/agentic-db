-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/images/columns/entity_id/alterations/alt0000002413


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".images 
  ALTER COLUMN entity_id DROP NOT NULL;


