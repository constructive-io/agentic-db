-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/interactions/columns/updated_at/alterations/alt0000000923


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".interactions 
  ALTER COLUMN updated_at DROP NOT NULL;


