-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/context_relations/columns/updated_at/alterations/alt0000002834


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".context_relations 
  ALTER COLUMN updated_at DROP NOT NULL;


