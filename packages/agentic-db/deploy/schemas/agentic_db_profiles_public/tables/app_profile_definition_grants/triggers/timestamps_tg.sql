-- Deploy: schemas/agentic_db_profiles_public/tables/app_profile_definition_grants/triggers/timestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_definition_grants/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON agentic_db_profiles_public.app_profile_definition_grants
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

