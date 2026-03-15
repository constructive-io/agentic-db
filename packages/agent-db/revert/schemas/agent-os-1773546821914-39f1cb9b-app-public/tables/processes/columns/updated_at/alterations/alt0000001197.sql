-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/processes/columns/updated_at/alterations/alt0000001197


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".processes 
  ALTER COLUMN updated_at DROP NOT NULL;


