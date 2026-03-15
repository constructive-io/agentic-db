-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/app_memberships_sprt/columns/is_owner/alterations/alt0000001684
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/app_memberships_sprt/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/app_memberships_sprt/columns/is_owner/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-private".app_memberships_sprt 
  ALTER COLUMN is_owner SET NOT NULL;

