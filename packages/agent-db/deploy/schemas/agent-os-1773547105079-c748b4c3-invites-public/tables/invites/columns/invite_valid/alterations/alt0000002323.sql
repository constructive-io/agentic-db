-- Deploy: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/columns/invite_valid/alterations/alt0000002323
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/columns/invite_valid/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".invites 
    ALTER COLUMN invite_valid SET DEFAULT TRUE;

