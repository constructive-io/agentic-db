-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contacts/columns/instagram_handle/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contacts 
  DROP COLUMN instagram_handle RESTRICT;


