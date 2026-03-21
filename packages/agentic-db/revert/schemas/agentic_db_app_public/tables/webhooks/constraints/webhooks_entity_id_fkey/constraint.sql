-- Revert: schemas/agentic_db_app_public/tables/webhooks/constraints/webhooks_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.webhooks 
  DROP CONSTRAINT webhooks_entity_id_fkey;


