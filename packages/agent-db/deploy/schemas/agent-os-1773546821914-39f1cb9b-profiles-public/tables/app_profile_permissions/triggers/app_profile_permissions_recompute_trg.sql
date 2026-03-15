-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profile_permissions/triggers/app_profile_permissions_recompute_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profile_permissions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-private/trigger_fns/app_profile_permissions_recompute_tg


CREATE TRIGGER app_profile_permissions_recompute_trg
AFTER INSERT OR DELETE OR UPDATE ON "agent-os-1773546821914-39f1cb9b-profiles-public".app_profile_permissions
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773546821914-39f1cb9b-profiles-private".app_profile_permissions_recompute_tg ( );

