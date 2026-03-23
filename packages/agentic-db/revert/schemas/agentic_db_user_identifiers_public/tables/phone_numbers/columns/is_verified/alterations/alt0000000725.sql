-- Revert: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/columns/is_verified/alterations/alt0000000725




ALTER TABLE "agentic_db_user_identifiers_public".phone_numbers 
    ALTER COLUMN is_verified DROP DEFAULT;



