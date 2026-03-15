-- Revert: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/grants/authenticated/insert/grant


REVOKE INSERT (email, expires_at, multiple, invite_limit) ON "agent-os-1773547105079-c748b4c3-invites-public".invites FROM authenticated;


