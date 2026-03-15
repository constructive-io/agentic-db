-- Verify: schemas/agent_db_status_public/tables/app_levels/indexes/app_levels_created_at_idx


SELECT verify_index('agent_db_status_public.app_levels', 'app_levels_created_at_idx');


