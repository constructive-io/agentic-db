-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_owner_grants/triggers/app_owner_grants_insert_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_owner_grants/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/trigger_fns/app_owner_grants_apply_tg


CREATE TRIGGER app_owner_grants_insert_trg
BEFORE INSERT ON "agent-os-1773546821914-39f1cb9b-memberships-public".app_owner_grants
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773546821914-39f1cb9b-memberships-private".app_owner_grants_apply_tg ( );

