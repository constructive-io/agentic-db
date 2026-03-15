-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/context_relations/columns/strength/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".context_relations 
  DROP COLUMN strength RESTRICT;


