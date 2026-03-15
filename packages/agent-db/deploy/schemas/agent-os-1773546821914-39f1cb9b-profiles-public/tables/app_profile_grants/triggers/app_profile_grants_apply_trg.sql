-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profile_grants/triggers/app_profile_grants_apply_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profile_grants/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-private/trigger_fns/app_profile_grants_apply_tg


CREATE TRIGGER app_profile_grants_apply_trg
AFTER INSERT ON "agent-os-1773546821914-39f1cb9b-profiles-public".app_profile_grants
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773546821914-39f1cb9b-profiles-private".app_profile_grants_apply_tg ( );

