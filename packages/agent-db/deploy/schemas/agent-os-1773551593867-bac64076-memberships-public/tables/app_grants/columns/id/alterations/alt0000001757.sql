-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_grants/columns/id/alterations/alt0000001757
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_grants/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_grants/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_grants 
  ALTER COLUMN id SET NOT NULL;

