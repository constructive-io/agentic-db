-- Deploy: schemas/agentic_db_profiles_public/tables/app_profiles/triggers/timestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profiles/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON agentic_db_profiles_public.app_profiles
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

