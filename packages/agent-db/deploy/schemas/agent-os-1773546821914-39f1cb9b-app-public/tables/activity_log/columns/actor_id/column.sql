-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/activity_log/columns/actor_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/activity_log/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/activity_log/columns/actor_type/alterations/alt0000001298


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".activity_log 
  ADD COLUMN actor_id uuid;

