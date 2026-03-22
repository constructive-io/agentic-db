-- Revert: schemas/agentic_db_invites_public/tables/org_invites/grants/authenticated/insert/grant


REVOKE INSERT (email, expires_at, multiple, invite_limit, entity_id, receiver_id) ON agentic_db_invites_public.org_invites FROM authenticated;


