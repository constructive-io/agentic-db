-- Revert: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/columns/search_tsv/column


ALTER TABLE "agent-os-1773551593867-bac64076-users-public".users 
  DROP COLUMN search_tsv RESTRICT;


