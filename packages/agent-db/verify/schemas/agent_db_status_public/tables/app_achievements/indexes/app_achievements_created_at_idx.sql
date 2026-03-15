-- Verify: schemas/agent_db_status_public/tables/app_achievements/indexes/app_achievements_created_at_idx


SELECT verify_index('agent_db_status_public.app_achievements', 'app_achievements_created_at_idx');


