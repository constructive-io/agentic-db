-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/messages/columns/updated_at/alterations/alt0000001377


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".messages 
  ALTER COLUMN updated_at DROP NOT NULL;


