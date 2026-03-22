-- Revert: schemas/agentic_db_user_identifiers_public/tables/emails/constraints/emails_owner_id_fkey/constraint


ALTER TABLE agentic_db_user_identifiers_public.emails 
  DROP CONSTRAINT emails_owner_id_fkey;


