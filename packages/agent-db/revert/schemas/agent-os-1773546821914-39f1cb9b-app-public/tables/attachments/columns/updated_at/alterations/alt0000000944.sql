-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/attachments/columns/updated_at/alterations/alt0000000944


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".attachments 
  ALTER COLUMN updated_at DROP NOT NULL;


