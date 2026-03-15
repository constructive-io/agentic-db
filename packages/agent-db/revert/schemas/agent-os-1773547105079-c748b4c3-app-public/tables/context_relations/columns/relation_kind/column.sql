-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/context_relations/columns/relation_kind/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".context_relations 
  DROP COLUMN relation_kind RESTRICT;


