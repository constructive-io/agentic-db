-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_memberships_sprt/columns/is_owner/alterations/alt0000001935
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_memberships_sprt/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_memberships_sprt/columns/is_owner/column



ALTER TABLE "agent-os-1773551593867-bac64076-memberships-private".org_memberships_sprt 
    ALTER COLUMN is_owner SET DEFAULT false;

