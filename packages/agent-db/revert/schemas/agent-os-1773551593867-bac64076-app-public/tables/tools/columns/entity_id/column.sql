-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/tools/columns/entity_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tools 
  DROP COLUMN entity_id RESTRICT;


