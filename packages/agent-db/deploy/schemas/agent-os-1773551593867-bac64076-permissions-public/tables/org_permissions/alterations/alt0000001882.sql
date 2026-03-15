-- Deploy: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/org_permissions/alterations/alt0000001882
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/org_permissions/table


ALTER TABLE "agent-os-1773551593867-bac64076-permissions-public".org_permissions 
  DISABLE ROW LEVEL SECURITY;

