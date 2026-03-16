-- Deploy: schemas/agent_db_encrypted/tables/encrypted_secrets/triggers/encrypted_secrets_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_encrypted/schema
-- requires: schemas/agent_db_encrypted/schema
-- requires: schemas/agent_db_encrypted/tables/encrypted_secrets/table
-- requires: schemas/agent_db_encrypted/trigger_fns/encrypted_secrets_hash


CREATE TRIGGER encrypted_secrets_update_tg
BEFORE UPDATE ON "agent_db_encrypted".encrypted_secrets
FOR EACH ROW
WHEN (OLD.value IS DISTINCT FROM NEW.value)
EXECUTE PROCEDURE "agent_db_encrypted".encrypted_secrets_hash ( );

