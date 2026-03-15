-- Deploy: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/triggers/crypto_addresses_immutable_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/table


CREATE TRIGGER crypto_addresses_immutable_tg
BEFORE UPDATE ON "agent_db_user_identifiers_public".crypto_addresses
FOR EACH ROW
WHEN (OLD.address IS DISTINCT FROM NEW.address AND OLD.address IS NOT NULL)
EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'address' );

