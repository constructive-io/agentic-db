-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/notifications/columns/created_at/alterations/alt0000003147


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".notifications 
  ALTER COLUMN created_at DROP NOT NULL;


