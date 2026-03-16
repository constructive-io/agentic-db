-- Deploy: schemas/agent_db_profiles_public/tables/app_profiles/triggers/app_profiles_cascade_trg
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_private/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profiles/table
-- requires: schemas/agent_db_profiles_private/trigger_fns/app_profiles_cascade_tg


CREATE TRIGGER app_profiles_cascade_trg
AFTER UPDATE ON "agent_db_profiles_public".app_profiles
FOR EACH ROW
WHEN (OLD.permissions IS DISTINCT FROM NEW.permissions)
EXECUTE PROCEDURE "agent_db_profiles_private".app_profiles_cascade_tg ( );

