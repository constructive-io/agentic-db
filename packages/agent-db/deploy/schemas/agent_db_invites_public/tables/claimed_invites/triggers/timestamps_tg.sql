-- Deploy: schemas/agent_db_invites_public/tables/claimed_invites/triggers/timestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/claimed_invites/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON agent_db_invites_public.claimed_invites
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

