-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/feedback/columns/source/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".feedback 
  DROP COLUMN source RESTRICT;


