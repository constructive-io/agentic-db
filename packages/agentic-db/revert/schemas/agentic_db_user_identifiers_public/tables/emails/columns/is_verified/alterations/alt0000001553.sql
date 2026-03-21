-- Revert: schemas/agentic_db_user_identifiers_public/tables/emails/columns/is_verified/alterations/alt0000001553




ALTER TABLE "agentic_db_user_identifiers_public".emails 
    ALTER COLUMN is_verified DROP DEFAULT;



