-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/documents/columns/updated_at/alterations/alt0000001416


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".documents 
  ALTER COLUMN updated_at DROP NOT NULL;


