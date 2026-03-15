-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/projects/columns/updated_at/alterations/alt0000001315


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".projects 
  ALTER COLUMN updated_at DROP NOT NULL;


