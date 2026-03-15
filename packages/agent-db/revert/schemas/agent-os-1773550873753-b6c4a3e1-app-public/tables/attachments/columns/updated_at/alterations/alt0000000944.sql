-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/attachments/columns/updated_at/alterations/alt0000000944


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".attachments 
  ALTER COLUMN updated_at DROP NOT NULL;


