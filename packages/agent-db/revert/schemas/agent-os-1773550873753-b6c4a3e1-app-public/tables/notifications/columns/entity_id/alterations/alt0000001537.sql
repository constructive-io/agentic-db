-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notifications/columns/entity_id/alterations/alt0000001537


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".notifications 
  ALTER COLUMN entity_id DROP NOT NULL;


