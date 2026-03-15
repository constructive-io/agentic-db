-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/attachments/columns/created_at/alterations/alt0000000942


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".attachments 
  ALTER COLUMN created_at DROP NOT NULL;


