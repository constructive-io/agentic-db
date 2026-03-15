-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/tags/columns/category/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tags 
  DROP COLUMN category RESTRICT;


