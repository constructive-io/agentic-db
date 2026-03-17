-- Revert: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/columns/is_verified/column


ALTER TABLE "agentic_db_user_identifiers_public".phone_numbers 
  DROP COLUMN is_verified RESTRICT;


