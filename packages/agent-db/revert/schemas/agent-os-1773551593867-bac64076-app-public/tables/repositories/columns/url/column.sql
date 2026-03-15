-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/repositories/columns/url/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".repositories 
  DROP COLUMN url RESTRICT;


