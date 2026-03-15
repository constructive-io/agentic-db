-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/activity_log/columns/actor_type/alterations/alt0000001298
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/activity_log/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/activity_log/columns/actor_type/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/activity_log/columns/updated_at/alterations/alt0000001297


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".activity_log 
  ALTER COLUMN actor_type SET NOT NULL;

