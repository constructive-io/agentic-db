-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/app_memberships_sprt/columns/permissions/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/app_memberships_sprt/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-private".app_memberships_sprt 
  ADD COLUMN permissions bit(24);

