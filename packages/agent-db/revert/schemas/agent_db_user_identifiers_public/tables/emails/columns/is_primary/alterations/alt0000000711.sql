-- Revert: schemas/agent_db_user_identifiers_public/tables/emails/columns/is_primary/alterations/alt0000000711




ALTER TABLE agent_db_user_identifiers_public.emails 
    ALTER COLUMN is_primary DROP DEFAULT;



