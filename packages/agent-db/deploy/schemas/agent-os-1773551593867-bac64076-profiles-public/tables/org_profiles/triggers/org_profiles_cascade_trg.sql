-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profiles/triggers/org_profiles_cascade_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profiles/table
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-private/trigger_fns/org_profiles_cascade_tg


CREATE TRIGGER org_profiles_cascade_trg
AFTER UPDATE ON "agent-os-1773551593867-bac64076-profiles-public".org_profiles
FOR EACH ROW
WHEN (OLD.permissions IS DISTINCT FROM NEW.permissions)
EXECUTE PROCEDURE "agent-os-1773551593867-bac64076-profiles-private".org_profiles_cascade_tg ( );

