-- Verify: schemas/agent_db_app_public/tables/notifications/indexes/notifications_priority_idx


SELECT verify_index('agent_db_app_public.notifications', 'notifications_priority_idx');


