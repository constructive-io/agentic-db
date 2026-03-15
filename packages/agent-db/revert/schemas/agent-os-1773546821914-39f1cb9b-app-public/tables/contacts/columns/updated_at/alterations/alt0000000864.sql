-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contacts/columns/updated_at/alterations/alt0000000864


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contacts 
  ALTER COLUMN updated_at DROP NOT NULL;


