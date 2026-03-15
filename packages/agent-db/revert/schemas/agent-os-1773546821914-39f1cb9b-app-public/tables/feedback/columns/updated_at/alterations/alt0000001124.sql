-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/feedback/columns/updated_at/alterations/alt0000001124


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".feedback 
  ALTER COLUMN updated_at DROP NOT NULL;


