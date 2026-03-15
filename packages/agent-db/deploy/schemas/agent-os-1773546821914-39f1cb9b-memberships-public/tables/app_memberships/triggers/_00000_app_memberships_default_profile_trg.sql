-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/triggers/_00000_app_memberships_default_profile_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-private/trigger_fns/app_memberships_default_profile_tg


CREATE TRIGGER _00000_app_memberships_default_profile_trg
BEFORE INSERT ON "agent-os-1773546821914-39f1cb9b-memberships-public".app_memberships
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773546821914-39f1cb9b-profiles-private".app_memberships_default_profile_tg ( );

