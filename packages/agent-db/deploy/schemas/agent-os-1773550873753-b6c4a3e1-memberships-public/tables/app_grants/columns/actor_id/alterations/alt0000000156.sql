-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_grants/columns/actor_id/alterations/alt0000000156
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_grants/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_grants/columns/actor_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_grants 
  ALTER COLUMN actor_id SET NOT NULL;

