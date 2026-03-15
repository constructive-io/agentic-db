-- Deploy: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/table


GRANT INSERT (email, expires_at, multiple, invite_limit) ON "agent-os-1773547105079-c748b4c3-invites-public".invites TO authenticated;

