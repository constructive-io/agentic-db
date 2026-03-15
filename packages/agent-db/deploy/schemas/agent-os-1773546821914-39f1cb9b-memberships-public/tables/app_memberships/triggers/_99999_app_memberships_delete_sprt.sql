-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/triggers/_99999_app_memberships_delete_sprt
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/trigger_fns/app_memberships_delete_sprt_tg


CREATE TRIGGER _99999_app_memberships_delete_sprt
AFTER DELETE ON "agent-os-1773546821914-39f1cb9b-memberships-public".app_memberships
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773546821914-39f1cb9b-memberships-private".app_memberships_delete_sprt_tg ( );

