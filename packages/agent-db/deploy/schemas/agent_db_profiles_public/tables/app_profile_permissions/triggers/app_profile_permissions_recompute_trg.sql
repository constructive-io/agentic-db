-- Deploy: schemas/agent_db_profiles_public/tables/app_profile_permissions/triggers/app_profile_permissions_recompute_trg
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_private/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profile_permissions/table
-- requires: schemas/agent_db_profiles_private/trigger_fns/app_profile_permissions_recompute_tg


CREATE TRIGGER app_profile_permissions_recompute_trg
AFTER INSERT OR DELETE OR UPDATE ON "agent_db_profiles_public".app_profile_permissions
FOR EACH ROW
EXECUTE PROCEDURE "agent_db_profiles_private".app_profile_permissions_recompute_tg ( );

