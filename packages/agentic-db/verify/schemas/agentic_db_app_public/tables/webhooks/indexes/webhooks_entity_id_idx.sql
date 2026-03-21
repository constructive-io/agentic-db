-- Verify: schemas/agentic_db_app_public/tables/webhooks/indexes/webhooks_entity_id_idx


SELECT verify_index('agentic_db_app_public.webhooks', 'webhooks_entity_id_idx');


