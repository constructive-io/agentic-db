-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profiles/triggers/app_profiles_cascade_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profiles/table
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-private/trigger_fns/app_profiles_cascade_tg


CREATE TRIGGER app_profiles_cascade_trg
AFTER UPDATE ON "agent-os-1773551593867-bac64076-profiles-public".app_profiles
FOR EACH ROW
WHEN (OLD.permissions IS DISTINCT FROM NEW.permissions)
EXECUTE PROCEDURE "agent-os-1773551593867-bac64076-profiles-private".app_profiles_cascade_tg ( );

