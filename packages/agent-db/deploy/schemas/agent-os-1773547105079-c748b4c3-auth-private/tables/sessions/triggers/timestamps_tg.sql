-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/triggers/timestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agent-os-1773547105079-c748b4c3-auth-private".sessions
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

