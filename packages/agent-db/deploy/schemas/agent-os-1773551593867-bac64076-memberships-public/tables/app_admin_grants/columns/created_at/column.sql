-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_admin_grants/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_admin_grants/table


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_admin_grants 
  ADD COLUMN created_at timestamptz;

