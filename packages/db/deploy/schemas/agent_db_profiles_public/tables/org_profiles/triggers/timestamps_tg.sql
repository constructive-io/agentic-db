-- Deploy: schemas/agent_db_profiles_public/tables/org_profiles/triggers/timestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agent_db_profiles_public".org_profiles
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

