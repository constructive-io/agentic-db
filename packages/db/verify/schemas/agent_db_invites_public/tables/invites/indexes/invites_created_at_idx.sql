-- Verify: schemas/agent_db_invites_public/tables/invites/indexes/invites_created_at_idx


SELECT verify_index('agent_db_invites_public.invites', 'invites_created_at_idx');


