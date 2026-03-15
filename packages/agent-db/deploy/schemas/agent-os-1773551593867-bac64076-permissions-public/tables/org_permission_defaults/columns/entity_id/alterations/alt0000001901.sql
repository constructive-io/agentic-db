-- Deploy: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/org_permission_defaults/columns/entity_id/alterations/alt0000001901
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/org_permission_defaults/table
-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/org_permission_defaults/columns/entity_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-permissions-public".org_permission_defaults 
  ALTER COLUMN entity_id SET NOT NULL;

