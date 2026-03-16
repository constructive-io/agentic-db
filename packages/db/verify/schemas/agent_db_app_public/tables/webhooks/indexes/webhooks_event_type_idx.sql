-- Verify: schemas/agent_db_app_public/tables/webhooks/indexes/webhooks_event_type_idx


SELECT verify_index('agent_db_app_public.webhooks', 'webhooks_event_type_idx');


