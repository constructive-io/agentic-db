-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_memberships_sprt/columns/permissions/alterations/alt0000001940
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_memberships_sprt/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_memberships_sprt/columns/permissions/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-private".org_memberships_sprt 
  ALTER COLUMN permissions SET NOT NULL;

