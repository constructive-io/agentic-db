-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_admin_grants/alterations/alt0000001731
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_admin_grants/table


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_admin_grants 
  DISABLE ROW LEVEL SECURITY;

