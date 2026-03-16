-- Verify: schemas/agent_db_invites_public/tables/invites/indexes/invites_updated_at_idx


SELECT verify_index('agent_db_invites_public.invites', 'invites_updated_at_idx');


