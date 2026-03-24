-- Deploy: schemas/agentic_db_profiles_public/tables/app_profile_permissions/triggers/app_profile_permissions_recompute_trg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_private/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_permissions/table
-- requires: schemas/agentic_db_profiles_private/trigger_fns/app_profile_permissions_recompute_tg


CREATE TRIGGER app_profile_permissions_recompute_trg
AFTER INSERT OR DELETE OR UPDATE ON agentic_db_profiles_public.app_profile_permissions
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_profiles_private.app_profile_permissions_recompute_tg ( );

