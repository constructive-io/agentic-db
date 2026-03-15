-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/context_relations/columns/from_type/alterations/alt0000002836


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".context_relations 
  ALTER COLUMN from_type DROP NOT NULL;


