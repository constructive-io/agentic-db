-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/documents/columns/created_at/alterations/alt0000001414


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".documents 
  ALTER COLUMN created_at DROP NOT NULL;


