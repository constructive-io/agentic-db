-- Revert: schemas/agentic_db_user_identifiers_public/tables/emails/columns/updated_at/alterations/alt0000004931


ALTER TABLE agentic_db_user_identifiers_public.emails 
  ALTER COLUMN updated_at DROP DEFAULT;


