-- Deploy: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/columns/expires_at/alterations/alt0000002335
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/columns/expires_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".invites 
  ALTER COLUMN expires_at SET NOT NULL;

