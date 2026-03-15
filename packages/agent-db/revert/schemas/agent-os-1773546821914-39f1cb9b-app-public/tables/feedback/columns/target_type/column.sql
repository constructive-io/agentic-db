-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/feedback/columns/target_type/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".feedback 
  DROP COLUMN target_type RESTRICT;


