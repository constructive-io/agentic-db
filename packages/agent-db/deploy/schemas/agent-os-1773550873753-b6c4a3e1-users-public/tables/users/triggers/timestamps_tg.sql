-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/triggers/timestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agent-os-1773550873753-b6c4a3e1-users-public".users
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

