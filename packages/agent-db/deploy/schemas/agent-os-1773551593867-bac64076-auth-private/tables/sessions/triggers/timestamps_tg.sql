-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/triggers/timestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agent-os-1773551593867-bac64076-auth-private".sessions
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

