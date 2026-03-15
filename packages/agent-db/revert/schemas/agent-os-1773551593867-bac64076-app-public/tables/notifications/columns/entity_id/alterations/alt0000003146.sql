-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/notifications/columns/entity_id/alterations/alt0000003146


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".notifications 
  ALTER COLUMN entity_id DROP NOT NULL;


