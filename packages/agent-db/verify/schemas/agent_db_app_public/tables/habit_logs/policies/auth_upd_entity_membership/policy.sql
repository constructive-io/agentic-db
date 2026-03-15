-- Verify: schemas/agent_db_app_public/tables/habit_logs/policies/auth_upd_entity_membership/policy


SELECT verify_policy('auth_upd_entity_membership', 'agent_db_app_public.habit_logs');


