-- Deploy: schemas/agent_db_profiles_public/tables/app_profile_definition_grants/triggers/app_profile_definition_grants_apply_trg
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_private/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profile_definition_grants/table
-- requires: schemas/agent_db_profiles_private/trigger_fns/app_profile_definition_grants_apply_tg


CREATE TRIGGER app_profile_definition_grants_apply_trg
AFTER INSERT ON agent_db_profiles_public.app_profile_definition_grants
FOR EACH ROW
EXECUTE PROCEDURE agent_db_profiles_private.app_profile_definition_grants_apply_tg ( );

