-- Revert: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/updated_at/column


ALTER TABLE "agent_db_user_identifiers_public".crypto_addresses 
  DROP COLUMN updated_at RESTRICT;


