-- Revert: schemas/agentic_db_app_public/tables/emails/columns/entity_id/column


ALTER TABLE agentic_db_app_public.emails 
  DROP COLUMN entity_id RESTRICT;


