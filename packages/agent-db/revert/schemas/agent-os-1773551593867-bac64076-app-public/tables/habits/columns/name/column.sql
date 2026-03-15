-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/columns/name/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".habits 
  DROP COLUMN name RESTRICT;


