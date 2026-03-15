-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/grants/authenticated/insert/grant


REVOKE INSERT (email, expires_at, multiple, invite_limit, entity_id, receiver_id) ON "agent-os-1773551593867-bac64076-invites-public".org_invites FROM authenticated;


