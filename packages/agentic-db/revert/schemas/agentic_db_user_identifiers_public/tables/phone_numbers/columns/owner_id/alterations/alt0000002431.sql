-- Revert: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/columns/owner_id/alterations/alt0000002431


ALTER TABLE agentic_db_user_identifiers_public.phone_numbers 
  ALTER COLUMN owner_id DROP NOT NULL;


