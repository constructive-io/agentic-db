-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_grants/triggers/timestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_grants/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON agent_db_profiles_public.org_profile_grants
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

