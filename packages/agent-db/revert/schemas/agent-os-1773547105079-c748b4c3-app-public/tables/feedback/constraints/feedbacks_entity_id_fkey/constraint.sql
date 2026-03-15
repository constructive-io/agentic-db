-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/feedback/constraints/feedbacks_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".feedback 
  DROP CONSTRAINT feedbacks_entity_id_fkey;


