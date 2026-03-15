-- Revert: schemas/agent_db_user_identifiers_public/tables/phone_numbers/columns/is_verified/alterations/alt0000003896




ALTER TABLE "agent_db_user_identifiers_public".phone_numbers 
    ALTER COLUMN is_verified DROP DEFAULT;



