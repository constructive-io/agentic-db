-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profiles/triggers/app_profiles_cascade_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profiles/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-private/trigger_fns/app_profiles_cascade_tg


CREATE TRIGGER app_profiles_cascade_trg
AFTER UPDATE ON "agent-os-1773546821914-39f1cb9b-profiles-public".app_profiles
FOR EACH ROW
WHEN (OLD.permissions IS DISTINCT FROM NEW.permissions)
EXECUTE PROCEDURE "agent-os-1773546821914-39f1cb9b-profiles-private".app_profiles_cascade_tg ( );

