-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/claimed_invites/triggers/timestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/claimed_invites/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agent-os-1773550873753-b6c4a3e1-invites-public".claimed_invites
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

