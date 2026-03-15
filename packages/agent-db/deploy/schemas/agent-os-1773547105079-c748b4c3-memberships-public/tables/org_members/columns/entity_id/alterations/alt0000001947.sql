-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_members/columns/entity_id/alterations/alt0000001947
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_members/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_members/columns/entity_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_members 
  ALTER COLUMN entity_id SET NOT NULL;

