-- Revert: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_invites/grants/authenticated/insert/grant


REVOKE INSERT (email, expires_at, multiple, invite_limit, entity_id, receiver_id) ON "agent-os-1773547105079-c748b4c3-invites-public".org_invites FROM authenticated;


