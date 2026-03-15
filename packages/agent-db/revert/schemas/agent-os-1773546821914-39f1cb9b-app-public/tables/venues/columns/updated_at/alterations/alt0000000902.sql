-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venues/columns/updated_at/alterations/alt0000000902


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".venues 
  ALTER COLUMN updated_at DROP NOT NULL;


