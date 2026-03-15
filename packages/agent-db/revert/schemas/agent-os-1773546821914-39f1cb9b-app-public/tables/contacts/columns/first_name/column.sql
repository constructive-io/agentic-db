-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contacts/columns/first_name/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contacts 
  DROP COLUMN first_name RESTRICT;


