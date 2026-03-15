-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/trips/columns/updated_at/alterations/alt0000001469


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".trips 
  ALTER COLUMN updated_at DROP NOT NULL;


