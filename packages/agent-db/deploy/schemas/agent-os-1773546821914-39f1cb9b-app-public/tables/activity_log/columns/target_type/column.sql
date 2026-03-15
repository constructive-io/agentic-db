-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/activity_log/columns/target_type/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/activity_log/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/activity_log/columns/action/alterations/alt0000001299


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".activity_log 
  ADD COLUMN target_type text;

