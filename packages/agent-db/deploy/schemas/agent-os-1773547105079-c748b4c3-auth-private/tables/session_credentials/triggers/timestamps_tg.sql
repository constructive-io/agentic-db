-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/triggers/timestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agent-os-1773547105079-c748b4c3-auth-private".session_credentials
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

