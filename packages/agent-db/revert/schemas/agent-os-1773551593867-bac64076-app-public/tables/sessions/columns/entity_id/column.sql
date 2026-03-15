-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/sessions/columns/entity_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".sessions 
  DROP COLUMN entity_id RESTRICT;


