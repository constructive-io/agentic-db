-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/webhooks/columns/updated_at/alterations/alt0000001438


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".webhooks 
  ALTER COLUMN updated_at DROP NOT NULL;


