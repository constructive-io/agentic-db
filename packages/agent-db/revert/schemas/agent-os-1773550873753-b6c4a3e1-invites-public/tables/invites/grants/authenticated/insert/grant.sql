-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/grants/authenticated/insert/grant


REVOKE INSERT (email, expires_at, multiple, invite_limit) ON "agent-os-1773550873753-b6c4a3e1-invites-public".invites FROM authenticated;


