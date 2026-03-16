-- Revert: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/address/alterations/alt0000001592


ALTER TABLE "agent_db_user_identifiers_public".crypto_addresses 
  DROP CONSTRAINT crypto_addresses_address_chk;


