-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/app_memberships_sprt/columns/actor_id/alterations/alt0000000084
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/app_memberships_sprt/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/app_memberships_sprt/columns/actor_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-private".app_memberships_sprt 
  ALTER COLUMN actor_id SET NOT NULL;

