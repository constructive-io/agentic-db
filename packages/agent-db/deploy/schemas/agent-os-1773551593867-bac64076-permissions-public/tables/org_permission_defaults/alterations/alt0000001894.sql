-- Deploy: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/org_permission_defaults/alterations/alt0000001894
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/org_permission_defaults/table


ALTER TABLE "agent-os-1773551593867-bac64076-permissions-public".org_permission_defaults 
  DISABLE ROW LEVEL SECURITY;

