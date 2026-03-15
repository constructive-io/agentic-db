-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/attachments/columns/updated_at/alterations/alt0000002553


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".attachments 
  ALTER COLUMN updated_at DROP NOT NULL;


