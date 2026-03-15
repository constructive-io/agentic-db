-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/companies/columns/updated_at/alterations/alt0000000873


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".companies 
  ALTER COLUMN updated_at DROP NOT NULL;


