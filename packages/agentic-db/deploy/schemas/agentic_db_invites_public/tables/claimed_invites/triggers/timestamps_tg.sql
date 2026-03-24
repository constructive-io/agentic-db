-- Deploy: schemas/agentic_db_invites_public/tables/claimed_invites/triggers/timestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/claimed_invites/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON agentic_db_invites_public.claimed_invites
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

