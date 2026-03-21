-- Revert: schemas/agentic_db_user_identifiers_public/tables/emails/columns/created_at/alterations/alt0000003544


ALTER TABLE agentic_db_user_identifiers_public.emails 
  ALTER COLUMN created_at DROP DEFAULT;


