-- Revert: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/owner_id/column


ALTER TABLE "agent_db_user_identifiers_public".crypto_addresses 
  DROP COLUMN owner_id RESTRICT;


