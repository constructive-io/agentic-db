-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/context_relations/columns/created_at/alterations/alt0000002832


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".context_relations 
  ALTER COLUMN created_at DROP NOT NULL;


