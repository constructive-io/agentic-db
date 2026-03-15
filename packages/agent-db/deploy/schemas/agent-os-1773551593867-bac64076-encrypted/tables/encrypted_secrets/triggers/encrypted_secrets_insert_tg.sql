-- Deploy: schemas/agent-os-1773551593867-bac64076-encrypted/tables/encrypted_secrets/triggers/encrypted_secrets_insert_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-encrypted/schema
-- requires: schemas/agent-os-1773551593867-bac64076-encrypted/schema
-- requires: schemas/agent-os-1773551593867-bac64076-encrypted/tables/encrypted_secrets/table
-- requires: schemas/agent-os-1773551593867-bac64076-encrypted/trigger_fns/encrypted_secrets_hash


CREATE TRIGGER encrypted_secrets_insert_tg
BEFORE INSERT ON "agent-os-1773551593867-bac64076-encrypted".encrypted_secrets
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773551593867-bac64076-encrypted".encrypted_secrets_hash ( );

