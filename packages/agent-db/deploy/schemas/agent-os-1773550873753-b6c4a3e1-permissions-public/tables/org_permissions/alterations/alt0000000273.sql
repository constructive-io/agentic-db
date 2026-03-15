-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/org_permissions/alterations/alt0000000273
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/org_permissions/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-permissions-public".org_permissions 
  DISABLE ROW LEVEL SECURITY;

