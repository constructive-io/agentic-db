-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profile_permissions/alterations/alt0000000455
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profile_permissions/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".org_profile_permissions 
  DISABLE ROW LEVEL SECURITY;

