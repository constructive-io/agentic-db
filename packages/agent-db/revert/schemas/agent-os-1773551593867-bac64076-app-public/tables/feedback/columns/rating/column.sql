-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/feedback/columns/rating/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".feedback 
  DROP COLUMN rating RESTRICT;


