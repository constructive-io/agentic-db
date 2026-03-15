-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/notifications/columns/updated_at/alterations/alt0000003149


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".notifications 
  ALTER COLUMN updated_at DROP NOT NULL;


