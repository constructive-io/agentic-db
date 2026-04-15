-- Deploy: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/triggers/trigger_name
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_private/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/table
-- requires: schemas/agentic_db_user_identifiers_private/trigger_fns/crypto_addresses_insert_tg


CREATE TRIGGER trigger_name
BEFORE INSERT ON agentic_db_user_identifiers_public.crypto_addresses
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_user_identifiers_private.crypto_addresses_insert_tg ( );

