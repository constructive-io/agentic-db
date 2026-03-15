-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contacts/columns/last_name/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contacts 
  DROP COLUMN last_name RESTRICT;


