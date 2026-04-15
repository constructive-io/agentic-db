-- Revert: schemas/agentic_db_app_public/tables/emails/columns/bcc/column


ALTER TABLE agentic_db_app_public.emails 
  DROP COLUMN bcc RESTRICT;


