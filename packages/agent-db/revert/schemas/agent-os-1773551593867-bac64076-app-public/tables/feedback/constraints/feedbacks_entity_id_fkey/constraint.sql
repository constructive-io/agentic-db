-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/feedback/constraints/feedbacks_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".feedback 
  DROP CONSTRAINT feedbacks_entity_id_fkey;


