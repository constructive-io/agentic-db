-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_memberships_sprt/columns/is_admin/alterations/alt0000000328
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_memberships_sprt/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_memberships_sprt/columns/is_admin/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-private".org_memberships_sprt 
  ALTER COLUMN is_admin SET NOT NULL;

