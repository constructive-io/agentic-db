-- Revert: schemas/agentic_db_app_public/tables/webhooks/columns/event_type/column


ALTER TABLE agentic_db_app_public.webhooks 
  DROP COLUMN event_type RESTRICT;


