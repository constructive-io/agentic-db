-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/lists/columns/updated_at/alterations/alt0000001521


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".lists 
  ALTER COLUMN updated_at DROP NOT NULL;


