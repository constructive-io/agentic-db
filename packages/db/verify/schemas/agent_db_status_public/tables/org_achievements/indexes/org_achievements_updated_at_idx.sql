-- Verify: schemas/agent_db_status_public/tables/org_achievements/indexes/org_achievements_updated_at_idx


SELECT verify_index('agent_db_status_public.org_achievements', 'org_achievements_updated_at_idx');


