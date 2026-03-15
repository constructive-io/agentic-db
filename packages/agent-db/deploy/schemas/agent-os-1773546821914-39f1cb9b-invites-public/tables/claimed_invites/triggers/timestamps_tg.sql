-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/claimed_invites/triggers/timestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/claimed_invites/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agent-os-1773546821914-39f1cb9b-invites-public".claimed_invites
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

