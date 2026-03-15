-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_owner_grants/alterations/alt0000000134
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_owner_grants/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_owner_grants 
  DISABLE ROW LEVEL SECURITY;

