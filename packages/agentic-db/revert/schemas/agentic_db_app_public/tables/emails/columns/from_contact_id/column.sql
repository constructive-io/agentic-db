-- Revert: schemas/agentic_db_app_public/tables/emails/columns/from_contact_id/column


ALTER TABLE agentic_db_app_public.emails 
  DROP COLUMN from_contact_id RESTRICT;


