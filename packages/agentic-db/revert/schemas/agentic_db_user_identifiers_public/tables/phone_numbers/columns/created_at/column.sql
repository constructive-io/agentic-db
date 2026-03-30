-- Revert: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/columns/created_at/column


ALTER TABLE "agentic_db_user_identifiers_public".phone_numbers 
  DROP COLUMN created_at RESTRICT;


