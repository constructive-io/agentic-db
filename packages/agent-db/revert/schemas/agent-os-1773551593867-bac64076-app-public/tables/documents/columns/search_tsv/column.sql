-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/documents/columns/search_tsv/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".documents 
  DROP COLUMN search_tsv RESTRICT;


