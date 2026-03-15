-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_permissions/triggers/app_profile_permissions_recompute_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_permissions/table
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-private/trigger_fns/app_profile_permissions_recompute_tg


CREATE TRIGGER app_profile_permissions_recompute_trg
AFTER INSERT OR DELETE OR UPDATE ON "agent-os-1773551593867-bac64076-profiles-public".app_profile_permissions
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773551593867-bac64076-profiles-private".app_profile_permissions_recompute_tg ( );

