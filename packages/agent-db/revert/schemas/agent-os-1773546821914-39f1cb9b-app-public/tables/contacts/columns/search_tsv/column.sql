-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contacts/columns/search_tsv/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contacts 
  DROP COLUMN search_tsv RESTRICT;


