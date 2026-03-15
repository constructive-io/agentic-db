-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/context_relations/columns/to_id/alterations/alt0000002839


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".context_relations 
  ALTER COLUMN to_id DROP NOT NULL;


