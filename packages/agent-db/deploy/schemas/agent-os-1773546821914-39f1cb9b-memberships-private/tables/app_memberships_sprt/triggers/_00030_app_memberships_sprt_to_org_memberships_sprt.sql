-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/app_memberships_sprt/triggers/_00030_app_memberships_sprt_to_org_memberships_sprt
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/app_memberships_sprt/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/trigger_fns/app_memberships_sprt_to_org_memberships_sprt_tg


CREATE TRIGGER _00030_app_memberships_sprt_to_org_memberships_sprt
AFTER INSERT OR DELETE ON "agent-os-1773546821914-39f1cb9b-memberships-private".app_memberships_sprt
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773546821914-39f1cb9b-memberships-private".app_memberships_sprt_to_org_memberships_sprt_tg ( );

