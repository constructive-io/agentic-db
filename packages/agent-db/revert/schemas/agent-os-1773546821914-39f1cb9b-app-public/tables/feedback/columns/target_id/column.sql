-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/feedback/columns/target_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".feedback 
  DROP COLUMN target_id RESTRICT;


