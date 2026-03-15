-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/feedback/columns/rating/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".feedback 
  DROP COLUMN rating RESTRICT;


