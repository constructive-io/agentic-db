-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/alterations/alt0000001670
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/table


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_memberships 
  DISABLE ROW LEVEL SECURITY;

