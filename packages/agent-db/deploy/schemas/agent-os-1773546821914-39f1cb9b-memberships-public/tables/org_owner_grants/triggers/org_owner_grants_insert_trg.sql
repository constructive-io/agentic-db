-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_owner_grants/triggers/org_owner_grants_insert_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_owner_grants/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/trigger_fns/org_owner_grants_apply_tg


CREATE TRIGGER org_owner_grants_insert_trg
BEFORE INSERT ON "agent-os-1773546821914-39f1cb9b-memberships-public".org_owner_grants
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773546821914-39f1cb9b-memberships-private".org_owner_grants_apply_tg ( );

