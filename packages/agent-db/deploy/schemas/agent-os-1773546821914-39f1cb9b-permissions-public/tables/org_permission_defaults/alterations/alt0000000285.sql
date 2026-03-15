-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/org_permission_defaults/alterations/alt0000000285
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/org_permission_defaults/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-permissions-public".org_permission_defaults 
  DISABLE ROW LEVEL SECURITY;

