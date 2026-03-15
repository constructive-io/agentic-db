-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/notifications/columns/id/alterations/alt0000003144


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".notifications 
  ALTER COLUMN id DROP NOT NULL;


