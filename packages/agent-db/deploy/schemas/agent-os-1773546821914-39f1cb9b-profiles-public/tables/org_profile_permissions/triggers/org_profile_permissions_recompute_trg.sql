-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profile_permissions/triggers/org_profile_permissions_recompute_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profile_permissions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-private/trigger_fns/org_profile_permissions_recompute_tg


CREATE TRIGGER org_profile_permissions_recompute_trg
AFTER INSERT OR DELETE OR UPDATE ON "agent-os-1773546821914-39f1cb9b-profiles-public".org_profile_permissions
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773546821914-39f1cb9b-profiles-private".org_profile_permissions_recompute_tg ( );

