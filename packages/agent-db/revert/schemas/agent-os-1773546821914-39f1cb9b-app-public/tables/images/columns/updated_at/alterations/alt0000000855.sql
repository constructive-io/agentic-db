-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/images/columns/updated_at/alterations/alt0000000855


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".images 
  ALTER COLUMN updated_at DROP NOT NULL;


