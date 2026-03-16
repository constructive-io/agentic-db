-- Revert: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/constraints/phone_numbers_owner_id_fkey/constraint


ALTER TABLE "agentic_db_user_identifiers_public".phone_numbers 
  DROP CONSTRAINT phone_numbers_owner_id_fkey;


