-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tags/constraints/tags_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".tags 
  DROP CONSTRAINT tags_entity_id_fkey;


