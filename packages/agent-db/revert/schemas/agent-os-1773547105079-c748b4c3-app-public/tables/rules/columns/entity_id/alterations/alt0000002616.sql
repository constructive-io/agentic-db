-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/rules/columns/entity_id/alterations/alt0000002616


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".rules 
  ALTER COLUMN entity_id DROP NOT NULL;


