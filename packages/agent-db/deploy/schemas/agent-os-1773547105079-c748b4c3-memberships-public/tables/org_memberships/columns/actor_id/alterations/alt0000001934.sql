-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/columns/actor_id/alterations/alt0000001934
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/columns/actor_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_memberships 
  ALTER COLUMN actor_id SET NOT NULL;

