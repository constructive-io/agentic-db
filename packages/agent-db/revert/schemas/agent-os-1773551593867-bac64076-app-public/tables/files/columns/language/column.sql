-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/files/columns/language/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".files 
  DROP COLUMN language RESTRICT;


