-- Deploy: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/columns/sender_id/alterations/alt0000002316
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/columns/sender_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".invites 
  ALTER COLUMN sender_id SET NOT NULL;

