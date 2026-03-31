-- Revert: schemas/agentic_db_user_identifiers_public/tables/emails/columns/is_primary/alterations/alt0000002829




ALTER TABLE agentic_db_user_identifiers_public.emails 
    ALTER COLUMN is_primary DROP DEFAULT;



