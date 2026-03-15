-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/images/columns/created_at/alterations/alt0000000853


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".images 
  ALTER COLUMN created_at DROP NOT NULL;


