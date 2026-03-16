-- Verify: schemas/agent_db_app_public/tables/interactions/indexes/interactions_occurred_at_idx


SELECT verify_index('agent_db_app_public.interactions', 'interactions_occurred_at_idx');


