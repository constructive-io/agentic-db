-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/app_limits/columns/actor_id/alterations/alt0000000050
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/app_limits/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/app_limits/columns/actor_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-limits-public".app_limits 
  ALTER COLUMN actor_id SET NOT NULL;

