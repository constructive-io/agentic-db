-- Deploy: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/crypto_addresses/triggers/timestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/crypto_addresses/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agent-os-1773547105079-c748b4c3-user-identifiers-public".crypto_addresses
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

