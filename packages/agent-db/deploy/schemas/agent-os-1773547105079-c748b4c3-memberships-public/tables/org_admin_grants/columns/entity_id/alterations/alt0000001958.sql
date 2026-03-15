-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_admin_grants/columns/entity_id/alterations/alt0000001958
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_admin_grants/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_admin_grants/columns/entity_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_admin_grants 
  ALTER COLUMN entity_id SET NOT NULL;

