-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/app_memberships_sprt/columns/is_admin/alterations/alt0000000078
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/app_memberships_sprt/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/app_memberships_sprt/columns/is_admin/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-private".app_memberships_sprt 
  ALTER COLUMN is_admin SET NOT NULL;

