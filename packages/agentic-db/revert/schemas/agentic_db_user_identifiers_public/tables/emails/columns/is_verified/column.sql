-- Revert: schemas/agentic_db_user_identifiers_public/tables/emails/columns/is_verified/column


ALTER TABLE agentic_db_user_identifiers_public.emails 
  DROP COLUMN is_verified RESTRICT;


