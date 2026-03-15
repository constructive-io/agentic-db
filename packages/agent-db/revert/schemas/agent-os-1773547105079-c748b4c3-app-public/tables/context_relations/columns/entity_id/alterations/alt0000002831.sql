-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/context_relations/columns/entity_id/alterations/alt0000002831


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".context_relations 
  ALTER COLUMN entity_id DROP NOT NULL;


