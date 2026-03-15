-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_grants/columns/actor_id/alterations/alt0000000156
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_grants/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_grants/columns/actor_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_grants 
  ALTER COLUMN actor_id SET NOT NULL;

