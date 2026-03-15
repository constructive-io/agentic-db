-- Revert: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/columns/search_tsv/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-users-public".users 
  DROP COLUMN search_tsv RESTRICT;


