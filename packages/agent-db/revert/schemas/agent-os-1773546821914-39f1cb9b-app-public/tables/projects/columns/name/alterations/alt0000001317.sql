-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/projects/columns/name/alterations/alt0000001317


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".projects 
  ALTER COLUMN name DROP NOT NULL;


