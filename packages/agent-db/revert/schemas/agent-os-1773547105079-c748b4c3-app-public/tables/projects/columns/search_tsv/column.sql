-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/projects/columns/search_tsv/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".projects 
  DROP COLUMN search_tsv RESTRICT;


