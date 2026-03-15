-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/grants/authenticated/insert/grant


REVOKE INSERT (email, expires_at, multiple, invite_limit) ON "agent-os-1773551593867-bac64076-invites-public".invites FROM authenticated;


