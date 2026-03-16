-- Deploy: schemas/agent_db_users_public/tables/users/triggers/timestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agent_db_users_public".users
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

