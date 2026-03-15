-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/projects/columns/search_tsv/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".projects 
  DROP COLUMN search_tsv RESTRICT;


