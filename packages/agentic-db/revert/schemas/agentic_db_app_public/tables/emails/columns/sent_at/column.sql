-- Revert: schemas/agentic_db_app_public/tables/emails/columns/sent_at/column


ALTER TABLE agentic_db_app_public.emails 
  DROP COLUMN sent_at RESTRICT;


