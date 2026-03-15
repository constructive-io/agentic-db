-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/sessions/columns/entity_id/alterations/alt0000002750


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".sessions 
  ALTER COLUMN entity_id DROP NOT NULL;


