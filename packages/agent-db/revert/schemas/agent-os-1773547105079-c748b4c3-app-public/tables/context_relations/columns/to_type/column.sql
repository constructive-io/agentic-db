-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/context_relations/columns/to_type/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".context_relations 
  DROP COLUMN to_type RESTRICT;


