-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/feedback/columns/target_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/feedback/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/feedback/columns/target_type/alterations/alt0000001126


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".feedback 
  ADD COLUMN target_id uuid;

