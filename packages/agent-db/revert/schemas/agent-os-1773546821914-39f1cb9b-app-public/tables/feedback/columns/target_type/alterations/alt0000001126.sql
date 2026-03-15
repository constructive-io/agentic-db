-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/feedback/columns/target_type/alterations/alt0000001126


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".feedback 
  ALTER COLUMN target_type DROP NOT NULL;


