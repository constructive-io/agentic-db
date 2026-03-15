-- Deploy: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/triggers/timestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agent-os-1773547105079-c748b4c3-users-public".users
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

