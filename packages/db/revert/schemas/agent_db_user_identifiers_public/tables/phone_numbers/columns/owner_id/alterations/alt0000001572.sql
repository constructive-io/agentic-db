-- Revert: schemas/agent_db_user_identifiers_public/tables/phone_numbers/columns/owner_id/alterations/alt0000001572




ALTER TABLE "agent_db_user_identifiers_public".phone_numbers 
    ALTER COLUMN owner_id DROP DEFAULT;



