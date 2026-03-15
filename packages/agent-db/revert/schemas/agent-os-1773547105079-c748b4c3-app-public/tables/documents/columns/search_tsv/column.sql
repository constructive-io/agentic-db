-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/columns/search_tsv/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".documents 
  DROP COLUMN search_tsv RESTRICT;


