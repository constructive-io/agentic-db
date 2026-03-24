-- Deploy: schemas/agentic_db_profiles_public/tables/org_profile_definition_grants/triggers/timestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_definition_grants/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON agentic_db_profiles_public.org_profile_definition_grants
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

