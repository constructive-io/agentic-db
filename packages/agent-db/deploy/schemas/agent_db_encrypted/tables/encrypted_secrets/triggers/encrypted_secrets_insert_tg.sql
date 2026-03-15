-- Deploy: schemas/agent_db_encrypted/tables/encrypted_secrets/triggers/encrypted_secrets_insert_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_encrypted/schema
-- requires: schemas/agent_db_encrypted/schema
-- requires: schemas/agent_db_encrypted/tables/encrypted_secrets/table
-- requires: schemas/agent_db_encrypted/trigger_fns/encrypted_secrets_hash


CREATE TRIGGER encrypted_secrets_insert_tg
BEFORE INSERT ON "agent_db_encrypted".encrypted_secrets
FOR EACH ROW
EXECUTE PROCEDURE "agent_db_encrypted".encrypted_secrets_hash ( );

