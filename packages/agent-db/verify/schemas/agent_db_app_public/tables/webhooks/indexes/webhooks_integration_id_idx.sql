-- Verify: schemas/agent_db_app_public/tables/webhooks/indexes/webhooks_integration_id_idx


SELECT verify_index('agent_db_app_public.webhooks', 'webhooks_integration_id_idx');


