-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/triggers/timestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agent-os-1773546821914-39f1cb9b-auth-private".sessions
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

