-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/feedback/columns/comment/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".feedback 
  DROP COLUMN comment RESTRICT;


