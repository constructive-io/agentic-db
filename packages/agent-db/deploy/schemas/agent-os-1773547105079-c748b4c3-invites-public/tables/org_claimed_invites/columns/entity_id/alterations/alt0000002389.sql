-- Deploy: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_claimed_invites/columns/entity_id/alterations/alt0000002389
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_claimed_invites/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_claimed_invites/columns/entity_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".org_claimed_invites 
  ALTER COLUMN entity_id SET NOT NULL;

