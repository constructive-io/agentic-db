-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/images/columns/entity_id/alterations/alt0000002461


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".images 
  ALTER COLUMN entity_id DROP NOT NULL;


